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
