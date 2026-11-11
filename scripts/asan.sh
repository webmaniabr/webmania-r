#!/bin/sh
set -eu
package=$1
work=$2
normal_library=$3
script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
consumer_dir=${4:-"$script_dir/../tests/consumer"}
# Files below are written over, so the work directory must be new: absent or empty.
if [ -e "$work" ] && { [ ! -d "$work" ] || [ -n "$(ls -A "$work")" ]; }; then
  echo "work directory must be absent or empty: $work" >&2
  exit 2
fi
mkdir -p "$work/source" "$work/library"
tar -xzf "$package" -C "$work/source"
cp -R "$normal_library/webmania" "$work/library/"
cd "$work/source/webmania/src"
cat > "$work/Makevars" <<'MAKE'
CFLAGS=-g -O1 -fsanitize=address,undefined -fno-omit-frame-pointer
LDFLAGS=-fsanitize=address,undefined
MAKE
R_MAKEVARS_USER="$work/Makevars" R CMD SHLIB -o webmania.so generated00.c generated01.c generated02.c generated03.c generated04.c generated05.c generated06.c generated07.c generated08.c generated09.c generated10.c generated11.c runtime.c backend/json.c backend/runtime.c backend/generated.c backend/shapes.c
cp webmania.so "$work/library/webmania/libs/webmania.so"
asan=$(gcc -print-file-name=libasan.so)
export R_LIBS="$work/library" R_HOME=/usr/lib/R R_SHARE_DIR=/usr/share/R/share R_INCLUDE_DIR=/usr/share/R/include R_DOC_DIR=/usr/share/R/doc
run_asan() {
  script=$1
  shift
  LD_PRELOAD="$asan" ASAN_OPTIONS=detect_leaks=0:halt_on_error=1 UBSAN_OPTIONS=halt_on_error=1:print_stacktrace=1 WM_ASAN_SCRIPT="$script" /usr/lib/R/bin/exec/R --vanilla --slave -f "$script_dir/asan-run.R" --args "$@"
}
run_asan "$script_dir/../tests/core.R"
run_asan "$consumer_dir/lifecycle.R" "$consumer_dir/slow.py" cancel
run_asan "$consumer_dir/lifecycle.R" "$consumer_dir/slow.py" deadline
run_asan "$consumer_dir/lifecycle.R" "$consumer_dir/slow.py" gc
