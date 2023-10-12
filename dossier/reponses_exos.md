#EXERCICES POUR 19 OCTOBRE

##classement des lieux les + cités

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

##annotations les + fréquentes pour mois de mai
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


