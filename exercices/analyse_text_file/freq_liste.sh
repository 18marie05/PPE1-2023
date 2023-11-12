#!/usr/bin/env bash


FICHIER_TEXTE=$1

FREQ_MOTS_PRINT=${2:-25}


counter=$(source ./nettoyage_texte.sh | sort | uniq -c | sort -nr | head -n ${FREQ_MOTS_PRINT})
echo "$counter"


#commande dans terminal : cat candide.txt | tr -d [:punct:] | tr [:upper:] [:lower:] | grep -o "\b[[:alpha:]]*\b" | sort | uniq -c | sort -nr | head -n 25
