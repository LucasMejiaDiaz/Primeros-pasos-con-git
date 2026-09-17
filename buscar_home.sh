#!/bin/bash

palabra=$1
carpeta=$2

if [ -z "$palabra" ] || [ -z "$carpeta" ]; then
    echo "Uso: bash buscar_home.sh <palabra o frase> <carpeta>"
    exit 1
fi

if [ ! -d "$carpeta" ]; then
    echo "La carpeta no existe."
    exit 1
fi

grep -rilF -- "$palabra" "$carpeta"
