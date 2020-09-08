#! /bin/bash

commands=()
while true; do
	read -p "$" comm
	if [ ! -z "$comm" ]; then
		commands+=("$comm")
	else
		break
	fi
done

for i in "${commands[@]}";do
	echo $i;
	$i
done
