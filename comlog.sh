#! /bin/bash

commands=()
logsdir="/home/spartakus/scripts/comlog/logs"

while true; do
	read -p "$" comm
	if [ ! -z "$comm" ]; then
		commands+=("$comm")
	else
		break
	fi
done

if [ ! -f $logsdir ]; then
	mkdir -p $logsdir
fi

cd $logsdir;
pwd;
ls -l;

for i in "${commands[@]}";do
	echo $i;
	#$i
done
