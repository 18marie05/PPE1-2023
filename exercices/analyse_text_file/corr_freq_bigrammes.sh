#!/usr/bin/env bash

FICHIER=$1
TOPN=${2:-25}


if [ ! -f $1 ]
then
    echo "On veut exactement un argument au script, cad ajouter un nom de fichier ou chemin en ligne de commande"
    exit
fi

bash corr_nettoyage_texte.sh $FICHIER > col1
echo "_" > col2
bash corr_nettoyage_texte.sh $FICHIER >> col2

paste col1 col2 | sort | uniq -c | sort -nr | head -n $TOPN
