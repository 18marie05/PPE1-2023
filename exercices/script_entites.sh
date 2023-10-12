#!/usr/bin/bash
#donner entités pour une année + variable avec le type d'entité
ENTITE="Location" #type d'entité recherchée
NB_ENTITES=$(cat ./arbo/Fichiers/ann/2016/*/*.ann | grep $ENTITE | wc)
echo $NB_ENTITES
