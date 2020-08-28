#!/bin/bash

echo -e ">> Looking for ip...\n"
goodip=(10.10.10.10)
currentip=$(curl -s ifconfig.me)
if [ $currentip ]; then
	echo "Current IP: $currentip"
	for i in ${goodip[@]}; do
		if [ $currentip != $i ]; then
			continue
		fi
		echo -e "\e[92mOK \n"
	done
else
	echo -e "\e[93m No internet connection \n"
fi
