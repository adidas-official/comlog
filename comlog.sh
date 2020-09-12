#! /bin/bash
# Description: App for logging commands

#logsdir="/home/spartakus/scripts/comlog/logs"

logs_where () {
    read -p "Logs directory: " logsdir
    if [ ! -f $logsdir ]; then
        mkdir -p $logsdir
    fi
    echo $logsdir
}

show_dir () {
    cd $1
    pwd
    ls -lh
}

make_logfile () {
    read -p "Name of log file: " logname
    touch $logname.txt
    chmod 644 $logname.txt
    echo $logname
}

main () {

    lw=$(logs_where)
    show_dir $lw
    logfile=$(make_logfile)

    # Create commands
    commands=()
    while true; do
        read -p "$ " comm
        if [ ! -z "$comm" ]; then
            commands+=("$comm")
        else
            break
        fi
    done

    # Write them to log file
    for i in "${commands[@]}";do
        echo $i >> $logfile.txt;
    done
}

main
