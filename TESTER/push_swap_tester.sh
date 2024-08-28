#!/bin/bash

#VARS
CHECK="./checker_linux"
EXEC="./push_swap"
TIME="sleep 0.2"
ERR="./Error_management.sh"
IDT="./Identity_Test.sh"
PSV="./Push_swap_Simple_version.sh"
PMV="./Push_swap_Middle_version.sh"
PAV="./Push_swap_Advanced_version.sh"

#INIT
if [ -f $EXEC ]; then
	echo ""
else
	echo " ${EXEC} not founded"
	exit 1
fi
if [ -f $CHECK ]; then
	echo ""
else
	echo "${CHECK} not founded"
	exit 1
fi
if [ "${1}" = 1 ]; then
	"${ERR}"
	exit 0
elif [ "${1}" = 2 ]; then
	"${IDT}"
	exit 0
elif [ "${1}" = 3 ]; then
	"${PSV}"
	exit 0	
elif [ "${1}" = 4 ]; then
	"${PMV}"
	exit 0
elif [ "${1}" = 5 ]; then
	"${PAV}"
	exit 0
fi
$ERR
echo ""
$IDT
$PSV
echo ""
$PMV
echo ""
$PAV