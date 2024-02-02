#!/bin/bash

[[ -f .clang-format-ignore ]] && IGNORE_OPTS=("--ignore-file" ".clang-format-ignore")
fd -e c -e cpp -e cxx -e cc -e h -e hpp "${IGNORE_OPTS[@]}" -x clang-format -i
