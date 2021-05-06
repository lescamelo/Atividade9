#!/bin/bash

while true; 
do
	read -p 'Por favor, informe o seu Email: ' email
	echo $email | grep -E '[a-z0-9._%+-]+@[a-z]{5,7}\.[a-z]{2,4}$' &> /dev/null
	if [ $? -eq 0 ]; 
	then
		echo "Email informado: $email"
		break
	else
		echo "Erro: Por favor, informe o email correto: "
	fi
done
