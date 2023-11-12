#!/usr/bin/bash


ENTITE=$1 #type d'entité recherchée à saisir dans terminal après appel du fichier
NB_ENTITES=$(cat ../../../arbo/Fichiers/ann/2016/*/*.ann | grep $ENTITE | wc)

if [ -n : "$1" ]
    then
        echo "une variable a bien été saisie"
        if [$NB_ENTITES]
        then
            echo "bonne execution du programme, $NB_ENTITES pour 2016"
        fi
else
    echo "argument vide, rien n'a été saisi"
fi
echo "fin"

#script ne fonctionne pas
#erreur : [: missing `]'
