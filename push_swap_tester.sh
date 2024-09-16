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

display(){
	echo -e "\033[0;96m_______________________________________________________________\033[0m"
	echo -e "\033[0;96m|#############################################################|\033[0m"
	echo -e "\033[0;96m|#############################################################|\033[0m"
	echo -e "\033[0;96m|########| PUSH SWAP TESTER | By: gkomba | 42 Luanda |########|\033[0m"
	echo -e "\033[0;96m|#############################################################|\033[0m"
	echo -e "\033[0;96m|#############################################################|\033[0m"
	echo -e "\033[0;96m|#############################################################|\033[0m"
	echo ""
}

display

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
