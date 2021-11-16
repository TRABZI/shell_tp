#!/bin/bash

############################################################################

#Script Name : tp_shell_q3.sh

#Description : Développer un script (calculatrice) qui prend en paramètres deux
#              nombres opérandes et un signe opérateur (+-*/) et qui renvoie le 
#              résultat de l’opération mathématique en respectant la structure  
#	       ci-dessous;
# 	       * Créer 3 fonctions:
#              (1)Fonction1 -> récupérer les arguments saisies par l’utilisateur
#              (2)Fonction2 -> utiliser un case pour identifier le signe de 
#              l’operateur et calculer le résultat. Utiliser une condition pour 
#              forcer l’utilisateur à saisir trois paramètres, si ce n’était pas
#              déjà fait
# Args : (Lire la  description ci dessus)
# Author : Mohammed Amine TRABZI
# Email : amine.trabzi @yahoo.com

#############################################################################


typeset -i val1
typeset -i val2
typeset -i resultat

opr=""

function fonction1
{
	param1=$1
	param2=$2
	param3=$3

	echo "
	paramétre1 : $param1
	paramétre2 : $param2
	paramétre3 : $param3
	"
}


function calcule
{
        let resultat=$[$1 $2 $3]
        echo " [Résultat] :  $1 $2 $3 = $resultat "
}

function fonction2
{
	if [ $# -ne 3 ]
	then 
		echo "[ERROR]: le nombre de paramétres doit etre 3"
		echo exit 1
		exit 1
	fi

	operateurs=('+' '-' 'x' '/')
	echo "Les opérateurs que vous pourriez utiliser : ${operateurs[@]}"
	
	case "$2" in
		'+')
			opr="+"
			echo "L'opérateur choisi est : + ";;
		'-')
			opr="-"
			echo "L'opérateur choisi est : - ";;
		'x')
			opr="*"
			echo "L'operateur choisi est : x --> *";;
		'/')
			opr="/"
			echo "L'opérateur choisi est : / ";;
		*)
                	echo "Opérateur entré non pris en charge"
			exit 1
	esac
	
	if [[ " ${operateurs[@]} " =~ " $1 " ]] || [[ " ${operateurs[@]} " =~ " $3 " ]]
        then
		echo "[ERROR]: les deux parametres n°1 et n°3 doivent etre des chiffres"
                exit 1
	else
		let $1; check_numeric1=$?;
		let $3; check_numeric2=$?;

		if [ $check_numeric1 -eq 1 ] || [ $check_numeric2 -eq 1 ]
		then
			echo "[ERROR]: les deux parametres n°1 et n°3 doivent etre des chiffres"
			exit 1
		else
			val1=$1
			val2=$3
			echo "L'operation methématique est : $1 $opr $3"
		fi
	fi

	let resultat=$[$val1 $opr $val2]
        echo "[Résultat] : $resultat "

}


fonction1 $1 $2 $3
fonction2 $param1 $param2 $param3

