#!/bin/bash

a1=$1; a2=$2; a3=$3;

busca="127.0.0.1"

# $a1 ------------------------------------------------------------------
if [ ! -e ${a1} ]; then
    echo "Sinto muito, arquivo ${a1} não existe. Saindo..."
    exit 1
fi

if cat ${a1} | grep $busca &> /dev/null; then
    echo "${busca} encontrado no arquivo ${a1}"
fi

# $a2 ------------------------------------------------------------------
if test ! -e ${a2}; then
    echo "Sinto muito, arquivo ${a2} não existe. Saindo..."
    exit 1
fi

if cat ${a2} | grep $busca &> /dev/null; then
    echo "${busca} encontrado no arquivo ${a2}"
fi

# $a3 ------------------------------------------------------------------
if ! ls ${a3} &> /dev/null; then
    echo "Sinto muito, arquivo ${a3} não existe. Saindo..."
    exit 1
fi

if cat ${a3} | grep $busca &> /dev/null; then
    echo "${busca} encontrado no arquivo ${a3}"
fi
