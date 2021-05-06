#!/bin/bash


arquivo=$1

if [ -f $arquivo ];
then
	echo "Arquivo!"
	cat $arquivo
	echo "Arquivo sem quebra de linhas."
	cat $arquivo | grep -v -e '^[[:space:]]*$' > /tmp/arquivo2
	cat /tmp/arquivo2
else
	echo "Erro!"

fi
