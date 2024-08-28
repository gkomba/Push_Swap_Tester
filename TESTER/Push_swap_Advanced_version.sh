#!/bin/bash

#VARS
CHECK="../checker_linux"
EXEC="../push_swap"
TIME="sleep 0.2"

Push_swap_Advanced_version(){
echo "Push_swap - Advanced version"

$TIME
INPUT=$(shuf -i 1-5000 -n 500)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 5500 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 7000 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 8500 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 10000 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 11500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-5000 -n 500)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 5500 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 7000 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 8500 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 10000 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 11500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-5000 -n 500)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 5500 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 7000 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 8500 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 10000 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 11500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-5000 -n 500)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 5500 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 7000 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 8500 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 10000 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 11500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-5000 -n 500)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 5500 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 7000 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 8500 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 10000 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 11500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-5000 -n 500)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 5500 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 7000 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 8500 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 10000 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 11500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-5000 -n 500)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 5500 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 7000 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 8500 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 10000 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 11500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-5000 -n 500)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 5500 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 7000 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 8500 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 10000 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 11500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-5000 -n 500)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 5500 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 7000 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 8500 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 10000 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 11500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-5000 -n 500)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 5500 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 7000 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 8500 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 10000 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 11500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-5000 -n 500)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 5500 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 7000 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 8500 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 10000 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 11500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-5000 -n 500)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 5500 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 7000 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 8500 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 10000 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 11500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-5000 -n 500)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 5500 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 7000 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 8500 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 10000 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 11500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-5000 -n 500)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 5500 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 7000 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 8500 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 10000 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 11500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-5000 -n 500)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 5500 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 7000 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 8500 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 10000 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 11500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-5000 -n 500)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 5500 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 7000 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 8500 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 10000 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 11500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-5000 -n 500)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 5500 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 7000 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 8500 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 10000 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 11500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-5000 -n 500)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 5500 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 7000 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 8500 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 10000 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 11500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-5000 -n 500)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 5500 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 7000 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 8500 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 10000 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 11500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-5000 -n 500)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 5500 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 7000 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 8500 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 10000 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 11500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-5000 -n 500)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 5500 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 7000 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 8500 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 10000 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 11500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-5000 -n 500)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 5500 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 7000 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 8500 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 10000 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 11500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-5000 -n 500)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 5500 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 7000 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 8500 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 10000 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 11500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-5000 -n 500)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 5500 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 7000 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 8500 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 10000 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 11500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-5000 -n 500)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 5500 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 7000 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 8500 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 10000 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 11500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-5000 -n 500)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 5500 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 7000 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 8500 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 10000 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 11500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-5000 -n 500)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 5500 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 7000 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 8500 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 10000 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 11500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-5000 -n 500)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 5500 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 7000 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 8500 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 10000 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 11500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi
}

Push_swap_Advanced_version