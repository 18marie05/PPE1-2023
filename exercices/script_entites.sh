#!/usr/bin/bash
#donner entités pour une année + variable avec le type d'entité
ENTITE=$1 #type d'entité recherchée à saisir dans terminal après appel du fichier
NB_ENTITES=$(cat ../../../arbo/Fichiers/ann/2016/*/*.ann | grep $ENTITE | wc)
echo $NB_ENTITES
