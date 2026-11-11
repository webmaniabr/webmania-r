#!/usr/bin/env python3
"""The optional homologation example, offline: only a synthetic loopback fixture is contacted.

* main.R guards (no request is made): the allow list is required, the decoded top-level
  "ambiente" must be the JSON integer 2, a mutation scope requires a writable ledger before
  any credential, and WEBMANIA_LIVE_POLL_ATTEMPTS only accepts 1 to 20.
* main.R cycles against a loopback fixture: the consult after an NF-e or NFS-e cancellation is
  repeated while the document is processing (NFS-e: also processando_cancelamento), only
  "cancelado" is success, and a cancellation still pending when the consults run out, or with
  an unknown outcome, is ledgered as "unknown" and never resent.
* run.sh: only the private scratch directory it creates is ever removed. A
  WEBMANIA_EXAMPLE_WORK that contains the checkout, or lies inside it, is refused, also when it
  does not exist yet: it is checked on its resolved path before anything is created, and one
  whose existing part cannot be entered is refused, also when run.sh is started with bash. An
  existing WEBMANIA_EXAMPLE_WORK keeps everything it already had.

The scratch tree is removed even when a lane fails.

Usage: tests/homologacao.py <Rscript runner>   (R_LIBS must contain the installed package)
"""
import hashlib, http.server, json, os, pathlib, shutil, socket, subprocess, sys, tempfile, threading, urllib.parse

R = pathlib.Path(__file__).resolve().parents[1]
runner = sys.argv[1]
example = str(R / 'examples/homologacao/main.R')
scratch = pathlib.Path(tempfile.mkdtemp(prefix='webmania-r-homologacao-'))
lanes = 0


def passed(label):
    global lanes
    lanes += 1
    print('example ' + label + ' PASS', flush=True)


def clean_env(extra):
    env = {k: v for k, v in os.environ.items() if not k.startswith('WEBMANIA_')}
    env.update({k: v for k, v in extra.items() if v is not None})
    return env


# A listener that is never answered: any connection attempt is a failure.
silent = socket.socket()
silent.bind(('127.0.0.1', 0))
silent.listen(4)
silent.setblocking(False)
quiet = 'http://127.0.0.1:' + str(silent.getsockname()[1])
origins = {'WEBMANIA_API1_BASE_URL': quiet, 'WEBMANIA_FILES_BASE_URL': quiet, 'WEBMANIA_API2_BASE_URL': quiet}


def run_main(env):
    full = clean_env({'WEBMANIA_LIVE': '1', 'WEBMANIA_LIVE_ALLOWED_HOSTS': '127.0.0.1', **origins, **env})
    p = subprocess.run([runner, example], capture_output=True, timeout=120, env=full)
    return p.returncode, [json.loads(x) for x in p.stdout.decode().splitlines()], p.stderr.decode()


def expect_blocked(label, env, reason):
    code, lines, err = run_main(env)
    assert code == 77 and lines == [{'result': 'blocked', 'reason': reason}], (label, code, lines, err)
    passed(label)


def payload(name, text):
    path = scratch / name
    path.write_text(text)
    return str(path)


