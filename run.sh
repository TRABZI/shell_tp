# Auteur : Mohammed Amine TRABZI 
# Description : Script qui permet de lancer l'éxecution des autres script


read -p "Choisissez parmi les parametres suivants (q1,q2,q3,q4) : " val

case "$val" in 
	'q1')
		echo question 1 
		./tp_shell_q1.sh;;
	'q2')
		echo question 2
		read -p "Donnez un  nom du fichier ou repertoir que vous cherchez : " val
		./tp_shell_q2.sh $val;;
	'q3')
		echo quesiton 3
		read -p "Donnez 3 paramètres: valeur opérateur valeur (exemple: 1 + 2) : " val
		./tp_shell_q3.sh $val ;;
	'q4')
		echo question 4
		./tp_shell_q4.sh;;
	*)
		echo "[error]: valeur entrée erronée"
		read -p "Choisissez parmi les parametres suivants (q1,q2,q3,q4) : " val

esac 
echo done
exit 0

