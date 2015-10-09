#!/bin/bash

separator="/ && /"

expressions="$(printf "${separator}%s" "$@")"
expressions="${expressions:${#separator}}"
expressions="!/^#/ && /$expressions/"

awk "$expressions" kradfile-u