try:
    for label, hosts in [('absent', None), ('empty', ''), ('blank', ' , ')]:
        expect_blocked('allow-list ' + label, {'WEBMANIA_LIVE_ALLOWED_HOSTS': hosts}, 'WEBMANIA_LIVE_ALLOWED_HOSTS not configured')
    expect_blocked('allow-list partial', {'WEBMANIA_LIVE_ALLOWED_HOSTS': 'example.invalid'}, 'configured origin outside WEBMANIA_LIVE_ALLOWED_HOSTS')

    ledger_dir = scratch / 'ledger'
    ledger_dir.mkdir()
    for scope, variable in [('nfe', 'WEBMANIA_LIVE_NFE_PAYLOAD'), ('nfse', 'WEBMANIA_LIVE_NFSE_PAYLOAD')]:
        # Everything but the integer 2 at the top level is refused before the ledger or any credential.
        for label, text in [('text', '{"ambiente":"2"}'), ('fraction', '{"ambiente":2.0}'), ('exponent', '{"ambiente":2e0}'),
                            ('production', '{"ambiente":1}'), ('nested', '{"x":{"ambiente":2}}'),
                            ('escaped-key', '{"\\u0061mbiente":1,"x":{"ambiente":2}}')]:
            expect_blocked(scope + ' ambiente ' + label, {'WEBMANIA_LIVE_SCOPE': scope, variable: payload(scope + '-' + label + '.json', text),
                                                          'WEBMANIA_LIVE_LEDGER': str(ledger_dir / 'unused.jsonl')}, 'payload ambiente must be 2')
        good = payload(scope + '.json', '{"ambiente":2}')
        # A mutation scope needs a writable ledger before any credential is read.
        expect_blocked(scope + ' ledger absent', {'WEBMANIA_LIVE_SCOPE': scope, variable: good}, 'WEBMANIA_LIVE_LEDGER not configured')
        expect_blocked(scope + ' ledger unwritable', {'WEBMANIA_LIVE_SCOPE': scope, variable: good,
                                                      'WEBMANIA_LIVE_LEDGER': str(scratch / 'missing' / 'ledger.jsonl')}, 'ledger unwritable')
        ledger = ledger_dir / (scope + '.jsonl')
        expect_blocked(scope + ' ledger writable', {'WEBMANIA_LIVE_SCOPE': scope, variable: good, 'WEBMANIA_LIVE_LEDGER': str(ledger)},
                       'company credentials not configured')
        assert ledger.is_file() and ledger.read_bytes() == b'', scope
    assert not (ledger_dir / 'unused.jsonl').exists()
    # The read-only scope makes no mutation and needs no ledger.
    expect_blocked('readonly without ledger', {'WEBMANIA_LIVE_SCOPE': 'readonly'}, 'company credentials not configured')
    # WEBMANIA_LIVE_POLL_ATTEMPTS can only lower the consults: anything but 1 to 20 is refused before any network.
    for attempts in ['0', '21', '100', '-1', '+3', ' 3', 'x', '1.5']:
        expect_blocked('poll attempts ' + repr(attempts), {'WEBMANIA_LIVE_SCOPE': 'readonly', 'WEBMANIA_LIVE_POLL_ATTEMPTS': attempts},
                       'WEBMANIA_LIVE_POLL_ATTEMPTS must be 1 to 20')
    try:
        silent.accept()
        raise AssertionError('the example guard opened a connection')
    except BlockingIOError:
        pass
    silent.close()

    # The NF-e and NFS-e cycles against a synthetic loopback fixture.
    UUID = '00000000-0000-4000-8000-000000000001'
    PDF = (R / 'tests/fixtures/canonical_plain.pdf').read_bytes()
    XML = b'<?xml version="1.0"?>\n<nfeProc><NFe/></nfeProc>'
    fixture = {c['operation']: c for c in json.loads((R / 'tests/fixtures/operations.json').read_text())['cases']}


    class Api(http.server.BaseHTTPRequestHandler):
        """After the cancellation the consult answers `after` in order, repeating the last entry; 'drop' closes the cancellation."""
        after = ['cancelado']
        seen = []

        def log_message(self, *_):
            pass

        def reply(self, body, media='application/json', status=200):
            data = body if isinstance(body, bytes) else json.dumps(body).encode()
            self.send_response(status)
            self.send_header('Content-Type', media)
            self.send_header('Content-Length', str(len(data)))
            self.send_header('Connection', 'close')
            self.end_headers()
            self.wfile.write(data)

        def consulted(self):
            methods = [m for m, _, _ in Api.seen]
            if 'PUT' not in methods[:-1]:
                return 'aprovado'
            # Consults since the cancellation, this one included.
            n = sum(1 for m, p, _ in Api.seen[methods.index('PUT') + 1:] if m == 'GET' and p in ('/1/nfe/consulta/', '/2/nfse/consulta/' + UUID))
            return Api.after[min(n, len(Api.after)) - 1]

        def route(self):
            size = int(self.headers.get('Content-Length', '0'))
            body = json.loads(self.rfile.read(size)) if size else None
            path = urllib.parse.urlsplit(self.path).path
            Api.seen.append((self.command, path, body))
            reads = {'/1/nfe/sefaz/': 'nfeGetSefazStatus', '/1/nfe/certificado/': 'nfeGetCertificateValidity',
                     '/1/nfe/classe-imposto/': 'nfeListTaxClasses', '/2/nfse/status': 'emitterGetNfseProviderStatus'}
            if path in reads:
                return self.reply(fixture[reads[path]]['response'])
            if Api.after == ['drop'] and self.command == 'PUT':
                return None
            if path == '/2/nfse/emissao':
                return self.reply({'uuid': UUID, 'modelo': 'nfse', 'status': 'processando'})
            if path == '/2/nfse/consulta/' + UUID:
                return self.reply({**fixture['emitterGetNfse']['response'], 'uuid': UUID, 'status': self.consulted()})
            if path == '/2/nfse/cancelar':
                return self.reply({'uuid': UUID, 'modelo': 'nfse', 'status': 'processando_cancelamento'})
            if path == '/xmlnfse/' + UUID:
                return self.reply(XML, 'text/xml')
            if path in ('/nfse/' + UUID, '/darps/' + UUID, '/danfe/' + UUID + '/', '/danfe/simples/' + UUID + '/'):
                return self.reply(PDF, 'application/pdf')
            if path == '/1/nfe/emissao/':
                return self.reply({'uuid': UUID, 'status': 'processando', 'modelo': '55'})
            if path == '/1/nfe/consulta/':
                return self.reply({'uuid': UUID, 'status': 'aprovado' if self.command == 'POST' else self.consulted(), 'modelo': '55'})
            if path == '/1/nfe/cancelar/':
                return self.reply({'status': 'processando'})
            if path in ('/xmlnfe/' + UUID + '/', '/xmlnfe/' + UUID + '/cancelamento'):
                return self.reply(XML, 'application/xml')
            return self.reply({'error': 'unexpected route'}, status=404)

        do_GET = do_POST = do_PUT = route


    cycles = [('nfse', 'cancelado', ['cancelado'], None), ('nfse', 'cancelling', ['processando_cancelamento', 'cancelado'], None),
              ('nfse', 'stuck', ['processando_cancelamento'], '2'), ('nfse', 'not_cancelled', ['aprovado'], None), ('nfse', 'drop', ['drop'], None),
              ('nfe', 'cancelling', ['processando', 'cancelado'], None), ('nfe', 'stuck', ['processando'], '2'), ('nfe', 'drop', ['drop'], None)]
    for model, label, after, attempts in cycles:
        Api.after, Api.seen = after, []
        server = http.server.ThreadingHTTPServer(('127.0.0.1', 0), Api)
        thread = threading.Thread(target=server.serve_forever)
        thread.start()
        origin = 'http://127.0.0.1:' + str(server.server_address[1])
        variable, operation, issue, cancel, consult, cancel_op = {
            'nfse': ('WEBMANIA_LIVE_NFSE_PAYLOAD', 'emitterIssueNfse', '/2/nfse/emissao', '/2/nfse/cancelar', '/2/nfse/consulta/' + UUID, 'emitterCancelNfse'),
            'nfe': ('WEBMANIA_LIVE_NFE_PAYLOAD', 'nfeIssueDocument', '/1/nfe/emissao/', '/1/nfe/cancelar/', '/1/nfe/consulta/', 'nfeCancelDocument')}[model]
        ledger = ledger_dir / (model + '-' + label + '.jsonl')
        env = {'WEBMANIA_LIVE_SCOPE': model, variable: payload(model + '-cycle.json', json.dumps(fixture[operation]['request'])),
               'WEBMANIA_LIVE_LEDGER': str(ledger), 'WEBMANIA_LIVE_POLL_ATTEMPTS': attempts,
               'WEBMANIA_API1_BASE_URL': origin, 'WEBMANIA_FILES_BASE_URL': origin, 'WEBMANIA_API2_BASE_URL': origin,
               'WEBMANIA_CONSUMER_KEY': 'synthetic', 'WEBMANIA_CONSUMER_SECRET': 'synthetic', 'WEBMANIA_ACCESS_TOKEN': 'synthetic',
               'WEBMANIA_ACCESS_TOKEN_SECRET': 'synthetic', 'WEBMANIA_ISSUER_TOKEN': 'synthetic'}
        try:
            full = clean_env({'WEBMANIA_LIVE': '1', 'WEBMANIA_LIVE_ALLOWED_HOSTS': '127.0.0.1', **env})
            p = subprocess.run([runner, example], capture_output=True, timeout=120, env=full)
            code, lines, err = p.returncode, [json.loads(x) for x in p.stdout.decode().splitlines()], p.stderr.decode()
        finally:
            server.shutdown()
            server.server_close()
            thread.join(5)
        issued = [b for m, path, b in Api.seen if (m, path) == ('POST', issue)]
        assert len(issued) == 1 and issued[0]['ambiente'] == 2, (model, label, Api.seen)
        # The cancellation is sent once and never repeated.
        assert [path for m, path, _ in Api.seen if m == 'PUT'] == [cancel], (model, label, Api.seen)
        methods = [m for m, _, _ in Api.seen]
        consults = [path for m, path, _ in Api.seen[methods.index('PUT') + 1:] if m == 'GET' and path == consult]
        step = [x for x in lines if x.get('step') == model + '.consult_cancelled']
        last = json.loads(ledger.read_text().splitlines()[-1])
        if label == 'drop':
            # The connection closes after the cancellation arrived: the outcome is unknown.
            sent = [x for x in lines if x.get('step') == model + '.cancel']
            assert len(sent) == 1 and sent[0]['ok'] is False and sent[0]['outcome'] == 'unknown' and not step and not consults, (model, label, lines, err)
            assert last == {'model': model, 'identifier': UUID, 'status': 'unknown', 'operation': cancel_op}, (model, label, last)
            assert code == 1, (model, label, code, lines, err)
        else:
            outcome = {'stuck': 'unknown', 'not_cancelled': 'not_cancelled'}.get(label, 'success')
            assert len(step) == 1 and step[0]['ok'] is (outcome == 'success') and step[0]['outcome'] == outcome, (model, label, lines, err)
            # Consulted again only while the cancellation is processing, at most WEBMANIA_LIVE_POLL_ATTEMPTS times.
            assert len(consults) == {'cancelling': 2, 'stuck': 2}.get(label, 1), (model, label, Api.seen)
            if label == 'stuck':
                # Never success: the cancellation stays in the ledger as unknown for reconciliation by consult.
                assert last == {'model': model, 'identifier': UUID, 'status': 'unknown', 'operation': cancel_op}, (model, label, last)
            else:
                consult_op = 'emitterGetNfse' if model == 'nfse' else 'nfeGetDocument'
                assert last == {'model': model, 'identifier': UUID, 'status': after[-1], 'operation': consult_op}, (model, label, last)
            failed = [x['step'] for x in lines if x.get('ok') is False]
            assert failed == ([] if outcome == 'success' else [model + '.consult_cancelled']), (model, label, failed, lines, err)
            assert code == (0 if outcome == 'success' else 1), (model, label, code, lines, err)
        passed(model + ' post-cancel ' + label)

    # run.sh with stand-ins for R and Rscript, so only the script's own file handling runs.
    tools = scratch / 'tools'
    (tools / 'bin').mkdir(parents=True)
    log = tools / 'calls.log'
    (tools / 'bin' / 'R').write_text('#!/bin/sh\nprintf \'R %s\\n\' "$*" >> "$STUB_LOG"\n'
                                     'if [ "${STUB_INSTALL_FAIL:-}" = 1 ]; then echo synthetic-install-error; exit 1; fi\n')
    (tools / 'bin' / 'Rscript').write_text('#!/bin/sh\nprintf \'Rscript %s\\n\' "$*" >> "$STUB_LOG"\nprintf \'R_LIBS %s\\n\' "$R_LIBS" >> "$STUB_LOG"\n'
                                           '[ -f "$1" ] && echo copied >> "$STUB_LOG"\nexit "${STUB_STATUS:-0}"\n')
    for name in ('R', 'Rscript'):
        (tools / 'bin' / name).chmod(0o755)


    def snapshot(root):
        """Every path below root with the digest of each file."""
        out = {}
        for base, dirs, files in os.walk(root):
            for name in dirs:
                out[os.path.relpath(os.path.join(base, name), root)] = 'dir'
            for name in files:
                p = os.path.join(base, name)
                out[os.path.relpath(p, root)] = hashlib.sha256(open(p, 'rb').read()).hexdigest()
        return out


    def layout():
        """area/src/webmania-r is a synthetic checkout with a sibling project next to it."""
        area = pathlib.Path(tempfile.mkdtemp(prefix='area-', dir=scratch)).resolve()
        checkout = area / 'src' / 'webmania-r'
        (checkout / 'examples/homologacao').mkdir(parents=True)
        shutil.copy2(R / 'examples/homologacao/run.sh', checkout / 'examples/homologacao/run.sh')
        (checkout / 'examples/homologacao/main.R').write_text('# synthetic\n')
        (checkout / 'marker.txt').write_text('synthetic checkout\n')
        (area / 'src' / 'other-project').mkdir()
        (area / 'src' / 'other-project' / 'important.txt').write_text('synthetic sibling\n')
        return area, checkout


    def run_sh(checkout, env, shell='sh'):
        log.unlink(missing_ok=True)
        full = clean_env({'WEBMANIA_LIVE': '1', 'PATH': str(tools / 'bin') + os.pathsep + os.environ.get('PATH', ''),
                          'STUB_LOG': str(log), **env})
        p = subprocess.run([shell, str(checkout / 'examples/homologacao/run.sh')], capture_output=True, timeout=60, env=full)
        calls = log.read_text().splitlines() if log.exists() else []
        return p.returncode, p.stdout.decode(), p.stderr.decode(), calls


    # The reported case: the checkout lives in $WORK/src and WORK is its ancestor.
    area, checkout = layout()
    before = snapshot(area)
    code, out, err, calls = run_sh(checkout, {'WEBMANIA_EXAMPLE_WORK': str(area)})
    assert code == 2 and 'must not contain the checkout' in err and not calls, (code, out, err, calls)
    assert snapshot(area) == before, 'run.sh changed a directory it does not own'
    passed('run.sh work directory containing the checkout')
    for inner, message in [(checkout, 'must not contain the checkout'), (checkout / 'examples', 'must be outside the checkout')]:
        code, out, err, calls = run_sh(checkout, {'WEBMANIA_EXAMPLE_WORK': str(inner)})
        assert code == 2 and message in err and not calls, (inner, code, out, err, calls)
        assert snapshot(area) == before, 'run.sh changed a directory it does not own'
    passed('run.sh work directory inside the checkout')

    # A refused WEBMANIA_EXAMPLE_WORK that does not exist yet is checked on its resolved path
    # before anything is created: no directory is left behind in the checkout.
    area, checkout = layout()
    (area / 'into-checkout').symlink_to(checkout)
    before = snapshot(area)
    for work, message in [(checkout / 'newdir' / 'deeper', 'must be outside the checkout'),
                          (area / 'into-checkout' / 'newdir', 'must be outside the checkout'),
                          (checkout / 'newdir' / '..' / '..' / 'outside', 'must name a directory'),
                          (checkout / 'marker.txt' / 'x', 'must name a directory')]:
        code, out, err, calls = run_sh(checkout, {'WEBMANIA_EXAMPLE_WORK': str(work)})
        assert code == 2 and message in err and not calls, (work, code, out, err, calls)
        assert snapshot(area) == before, (work, 'a refused work directory left directories behind')
    passed('run.sh absent work directory refused without creating it')

    # An absent WEBMANIA_EXAMPLE_WORK outside the checkout is created; only the private directory is removed.
    fresh = area / 'fresh' / 'deeper'
    code, out, err, calls = run_sh(checkout, {'WEBMANIA_EXAMPLE_WORK': str(fresh)})
    assert code == 0 and calls[1].startswith('Rscript ' + str(fresh) + '/webmania-r-example.'), (code, out, err, calls)
    assert snapshot(area) == {**before, 'fresh': 'dir', 'fresh/deeper': 'dir'}, 'run.sh left files outside its private directory'
    passed('run.sh absent work directory created')

    # An existing part that cannot be entered is refused before anything is created, also under bash,
    # where errexit does not reach a failed cd inside resolve.
    area, checkout = layout()
    locked = area / 'locked'
    locked.mkdir()
    locked.chmod(0o600)
    try:
        try:
            os.stat(locked / 'probe')
            enforced = False
        except PermissionError:
            enforced = True
        except FileNotFoundError:
            enforced = False
        if not enforced:
            print('example run.sh work directory that cannot be entered SKIP (permission bits not enforced for this user)', flush=True)
        else:
            before = snapshot(area)
            for shell in [s for s in ('sh', 'bash') if shutil.which(s)]:
                for work in (locked, locked / 'newdir'):
                    code, out, err, calls = run_sh(checkout, {'WEBMANIA_EXAMPLE_WORK': str(work)}, shell)
                    assert code == 2 and 'must name a directory' in err and not calls, (shell, work, code, out, err, calls)
                    assert snapshot(area) == before, (shell, work, 'a refused work directory left directories behind')
            passed('run.sh work directory that cannot be entered refused')
    finally:
        locked.chmod(0o700)

    # An existing directory keeps its own src and r-lib; only the private directory is used and removed.
    for label, extra, expected in [('success', {}, 0), ('example exit code', {'STUB_STATUS': '77'}, 77), ('failed install', {'STUB_INSTALL_FAIL': '1'}, 2)]:
        area, checkout = layout()
        work = area / 'work'
        for child in ('src', 'r-lib'):
            (work / child).mkdir(parents=True)
            (work / child / 'keep.txt').write_text('belongs to the user\n')
        before = snapshot(area)
        code, out, err, calls = run_sh(checkout, {'WEBMANIA_EXAMPLE_WORK': str(work), **extra})
        assert code == expected, (label, code, out, err, calls)
        assert snapshot(area) == before, (label, 'run.sh changed or left files outside its private directory')
        private = calls[0].split('--library=', 1)[1].split(' ', 1)[0].rsplit('/r-lib', 1)[0]
        assert pathlib.Path(private).parent == work and pathlib.Path(private).name.startswith('webmania-r-example.'), (label, calls)
        assert calls[0] == 'R CMD INSTALL --library=' + private + '/r-lib ' + private + '/src', (label, calls)
        if label == 'failed install':
            assert calls == calls[:1] and 'synthetic-install-error' in err, (label, calls, err)
        else:
            assert calls[1:] == ['Rscript ' + private + '/src/examples/homologacao/main.R', 'R_LIBS ' + private + '/r-lib', 'copied'], (label, calls)
        passed('run.sh existing work directory, ' + label)

    # Without WEBMANIA_EXAMPLE_WORK the private directory is created in TMPDIR and removed.
    area, checkout = layout()
    tmp = area / 'tmp'
    tmp.mkdir()
    before = snapshot(area)
    code, out, err, calls = run_sh(checkout, {'TMPDIR': str(tmp)})
    assert code == 0 and snapshot(area) == before and calls[1].startswith('Rscript ' + str(tmp) + '/webmania-r-example.'), (code, err, calls)
    passed('run.sh default scratch directory')
finally:
    # Removed also when a lane fails.
    shutil.rmtree(scratch, ignore_errors=True)
print(str(lanes) + ' homologation example lanes PASS')
