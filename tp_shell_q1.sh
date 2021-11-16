#!/bin/bash

############################################################################

#Script Name : tp_shell_q1.sh
#Description : Développer un script qui demande à l'utilisateur de saisir 
#	       une note et qui affiche la mention associé en fonction de la 
#              valeur saisie
# Args : Donner une valeur entre 0 et 20 comme parametre en ligne de commande
# Author : Mohammed Amine TRABZI 
# Email : amine.trabzi @yahoo.com

#############################################################################



NOTE_MAX=20
echo "Donnez moi votre note sur 20,je vous donne la mention :)" 
read note

while [ $note -gt $NOTE_MAX ]
do
	echo "erreur de saisie"
	
	echo "Veuillez donner une note <=20"
	read note 
done

if [ $note -le 20 ] && [ $note -ge 16 ] 
then
	echo "Très bien !!! :)"
	exit 0
fi 

if [ $note -lt 16 ] && [ $note -ge 14 ]
then 
	echo "Bien !! :)"
	exit 0
fi 


if [ $note -lt 14 ] && [ $note -ge 10 ]
then
	echo "Assez bien ! :)"
        exit 0
fi


if [ $note -lt 10 ]
then
        echo "Insuffisant :("
        exit 0
fi


