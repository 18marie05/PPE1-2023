#!/usr/bin/env bash


FICHIER=$1
if [ -n "$1" ]
        then
            echo ${line};
        else
            echo "Il manque un argument"
            exit
#verifie si un argument a été rentré à la suite de l'appel du fichier sinon sort du programme
fi
#echo -e "numero d'url\tcode HTTP\turl\tencodage"
#donne le titre des colonnes mais mis en commentaire car peut-être pas utile pour fichier propre

echo "<table><tr><th>Numéro url</th><th>Code HTTP</th><th>URL</th><th>Encodage</th></tr>"

while read -r line;
do
    encodage=$(curl -s -I -L ${line} | grep -o "charset=.*" | grep -o "[A-Z].*")
    N=$(expr $N + 1)
    HTTP=$(curl -s -I -w '%{http_code}\n' ${line} | grep ^[0-9] | grep [^000])
    echo -e "<html><table><tr><td>$N</td><td>$HTTP</td><td>${line}</td><td>$encodage</td></tr></table></html>";


    if [[ $HTTP =~ 301|302 ]]
        then
            #redirect=$(curl -s -I -L ${line} | grep " http")
            #la ligne du dessus est une autre proposition mais on a la possibilité d'utiliser directement la commande {redirect_url}
            redirection_url=$(curl -s -w '%{redirect_url}' ${line})
            HTTP2=$(curl -s -I -w '%{http_code}\n' ${redirection_url} | sort -nr | head -n 1)

            echo -e "<html><table><tr><td>$N</td><td>$HTTP2</td><td>$redirection_url</td><td>$encodage</td></tr></table></html>";
            #correction des liens qui commencent par 301 et 302 pour suivre les redirections et afficher le code 200 + l'url de redirection

        else
            continue
    fi
done < $1
echo "</table>"
