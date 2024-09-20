#!/bin/bash

#VARS
CHECK="./checker_linux"
EXEC="../push_swap"
TIME="sleep 0.2"
ERR="./Error_management.sh"
IDT="./Identity_Test.sh"
PSV="./Push_swap_Simple_version.sh"
PMV="./Push_swap_Middle_version.sh"
PAV="./Push_swap_Advanced_version.sh"
LK="./leaks.sh"

#VERIFY
if [ -f $EXEC ]; then
	echo -n
else
	echo "./push_swap program not founded"
	exit 1
fi
if [ -f $CHECK ]; then
	echo ""
else
	echo "./checker_linux program not founded"
	exit 1
fi
if [ -x $EXEC ]; then
	echo -n
else
	echo "./push_swap permission danied"
	exit 1
fi
if [ -x $CHECK ]; then
	echo -n
else
	echo "./checker_linux permission danied"
	exit 1
fi

print_header() {
    echo -e "\033[1;32m"
    echo "  _ __  _   _ ___| |__      _____      ____ _ _ __   | |_ ___  ___| |_ ___ _ __ "
    echo " | '_ \\| | | / __| '_ \\    / __\\ \\ /\\ / / _\` | '_ \\  | __/ _ \\/ __| __/ _ \\ '__|"
    echo " | |_) | |_| \\__ \\ | | |   \\__ \\\\ V  V / (_| | |_) | | ||  __/\\__ \\ ||  __/ |   "
    echo " | .__/ \\__,_|___/_| |_|___|___/ \\_/\\_/ \\__,_| .__/   \\__\\___||___/\\__\\___|_|   "
    echo " |_|                  |_____|                |_|                               "
    echo " by: gkomba| 42 Luanda"
    echo -e "\033[0m"
    echo ""
}

print_header


if [ "${1}" = 1 ]; then
	"${LK}"
	exit 0
elif [ "${1}" = 2 ]; then
	"${ERR}"
	exit 0
elif [ "${1}" = 3 ]; then
	"${IDT}"
	exit 0	
elif [ "${1}" = 4 ]; then
	"${PSV}"
	exit 0
elif [ "${1}" = 5 ]; then
	"${PMV}"
	exit 0
elif [ "${1}" = 6 ]; then
	"${PAV}"
	exit 0
fi


$LK
echo""
$ERR
echo ""
$IDT
echo ""
$PSV
echo ""
$PMV
echo ""
$PAV
