#!/bin/bash

CHECK="./checker_linux"
EXEC="../push_swap"
TIME="sleep 0.2"


Push_swap_Simple_version(){
echo "Push_swap - Simple version | PART 1"

$TIME
INPUT="2 1 0"
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 3 ]]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT="1 2 0"
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 3 ]]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT="2 1"
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 3 ]]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT="2 0 1"
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 3 ]]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT="0 2 1"
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 3 ]]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

echo ""
echo "Push_swap - Simple version | PART 2"
$TIME
INPUT="2 1 0"
RES=$($EXEC "$INPUT" 2>&1 | $CHECK "$INPUT" 2>&1)
OPTRS=$($EXEC "$INPUT" 2>&1 | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 3 ]]; then
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
RES=$($EXEC "$INPUT" 2>&1 | $CHECK $INPUT 2>&1)
OPTRS=$($EXEC "$INPUT" 2>&1 | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 3 ]]; then
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
RES=$($EXEC "$INPUT" 2>&1 | $CHECK $INPUT 2>&1)
OPTRS=$($EXEC "$INPUT" 2>&1 | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 3 ]]; then
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
RES=$($EXEC "$INPUT" 2>&1 | $CHECK $INPUT 2>&1)
OPTRS=$($EXEC "$INPUT" 2>&1 | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 3 ]]; then
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
RES=$($EXEC "$INPUT" 2>&1 | $CHECK $INPUT 2>&1)
OPTRS=$($EXEC "$INPUT" 2>&1 | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 3 ]]; then
		echo -e "\033[0;32mOK!\033[0m"
	elif [ "${RES}" = "Error" ]; then
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

echo "Push_swap - Another Simple version | PART 1"

$TIME
INPUT=$(shuf -i 1-1000 -n 5)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 12 ]]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 5)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 12 ]]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 5)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 12 ]]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 5)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 12 ]]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 5)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 12 ]]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

echo ""
echo "Push_swap - Another Simple version | PART 2"
$TIME
INPUT=$(shuf -i 1-1000 -n 5)
RES=$($EXEC "$INPUT" 2>&1 | $CHECK "$INPUT" 2>&1)
OPTRS=$($EXEC "$INPUT" 2>&1 | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 12 ]]; then
		echo -e "\033[0;32mOK!\033[0m"
	elif [ "${RES}" = "Error" ]; then
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 5)
RES=$($EXEC "$INPUT" 2>&1 | $CHECK $INPUT 2>&1)
OPTRS=$($EXEC "$INPUT" 2>&1 | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 12 ]]; then
		echo -e "\033[0;32mOK!\033[0m"
	elif [ "${RES}" = "Error" ]; then
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 5)
RES=$($EXEC "$INPUT" 2>&1 | $CHECK $INPUT 2>&1)
OPTRS=$($EXEC "$INPUT" 2>&1 | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 12 ]]; then
		echo -e "\033[0;32mOK!\033[0m"
	elif [ "${RES}" = "Error" ]; then
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 5)
RES=$($EXEC "$INPUT" 2>&1 | $CHECK $INPUT 2>&1)
OPTRS=$($EXEC "$INPUT" 2>&1 | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 12 ]]; then
		echo -e "\033[0;32mOK!\033[0m"
	elif [ "${RES}" = "Error" ]; then
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 5)
RES=$($EXEC "$INPUT" 2>&1 | $CHECK $INPUT 2>&1)
OPTRS=$($EXEC "$INPUT" 2>&1 | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 12 ]]; then
		echo -e "\033[0;32mOK!\033[0m"
	elif [ "${RES}" = "Error" ]; then
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi
}

Push_swap_Simple_version