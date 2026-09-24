#!/usr/bin/env bash
# usage: build.sh <debug|run> <source-file> <workspace-dir>
mode="$1"; src="$2"; ws="$3"

mkdir -p "$ws/.build"
out="$ws/.build/$(basename "$src").out"

case "$src" in
  *.c)   cc=gcc; std="-std=c17";   libs="-lm" ;;
  *.cpp) cc=g++; std="-std=c++17"; libs=""    ;;
  *) echo "Shudhu .c ar .cpp file support kore"; exit 1 ;;
esac

warn=(-Wall -Wextra -Wshadow -DLOCAL)

if [ "$mode" = "debug" ]; then
  # debugger (F5) er jonno: no optimisation, full debug info
  $cc $std -g -O0 "${warn[@]}" "$src" -o "$out" $libs || exit 1
else
  # run: sanitizer on -> array out-of-bounds, overflow, uninitialised bug dhore dey
  $cc $std -g "${warn[@]}" -fsanitize=address,undefined "$src" -o "$out" $libs || exit 1
  cd "$(dirname "$src")" || exit 1
  "$out"
  code=$?
  echo
  echo "[program exited with code $code]"
fi
