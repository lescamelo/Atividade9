#!/bin/bash


while true;
do
	read -p "Por favor, informe uma senha: " senha
	echo $senha | grep -E '\b[A-Z]+[a-z]+[0-9]+|[A-Z]+[0-9]+[a-z]+|[a-z]+[A-Z]+[0-9]+|[a-z]+[0-9]+[A-Z]+|[0-9]+[a-z]+[A-Z]+|[0-9]+[A-Z]+[a-z]+\b' &> /dev/null
	if [ $? -eq 0 ]; 
	then
		echo "A senha informada é válida."
		break
	else
		echo "A senha informada não é válida, por favor informe a senha correta."
	fi
done
