#!/bin/bash

VAL="valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes -s" 
EXEC="./push_swap"
TIME="sleep 0.2"
LEAK_CHECK="no leaks are possible"


leaks(){
echo "Leaks Check | PART "

INPUT="1 2 3"
    if $VAL $EXEC $INPUT 2>&1 | grep -q "${LEAK_CHECK}"; then
    echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT="2 1 0"
    if $VAL $EXEC $INPUT 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT="1 2 0"
    if $VAL $EXEC $INPUT 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT="2 1"
    if $VAL $EXEC $INPUT 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT="2 0 1"
    if $VAL $EXEC $INPUT 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT="0 2 1"
    if $VAL $EXEC $INPUT 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT="2 1 0"
    if $VAL $EXEC "$INPUT" 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	elif [ "${RES}" = "Error" ]; then
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

$TIME
INPUT="0 2 1"
    if $VAL $EXEC "$INPUT" 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	elif [ "${RES}" = "Error" ]; then
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

$TIME
INPUT="2 0 1"
    if $VAL $EXEC "$INPUT" 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	elif [ "${RES}" = "Error" ]; then
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

$TIME
INPUT="2 1"
    if $VAL $EXEC "$INPUT" 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	elif [ "${RES}" = "Error" ]; then
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

$TIME
INPUT="1 2 0"
    if $VAL $EXEC "$INPUT" 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	elif [ "${RES}" = "Error" ]; then
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi
}

leaks