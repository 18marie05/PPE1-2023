#!/usr/bin/bash
ENTITE=$1 #type d'entité recherchée
NB_ENTITES_2016=$(cat /home/marie18/Documents/Master/M1/PPE/arbo/Fichiers/ann/2016/*/*.ann | grep $ENTITE | wc)
NB_ENTITES_2017=$(cat /home/marie18/Documents/Master/M1/PPE/arbo/Fichiers/ann/2017/*/*.ann | grep $ENTITE | wc)
NB_ENTITES_2018=$(cat /home/marie18/Documents/Master/M1/PPE/arbo/Fichiers/ann/2018/*/*.ann | grep $ENTITE | wc)

echo "Pour 2016"
echo $NB_ENTITES_2016
echo "Pour 2017"
echo $NB_ENTITES_2017
echo "Pour 2018"
echo $NB_ENTITES_2018


