#!/usr/bin/env bash
set -euo pipefail
repo_root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"
# This noninteractive baseline checks readiness, not every course exercise.
compiler="${CXX:-c++}"
work_dir="$(mktemp -d)"
trap 'rm -rf -- "$work_dir"' EXIT
# C++17 matches the existing VS Code task.
"$compiler" -std=c++17 -Wall -Wextra -pedantic src/Ch01/01_02e/CodeDemo.cpp -o "$work_dir/hello"
"$work_dir/hello" > "$work_dir/output"
if [[ "$(cat "$work_dir/output")" != "Hi There!" ]]; then
  echo "unexpected baseline output:" >&2
  cat "$work_dir/output" >&2
  exit 1
fi
cat "$work_dir/output"
