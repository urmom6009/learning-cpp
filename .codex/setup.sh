#!/usr/bin/env bash
set -euo pipefail
repo_root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"
if ! command -v "${CXX:-c++}" >/dev/null; then
  echo "a C++ compiler is required; install build-essential on Ubuntu/Debian." >&2
  exit 1
fi
"${CXX:-c++}" --version
