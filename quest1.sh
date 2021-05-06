#!/bin/bash

for i in $*;
do
	if [ ${i} = "a" ];
	then
		echo "Diretório"
		ls -la | grep -E "^[d]"
		echo "---------------"
	

	elif [ ${i} = "b" ];
	then
		echo "Exec"
		ls -la | grep -E "^-[rwx]{3}"
		echo "-----------------"
	

	elif [ ${i} = "c" ];
	then
		echo "ScriptShell"
		ls -la | grep -E ".*\.sh"
		echo "-----------------"
	

	elif [ ${i} = "d" ];
	then
		echo "Links"
		ls -la | grep -E "^[l]"
		echo "----------------"
	

	elif [ ${i} = "e" ];
	then
		echo "< 100 Bytes"
		ls -la | grep -E "^-" > /tmp/analisando.txt
		for i in $(cat /tmp/analisando.txt | tr -s ' ' '|' | cut -d'|' -f9);
		do
			x=$(du -b $i)
			y=$(echo $x | tr -s ' ' '|' | cut -d'|' -f1)
			z=$(echo $x | tr -s ' ' '|' cut -d'|' -f2)
			if [ $y -le 100 ];
			then
				ls -la $z
			fi
		done
	fi
done

