#!/usr/bin/bash
ANNEE=*
MOIS=*
NOMBRE_PRINT=30
CLASSEMENT=$(cat ../../../arbo/Fichiers/ann/$ANNEE/$MOIS/*.ann | grep Location | cut -f 3 | sort | uniq -c | sort -nr | head -n $NOMBRE_PRINT)
echo $CLASSEMENT
