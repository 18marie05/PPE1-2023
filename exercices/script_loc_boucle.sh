#!/usr/bin/bash

FICHIERS=$1
#ANNEE=$1
ENTITE_NB=0
ENTITE=$2

while read LINE;
do
    if $ENTITE in $LINE
        then
        ENTITE_NB=$(expr $ENTITE_NB+1)
    fi
done < $FICHIERS;
echo "Nombre de $ENTITE en 2016 : $ENTITE_NB"

#echo "Nombre de Location en 2016"
#cat ./arbo/Fichiers/ann/2016/*/*.ann | grep Location | wc -l
#echo "Nombre de Location en 2017"
#cat ./arbo/Fichiers/ann/2017/*/*.ann | grep Location | wc -l
#echo "Nombre de Location en 2018"
#cat ./arbo/Fichiers/ann/2018/*/*.ann | grep Location | wc -l
