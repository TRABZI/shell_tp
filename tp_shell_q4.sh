#!/bin/bash

############################################################################

#Script Name : tp_shell_q4.sh

#Description : 
# Développer un script qui invite l’utilisateur à remplir un tableau et restitue le contenu de celui-ci (Affichage sur la console)

# Args :
# Author : Mohammed Amine TRABZI
# Email : amine.trabzi @yahoo.com

#############################################################################


echo "Ce script vous permet de remplir un tableau manuellement" 

if [ $# -gt 0 ]
then
	read -p "Ce script ne prend pas de parametres en ligne de commande, [voulez vous continuez ? (ok/nok)]:" reponse
	test $reponse = "ok" && echo ok
	test $reponse = "nok" && exit 1
fi 


tableau=() 
while true 
do 
	read -p "[Voulez-vous ajouter une nouvelle valeur au tableau] ? (oui/non):" input
	test $input = "oui" &&  read -p "Ajouter une nouvelle valeur au tableau:" val && tableau=( "${tableau[@]}" "$val" )
	test $input = "non" &&  break

	#read -p "Ajouter une nouvelle valeur au tableau" val
	#tableau=( "${tableau[@]}" "$val" )
done

echo "Le tableau que vous avez ajouté est : "
echo "${tableau[@]}"
