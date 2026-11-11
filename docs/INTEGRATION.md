# Detalhes técnicos de integração

Este documento reúne os detalhes técnicos do SDK para R que complementam o [README](../README.md): autenticação, URL base, limites de transporte, arquivos, relatórios e o tratamento do resultado fiscal. O texto é o mesmo que estava no README até esta versão.

## Escopo e disponibilidade

Integração de **Emissor Fiscal e Monitor Fiscal** em aplicações de servidor. O Emissor abrange NF-e/NFC-e na API1 e NFS-e, CT-e/CT-e OS, MDF-e, NFCom e DC-e na API2, com arquivos, eventos e as três operações gerenciais B2B públicas da API1. O Monitor mantém apenas as famílias de documentos e capacidades do seu contrato documentado.

Disponível no repositório público [github.com/webmaniabr/webmania-r](https://github.com/webmaniabr/webmania-r), com instalação a partir do clone (veja a seção Instalação). Ainda não há publicação em registro de pacotes; os nomes e versões abaixo identificam os pacotes gerados a partir desta fonte. Regras do provedor, aceitação fiscal real e plataformas adicionais permanecem com limitações explícitas.

## Visão geral para desenvolvedores

| Item | Detalhe |
|---|---|
| Status | Disponível no GitHub: versão `0.1.0.9005` (pacote `webmania`), instalada a partir do clone do repositório; ainda sem publicação no CRAN ou em outro registro de pacotes |
| Runtime | R >= 4.6.2 (`DESCRIPTION`), Linux arm64, compilador C11 e POSIX threads; inclui o SDK C fixado em [dependency-lock.json](../dependency-lock.json) |
| Clientes | `wm_nfe_client` (NF-e/NFC-e API 1.0), `wm_nfe_files_client`, `wm_reseller_client` (gerencial B2B API 1.0), `wm_emitter_client` (emissor API 2.0), `wm_emitter_files_client`, `wm_monitor_client` (Monitor Fiscal) |
| Erros | `wm_await(task)` retorna `result$error`, lido com `wm_error_kind`, `wm_error_status` e `wm_outcome_unknown` |
| Contrato | Herdado do SDK C (contrato fixado por conteúdo, `contract_digest` `371a499f74012bb6b41f23642869dee4954e8394dcba7642edc701aedb3dd59e`, 14 módulos) e de [metadata/api-metadata.json](../metadata/api-metadata.json) |

### Autenticação

- **NF-e/NFC-e (API 1.0)** — `wm_company_credentials(consumer_key, consumer_secret, access_token, access_token_secret)` é enviada pelo SDK C nos cabeçalhos `X-Consumer-Key`, `X-Consumer-Secret`, `X-Access-Token` e `X-Access-Token-Secret`. `wm_reseller_client` usa `wm_reseller_credentials`.
- **API 2.0** — `wm_issuer_token` (emissor) e `wm_monitor_token` (Monitor) são enviados como `Authorization: Bearer <token>`; são credenciais distintas.

O exemplo abaixo lê as credenciais com `Sys.getenv` (`WEBMANIA_CONSUMER_KEY`, `WEBMANIA_CONSUMER_SECRET`, `WEBMANIA_ACCESS_TOKEN`, `WEBMANIA_ACCESS_TOKEN_SECRET`).

## Requisitos

Pacote **0.1.0.9005**, para R4.6.2 e Linux arm64. A instalação por fonte requer compilador C11 e POSIX threads. O pacote contém o C SDK **0.1.0-alpha.7**, seus metadados e o worker nativo, com os digests em [dependency-lock.json](../dependency-lock.json). O consumidor compila o pacote R/C normalmente; não precisa de Rust.

## Instalação

Clone o repositório público e instale a partir do clone com as ferramentas normais do R:

```sh
git clone https://github.com/webmaniabr/webmania-r.git
mkdir -p ./r-library
R CMD INSTALL --library=./r-library webmania-r
```

O clone inclui fonte C, headers, worker e avisos de terceiros. Não requer CRAN, Rust ou checkout de outro SDK. A compilação C/R é parte da instalação, sem gerar a API. Ainda não há pacotes binários publicados.

Salve o exemplo como `app.R` e execute com a biblioteca escolhida:

```sh
R_LIBS=./r-library Rscript app.R
```

## Primeira consulta

Configure somente a credencial do serviço escolhido, por instância, a partir de ambiente privado ou cofre de segredos. O exemplo não emite nem cancela documentos. Execute consultas apenas com conta e ambiente autorizados; uma origem de fixture controlada deve ser configurada explicitamente pela API do cliente.

```r
library(webmania)
run_status <- function() {
  required <- function(name) {
    value <- Sys.getenv(name, unset = "")
    if (!nzchar(value)) stop(paste("Configure", name), call. = FALSE)
    value
  }
  base <- Sys.getenv("WEBMANIA_BASE_URL", unset = "")
  cfg <- wm_config(base_url = if (nzchar(base)) base else NULL, timeout_ms = 30000L)
  on.exit(wm_close(cfg), add = TRUE, after = FALSE)
  creds <- wm_company_credentials(required("WEBMANIA_CONSUMER_KEY"),
    required("WEBMANIA_CONSUMER_SECRET"), required("WEBMANIA_ACCESS_TOKEN"),
    required("WEBMANIA_ACCESS_TOKEN_SECRET"))
  on.exit(wm_close(creds), add = TRUE, after = FALSE)
  client <- wm_nfe_client(creds, cfg)
  on.exit(wm_close(client), add = TRUE, after = FALSE)
  task <- nfe_get_sefaz_status(client)
  on.exit(wm_close(task), add = TRUE, after = FALSE)
  result <- wm_await(task)
  if (!is.null(result$error)) {
    cat(wm_error_kind(result$error), " (", wm_error_status(result$error), ")\n",
        sep = "", file = stderr())
    code <- if (wm_outcome_unknown(result$error)) 3L else 2L
    wm_close(result$error)
    return(code)
  }
  if (!is.null(result$value)) {
    status <- wm_get(result$value, "status")
    if (!is.null(status)) cat(status, "\n", sep = "")
    wm_close(result$value)
  }
  0L
}
quit(save = "no", status = run_status(), runLast = FALSE)
```

`wm_config()` usa por padrão o worker incluído no pacote instalado. `WEBMANIA_BASE_URL` é opcional para uma origem documentada ou fixture controlada; não troque a origem com credenciais reais sem autorização. As quatro variáveis de credencial pertencem à empresa API1.

A construção do cliente não comprova habilitação da conta. Respostas de sucesso e conversões explícitas para JSON podem conter dados fiscais, credenciais novas ou URLs privadas. Exponha apenas os campos necessários à aplicação.

## Ambiente e URL base

Sem configuração, cada cliente usa a origem pública do seu serviço: `wm_nfe_client` em `https://webmania.com.br/api`, `wm_reseller_client` em `https://webmania.com.br`, `wm_nfe_files_client` em `https://nfe.webmania.com.br` e os clientes do emissor, de arquivos do emissor e do Monitor em `https://api.webmania.com.br`. Para outro ambiente autorizado, use um `wm_config(base_url = ...)` por serviço (origem HTTPS explícita e prefixo opcional); clientes de arquivo também exigem a mesma origem em `file_origins`. Cada cliente envia requisições somente para a origem e o prefixo configurados, e uma origem inválida falha com erro de configuração antes de DNS ou conexão. O exemplo de homologação lê `WEBMANIA_API1_BASE_URL`, `WEBMANIA_FILES_BASE_URL` e `WEBMANIA_API2_BASE_URL`.

## Integração e limites

Modelos são handles mutáveis: atribuição cria alias; wm_clone cria cópia independente. Getters de filhos retornam handles próprios. wm_close é idempotente. Não salve ponteiros externos para outra sessão. Print, str e conversões ordinárias são redigidos; JSON, bytes e reveal são acesso deliberado aos dados.

Campos usam construtores nominais, wm_get/wm_set e presença explícita. wm_null difere de omissão; wm_unset remove um opcional. `wm_number("123.4500")` preserva precisão; Double, factor e NA não são coerções válidas. Inteiros grandes usam wm_integer64. Texto com NUL usa wm_text de bytes UTF-8; credenciais e paths C terminados em NUL não aceitam esse tipo. Extensões não podem colidir com campos declarados.

Cada operação retorna uma Task. Serialização/validação anterior ao retorno é síncrona e pode usar worker local; ainda não pode ser interrompida pela Task. wm_poll não bloqueia, wm_cancel sinaliza cancelamento e wm_await verifica interrupções R enquanto espera. Interrupção cancela/junta o trabalho e retorna Result com interrupted e contexto Unknown/recuperação. O resultado é consumido uma vez.

wm_close da Task cancela/junta e retorna seu resultado terminal ainda não consumido; GC cancela/junta e descarta o resultado abandonado. Observe ou feche explicitamente uma Task mutante antes de perder sua referência. Fechar o cliente cancela suas Tasks; uma Task retida mantém o proprietário vivo. Threads nativos não acessam objetos R.

wm_reveal_recovery e wm_reveal_location são acesso privado explícito. file_get_nfse_pdf distingue arquivo, redirect e NfsePdfPending nominal: wm_is_pending, wm_pending_status, wm_pending_media_type e wm_pending_value. Pendência não tem bytes/Location. HTML mantém raw bytes opacos. wm_pages e wm_poll_until têm limites finitos, preservam IDs opacos e exigem pelo menos cinco segundos entre polls; não repetem erros.

O vínculo fiscal contextual de alguns nomes JSON NFCom ainda depende de confirmação; o mapeamento de wire não encerra essa condição do contrato.

## Credenciais e resultado fiscal

Credenciais da empresa API1, revenda API1, Bearer do emissor API2 e Bearer Monitor pertencem a escopos diferentes. Arquivos exigem a modalidade de acesso documentada. Uma falha não autoriza trocar automaticamente o modo ou a credencial. Mantenha segredos no servidor.

O catálogo contém 103 operações nomeadas, 102 habilitadas. `nfeDownloadIbsCbsEventXml` não está disponível nesta versão do SDK: a função existe, mas falha com erro `capability` sem enviar requisição. Condições fiscais, municipais, de cadastro, provedor e implantação ainda pendentes continuam sujeitas ao contrato e ao serviço. Validação local, cálculo ou prévia não comprovam autorização fiscal.

Relatórios atuais são baixados com `fiscal_download_report_v2(cliente_de_arquivos_do_emissor, uuid, auth)` (`/relatorios/{uuid}` na API2), usando a `url` devolvida pela criação/consulta do relatório: aceite somente uma URL da origem e do prefixo configurados seguida de `/relatorios/<uuid>`, com `wm_file_auth("anonymous")` (a URL é a capability) ou `wm_file_auth("issuer")`. Redirecionamentos não são seguidos. Relatórios legados continuam em `fiscal_download_report` com `wm_file_auth("public_report")`: CSV e XLSX chegam rotulados `text/xml` e o formato é identificado pelos bytes (assinatura ZIP = XLSX, caso contrário CSV completo preservado byte a byte); XML, HTML e JSON nunca são aceitos como relatório.

O download público do relatório API1 pode consumir quota mesmo por GET. Uma falha ambígua após possível envio preserva Unknown; uma rejeição completa conhecida e falhas anteriores ao envio mantêm sua classificação. A capability do relatório não é uma referência de recuperação e não autoriza repetição automática.

Não há retry automático de operação nem seguimento automático de redirects. Depois de possível envio de uma operação com efeito, uma falha pode indicar resultado desconhecido. Preserve o seletor original com segurança, consulte a tentativa anterior e decida explicitamente como prosseguir. Uma referência protegida exige acesso deliberado e pode estar ausente; não é uma chave de idempotência.

## Arquivos e processamento

Verifique tipo de resultado, status e representação antes de consumir bytes. JSON pendente, HTML e redirect não comprovam PDF pronto. Proteção de PDF/ZIP é distinta da autorização de download; não há descriptografia automática nem confirmação de autenticidade fiscal. O reconhecimento de formatos cobre somente o perfil documentado desta implementação. Uma Location revelada continua privada e exige decisão explícita de origem e autenticação para outra transferência.

Paginação e espera são optativas e limitadas quando disponíveis. Um estado futuro ou desconhecido não significa conclusão. Não repita emissão, cancelamento ou importação inicial como se fossem consultas de processamento.

Para migrar uma integração anterior, remapeie métodos, modelos e escopos de credencial pela referência desta versão. Não há promessa de substituição automática de outro SDK; compare também o changelog quando disponível.

## Documentação para assistentes e contratos

Índices em Markdown para assistentes: [documentação Webmania](https://webmania.com.br/docs/llms.txt) e [API 2.0](https://api.webmania.com.br/llms.txt). Contratos OpenAPI: [API 2.0](https://api.webmania.com.br/docs/openapi) e [NF-e](https://webmania.com.br/docs/rest-api-nfe/?format=openapi).

No catálogo de SDKs, `r` aparece como disponível no repositório público, com instalação pelo clone; plataformas R >= 4.6.2 e Linux arm64. Estar listado nesses índices não amplia a cobertura documentada deste SDK.
