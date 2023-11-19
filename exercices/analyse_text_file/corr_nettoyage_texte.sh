#!/usr/bin/env bash

if [ ! -f $1 ]
then
    echo "On veut exactement un argument au script, cad ajouter un nom de fichier ou chemin en ligne de commande"
    exit
fi

FICHIER="$1"

cat candide.txt | grep -P -o '\p{Latin}'+ | tr [:upper:] [:lower:] | tr 'ÉÀÊ' 'éàê'
