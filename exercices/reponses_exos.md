# EXERCICES POUR 19 OCTOBRE

## classement des lieux les + cités

Top 20 location pour 2016
    247 France
    130 Burundi
    105 Rio
     82 Paris
     73 États-Unis
     47 Syrie
     41 Russie
     39 Allemagne
     37 Canada
     35 Montpellier
     34 Turquie
     34 Italie
     31 Chine
     27 Espagne
     26 Nice
     25 Suède
     25 Brésil
     23 Royaume-Uni
     22 Europe
     20 Mars
Top 20 location pour 2017
    282 France
     79 États-Unis
     50 Syrie
     50 Paris
     37 Turquie
     36 Russie
     35 Italie
     28 Irak
     26 Europe
     24 Royaume-Uni
     23 Ukraine
     23 Allemagne
     19 Terre
     18 Qatar
     17 Israël
     17 Chine
     16 Espagne
     14 Savoie
     14 Pakistan
     14 Haïti
Top 20 location pour 2018
    174 France
    165 Paris
     76 Champs-Élysées
     37 États-Unis
     36 Russie
     28 A9
     24 A7
     22 A8
     21 Strasbourg
     21 A62
     21 A50
     20 A61
     20 A20
     19 Élysée
     18 Saint-Lazare
     18 place de la République
     18 Japon
     18 A52
     18 A51
     18 A11

## annotations les + fréquentes pour mois de mai
je n'ai pas trouvé comment récupérer seulement les mots d'annotation : pour l'annotation Date par exemple, la structure est Date 264 286
le séparateur tab ne fonctionne pas pour cette partie
j'ai aussi essayé avec un séparateur spécial comme des espaces ou un seul espace mais ne fonctionne pas

commande : 
cat ./*/05/*.ann | cut -f 2 | sort | uniq -c | sort -nr | head -n 28 > annot_freq_mai.txt
=> permet de récupérer les annotations les plus fréquentes mais pas seulement sur les catégories
Résultat: 
 21 Location 0 6
      7 Event 0 38
      7 Date 34 38
      4 Location 0 10
      2 Person 89 100
      2 Person 792 804
      2 Organization 33 51
      2 Location 701 707
      2 Location 692 697
      2 Location 36 48
      2 Location 26 32
      2 Location 16 24
      2 Location 0 9
      2 Event 155 193
      2 Event 153 191
      2 Event 131 134
      2 Event 12 24
      2 Event 0 28
      2 Date 82 93
      2 Date 61 72
      2 Date 56 66
      2 Date 50 61
      2 Date 49 60
      2 Date 48 59
      2 Date 42 52
      2 Date 189 193
      2 Date 187 191
      2 Date 101 113
=> stocké dans un fichier


# Exercices pour 25 octobre
## Modification des scripts 
-> mauvaise utilisation des variables dans les scripts de la semaine dernière donc modifications (scripts modifiés)

- script_loc.sh pas modifié car pas d'utilisation de variable
- script_entites.sh modifié : ligne ENTITE=$1 permet de donner un nom à la variable ; on ne précise pas ce qu'on recherche dans le script mais dans le terminal
  On note : ./script_entites.sh Location
- classement_lieux.sh modifié : on remplace ce qui était indiqué par des variables qu'on saisi dans le terminal -> * pour mois et année à mettre entre "*"
    Résultat des 30 premiers
  703 France 297 Paris 189 États-Unis 139 Burundi 113 Russie 106 Rio 97 Syrie 83 Italie 78 Champs-Élysées 77 Allemagne 76 Turquie 63 Royaume-Uni 61 Europe 59 Chine 57 Canada 51 Terre 50 Espagne 44 Irak 44 Belgique 43 Ukraine 43 Nice 39 Montpellier 38 Marseille 35 Brésil 34 Toulouse 33 Suisse 33 Savoie 33 Élysée 32 Suède 31 Japon

- script_entites_repeat.sh modifié : ENTITE=$1 pour rentrer variable en ligne de commande


## Modification des scripts avec nouvelles instructions et boucles

- trouver toutes les entités dans un fichier à l'aide d'un script : impossible de faire fonctionner le script (script_entite_instruc.sh) mais mis dans le dossier des exercices quand même
**ERREUR =** erreur : [: missing `]'

- Test d'écriture d'un script pour qui lit un fichier
Test de plusieurs scripts : impossible de trouver un moyen de lire les fichiers dans le script > soit ambiguous redirect donc ajout de "", soit no such file or directory alors que le script est dans le bon dossier
Plusieurs tests du type :
#!/usr/bin/bash

FICHIERS=$1
ENTITE_NB=0
ENTITE=$2

while read LINE;
do
    if $ENTITE in $LINE
        then
        ENTITE_NB=$(expr $ENTITE_NB+1)
    fi
done < $FICHIERS
echo "Nombre de $ENTITE en 2016 : $ENTITE_NB"

mais problème de lecture des fichiers, alors que le script est dans le même dossier ?

- manipulation de quelques commandes avec Lynx et cURL (répertorié dans le journal de bord)
