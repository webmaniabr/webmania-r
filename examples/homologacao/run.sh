#!/bin/sh
# Installs this R package (bundled C SDK and native worker) into a scratch library
# and runs the optional homologation example. Configuration comes only from the
# environment; see README, "Teste em homologação". Without WEBMANIA_LIVE=1 it exits
# 77 before any network.
#
# WEBMANIA_EXAMPLE_WORK (optional, default TMPDIR or /tmp) is only the place where a
# new private scratch directory is created. That private directory is the only path
# this script removes, when it exits: nothing that already existed is deleted.
set -eu
ROOT="$(cd "$(dirname "$0")/../.." && pwd -P)"
if [ "${WEBMANIA_LIVE:-}" != "1" ]; then
  printf '%s\n' '{"result":"blocked"}'
  exit 77
fi
refuse() {
  printf '%s\n' "$1" >&2
  exit 2
}
# inside PATH DIR: PATH is DIR or lies below it.
inside() {
  case "$1/" in
    "${2%/}"/*) return 0 ;;
  esac
  return 1
}
# resolve PATH: the physical path of PATH, which need not exist yet. Its deepest existing
# ancestor is resolved and the missing components are appended, so the overlap checks run
# before anything is created. A missing "." or ".." component, one that exists but is not a
# directory, and an existing part that cannot be entered are refused.
resolve() {
  r_path="$1"
  r_rest=""
  case "$r_path" in /*) ;; *) r_path="$(pwd -P)/$r_path" ;; esac
  while [ ! -d "$r_path" ]; do
    r_name="$(basename "$r_path")"
    case "$r_name" in . | ..) return 1 ;; esac
    if [ -e "$r_path" ] || [ -L "$r_path" ]; then return 1; fi
    r_rest="/$r_name$r_rest"
    r_path="$(dirname "$r_path")"
  done
  # Checked explicitly: resolve runs on the left of ||, where errexit does not apply.
  r_base="$(cd "$r_path" && pwd -P)" || return 1
  [ -n "$r_base" ] || return 1
  if [ "$r_base" = / ] && [ -n "$r_rest" ]; then r_base=""; fi
  printf '%s%s\n' "$r_base" "$r_rest"
}
if [ -n "${WEBMANIA_EXAMPLE_WORK:-}" ]; then
  # Checked on the resolved path before it is created: a refused path leaves nothing behind.
  BASE="$(resolve "$WEBMANIA_EXAMPLE_WORK")" || refuse "WEBMANIA_EXAMPLE_WORK must name a directory, with no ., .. or file after its existing part."
  inside "$ROOT" "$BASE" && refuse "WEBMANIA_EXAMPLE_WORK must not contain the checkout."
else
  BASE="$(cd "${TMPDIR:-/tmp}" && pwd -P)"
fi
# The private copy below would copy itself: the scratch directory must be outside the checkout.
inside "$BASE" "$ROOT" && refuse "The scratch directory must be outside the checkout."
mkdir -p "$BASE"
WORK="$(mktemp -d "$BASE/webmania-r-example.XXXXXX")"
trap 'rm -rf "$WORK"' EXIT
trap 'exit 130' INT
trap 'exit 143' TERM
mkdir "$WORK/r-lib"
# Build from a private copy: the checkout may be read-only.
cp -R "$ROOT" "$WORK/src"
if ! R CMD INSTALL --library="$WORK/r-lib" "$WORK/src" >"$WORK/install.log" 2>&1; then
  printf '%s\n' "R CMD INSTALL failed:" >&2
  cat "$WORK/install.log" >&2
  exit 2
fi
# Not exec: the private directory is removed when the example ends.
status=0
R_LIBS="$WORK/r-lib" Rscript "$WORK/src/examples/homologacao/main.R" || status=$?
exit "$status"
