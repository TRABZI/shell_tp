#!/bin/bash

############################################################################

#Script Name : tp_shell_q2.sh
#Description : Développer un script qui prend en paramètre un nom de fichier
#	       ou de répertoire et qui vérifie l’existence de celui-ci dans
#              le répertoire courant
# Args : Un nom de fichier ou de répertoire
# Author : Mohammed Amine TRABZI
# Email : amine.trabzi @yahoo.com

#############################################################################


if [ $# -lt  1 ]
then
	echo "--> nom du fichier ou repertoir manquant"
	exit 1
fi

if [ -f $1 ]
then
        echo "Le fichier $1 : [EXISTE]"
	exit 0
else
        echo "Le fichier $1 : [N'EXISTE PAS]"
	if [ -d $1 ]
	then
        	echo "Le dossier $1 : [EXISTE]"
        	exit 0
	else
        	echo "Le dossier $1 : [N'EXISTE PAS]"
        	exit 0
	fi
fi

 



