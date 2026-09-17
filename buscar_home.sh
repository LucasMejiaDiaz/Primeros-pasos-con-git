#!/bin/bash

carpeta=$1

if [ -z "$carpeta" ]; then
    echo "Uso: ./buscar_home.sh <carpeta>"
    exit 1
fi

if [ ! -d "$carpeta" ]; then
    echo "La carpeta no existe."
    exit 1
fi

grep -ril "home" "$carpeta"
