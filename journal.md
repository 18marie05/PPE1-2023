# Journal de Marie
## Séance du 20 septembre

- différence entre chemin relatif et chemin absolu
Le chemin relatif dépend de l'endroit où on se trouve dans l'arborescence
Le chemin absolu part de la racine
- utiliser _man_ pour savoir ce que fait une option ; _man pwd_ donne l'emplacement où je me trouve

**Exercice de création d'une arborescence**
- création d'un nouveau fichier avec mkdir (+ éventuellement -p)
- pour faire changer de place un fichier : mv
- cd .. pour revenir dans le dossier parent
- pour renommer un fichier/dossier : mv _nom_de_fichier_ _nouveau_nom_de_fichier_
- pour créer une arborescence plus rapidement : mkdir -p txt/2017/01
      - permet de créer plusieurs dossiers en une seule commande : le dossier 01 qui se trouve dans le dossier 2017 qui se trouve dans txt



## Séance du 27 septembre
- création et récupération de clés ssh (publique et privée)
- ajout de la clé publique à GitHub (.pub)
- dépôt du cours cloné
- dépôt personnel cloné sur machine personnelle
On utilise _git status_ pour savoir si le dépôt distant est à jour sur la machine : le dépôt semble à jour mais il ne l'est pas car il venait d'être modifié donc on utilise _git fetch_
On exécute à nouveau _git status_ : il faut procéder à un update
Donc : git pull puis git status : le répertoire local est maintenant à jour
_git log_ pour vérifier la date de la dernière modification : 2 octobre donc ok


ligne
d'erreur
pour 
exercice
1a


## Séance du 4 octobre
Exercice 2

Test de plusieurs commits
- plusieurs commits à faire dans le même fichier
- Modification du fichier pour autre commit
- Derniere modification du fichier pour 3e commit
- après les 3 commit realisés, on fait un git status pour voir si les commit ont bien ete pris en compte : c’est le cas
On passe à la question suivante : 2a ; pour retourner à la version du tag git-seance3-init on utilise la commande git reset <commit> ; cette commande ne semble pas faire perdre les changements
Récupérer les changements effectués avec git fetch ???
comment les copier vers un autre fichier (à part à la main en passant par l’interface net) ??
essai avec fetch pour récupérer les changements effectués et copier/coller les modifications de oups à la main vers journal de bord

## Séance du 11 octobre
Pipeline
- communication entre console et fichiers
- syntaxe du type : cat *.txt | grep université | wc > output.txt
=> permet d'envoyer tous les fichiers txt avec les lignes (wc) qui contiennent le mot université
-   -l à la fin de chaque commande pour lire la dernière colonne

Scripts
- au lieu d'écrire dans la console, on écrit les commandes dans un script
- utilisation de variables
- variables notées $1


## Séance du 18 octobre
Utilisation des variables dans les scripts dans les exercices : à refaire différemment -> on ajoute le nom de la variable dans la commande du terminal, pas directement dans le script
(permet d'adapter sans modifier à l'intérieur du script à chaque fois)
Commande pour rendre un fichier exécutable : chmod +x **AVANT** nom_fichier
Instructions de contrôles possibles sur les chemins : vérification d'existence d'un fichier, dossier, si fichier est vide ou non (-s)

Boucles : 
- for ... in ... do ... done (_fonction range = seq_)
- while ...; do...; done
- if then else fi (_fi permet de cloturer la boucle if_)
Pour utiliser un fichier dans un script, on l'écrit après le _done_

**Partie projet + Lynx**
=naviguer web à partir du terminal
-> pour cliquer sur un lien
-dump : recup contenu textuel
-listonly vs -nolist (lien ou non)
-I : indique si l'adresse du lien est toujours la même, sinon indique la nouvelle ; date ; type de contenu
-w : ?
-s : donne la structure html du lien avec balises (il faut donner l'adresse entière -> vérifier -I pour site bougé ou non)

Liste de mots pour projet : 
pas de mot polysémique 
réflexion sur le choix du mot en cours (groupe)

Test du script suivant vu en cours :
#!/usr/bin/bash

echo "le premier argument est: ($1)"
if [ -n "$1"]
then
    echo "le premier argument n'est pas vide"
    if [[ $1  =~ bon(jour|soir) ]]
    then
        echo "salut"
    fi
else
    echo "le premier argument est vide"
fi
echo "fin du programme"

**MAIS erreur** : line 4: [: missing `]'

## Séance du 25 octobre
- correction des scripts vu la semaine précédente : /!\ espaces dans les crochets
**Mini-projet individuel**
- travail sur les arguments à donner en ligne de commande
- utiliser un fichier dans une variable
- utilisation de plusieurs commandes curl + grep dans définition des variables
- \t pour avoir un fichier propre avec des tabs comme séparateur
- début des balises HTML pour constitution du tableau
=> travail sur le mini-projet compris ; pas mal de temps passé sur l'écriture du script mais pas de difficulté particulière rencontrée

**Partie projet :**
- choix du mot qui se précise : _devoir_ ; pour les traductions en anglais potentiellement _duty_ et en chinois à déterminer ?
- intérêt de se concentrer sur un mot polysémique dans une langue mais pas forcément dans les autres : résultats différents

## Séance du 8 novembre
- correction du miniprojet
- récupération des charset : on peut utiliser une expression régulière où "=" sera le séparateur, de la même manière qu'on utiliserait \t ou , (on peut aussi utiliser \K pour indiquer où commence le match de l'expression régulière
- puis on récupère la colonne qui nous intéresse (ici -f2 pour prendre tout ce qui se trouve après _charset =_)
- utilisation de /dev/null = fichier _poubelle_ -> rien ne se crée

Correction comprise et permet d'améliorer mon script pour le rendre + clair
