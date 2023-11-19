#!/usr/bin/env bash

FICHIER=$1


#if [[ $# -ne 1 ]];
#then
#    echo "On veut exactement un argument au script, cad ajouter un nom de fichier ou chemin en ligne de commande"
#    exit
#fi


if [[ ! -f $FICHIER ]];
then
    echo "On attend un fichier et non un dossier."
    exit
fi


while read -r line
do

    nettoyage=$(tr -d [:punct:] | tr [:upper:] [:lower:] | grep -P -o "\b[[:alpha:]]*\b")
    echo "$nettoyage"

done < $1
