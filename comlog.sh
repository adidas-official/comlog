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
ls -l;
read -p "Name of log file: " logname
touch $logname.txt
chmod 644 $logname.txt

for i in "${commands[@]}";do
	echo $i >> $logname.txt;
	#$i
done
