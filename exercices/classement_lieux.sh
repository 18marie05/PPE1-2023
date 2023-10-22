#!/usr/bin/bash
ANNEE=$1
MOIS=$2
NOMBRE_PRINT=$3
CLASSEMENT=$(cat ../../../arbo/Fichiers/ann/$ANNEE/$MOIS/*.ann | grep Location | cut -f 3 | sort | uniq -c | sort -nr | head -n $NOMBRE_PRINT)
echo $CLASSEMENT
