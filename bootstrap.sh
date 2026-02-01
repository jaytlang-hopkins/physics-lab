#!/bin/sh

if [ $# -ne 1 ]; then
    echo "usage: $0 n"
    exit 2
fi

mkdir -p "$1"; cd "$1"
{ cd ../skel; tar cpf - .; } | tar xpf -
exec jupyter lab
