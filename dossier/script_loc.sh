#!/usr/bin/bash
echo "Nombre de Location en 2016"
cat ./arbo/Fichiers/ann/2016/*/*.ann | grep Location | wc -l
echo "Nombre de Location en 2017"
cat ./arbo/Fichiers/ann/2017/*/*.ann | grep Location | wc -l
echo "Nombre de Location en 2018"
cat ./arbo/Fichiers/ann/2018/*/*.ann | grep Location | wc -l
