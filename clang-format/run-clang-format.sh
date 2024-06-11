#!/bin/bash

set -e

[[ -f .clang-format-ignore ]] && IGNORE_OPTS=("--ignore-file" ".clang-format-ignore")
fd -e c -e cpp -e cxx -e cc -e h -e hpp "${IGNORE_OPTS[@]}" -x clang-format -i

if [[ "$1" == "--git-diff" ]]; then
    /usr/bin/git diff --exit-code HEAD
fi
