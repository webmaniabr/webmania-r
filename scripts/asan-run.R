# Preload initializes sanitizer before R, then child tools inherit a clean env.
# The sanitizer remains loaded and all instrumented native code stays active.
Sys.unsetenv("LD_PRELOAD")
source(Sys.getenv("WM_ASAN_SCRIPT"))
