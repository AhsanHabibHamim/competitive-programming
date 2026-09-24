#!/usr/bin/env bash
# Usage: ./new.sh <c|cpp|cp> <folder-inside-lang-dir> <name>
# Example: ./new.sh cpp problems/codeforces 4A     -> cpp/problems/codeforces/4A.cpp
#          ./new.sh c   learning/04-loops  table   -> c/learning/04-loops/table.c
#          ./new.sh cp  problems/cses      1068    -> cpp/problems/cses/1068.cpp (CP template)
set -e
ROOT="$(cd "$(dirname "$0")" && pwd)"
kind="$1"; folder="$2"; name="$3"
if [ -z "$kind" ] || [ -z "$folder" ] || [ -z "$name" ]; then
  sed -n '2,6p' "$0"; exit 1
fi
case "$kind" in
  c)   lang=c;   ext=c;   tpl="$ROOT/c/templates/problem.c" ;;
  cpp) lang=cpp; ext=cpp; tpl="$ROOT/cpp/templates/problem.cpp" ;;
  cp)  lang=cpp; ext=cpp; tpl="$ROOT/cpp/templates/cp_template.cpp" ;;
  *) echo "kind must be c, cpp or cp"; exit 1 ;;
esac
dest="$ROOT/$lang/$folder/$name.$ext"
mkdir -p "$(dirname "$dest")"
if [ -e "$dest" ]; then echo "Already exists: $dest"; exit 1; fi
cp "$tpl" "$dest"
echo "Created: $dest"
command -v code >/dev/null && code -r "$dest"
