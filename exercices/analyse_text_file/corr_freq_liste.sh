#!/usr/bin/env bash

FICHIER="$1"
TOPN=${2:-25}

#TOPN=$2
#if [ -z "$2" ]
#then
 #   TOPN=25
#else
 #   TOPN=$2
#fi

#if ! [[ "$TOPN" =~ 0*[1-9][0-9]* ]]
#then
  #  echo "donnez moi un chiffre !"
 #   exit
#fi
#    exit 1
#??????????????

bash corr_nettoyage_texte.sh $FICHIER | sort | uniq -c | sort -nr | head -n ${TOPN}
