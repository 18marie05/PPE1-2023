#!/usr/bin/env bash


FICHIER=$1
if [ -n "$1" ]
        then
            echo ${line};
        else
            echo "Il manque un argument"
            exit
fi
while read -r line;
do
    N=$(expr $N + 1)
    HTTP=$(curl -s -I -w '%{http_code}\n' ${line} | grep ^[0-9] | grep [^000])
    echo -e "$N\t$HTTP\t${line}";
    if [[ $HTTP${line} =~ 301|302 ]]
        then
            #redirect=$(curl -s -I -L ${line} | grep " http")
            #la ligne du dessus est une autre proposition mais on a la possibilité d'utiliser directement la commande {redirect_url}
            redirection_url=$(curl -s -w '%{redirect_url}' ${line})
            HTTP2=$(curl -s -I -w '%{http_code}\n' ${redirection_url} | sort -nr | head -n 1)

            echo -e "Erreur corrigée, le lien se trouve maintenant à cette adresse : $N\t$HTTP2\t$redirection_url";
        else
            continue
    fi

    #il faut une derniere boucle pour encodage (grep charset ?) ; doit prendre en compte les url qui necessitent des redirections
done < $1
