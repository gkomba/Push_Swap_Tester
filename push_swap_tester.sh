#!/bin/bash

#VARS
CHECK="./checker_linux"
EXEC="./push_swap"
TIME="sleep 0.2"
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

Identity_Test(){
echo "Push_swap - Identity Test"

    for INPUT in "42" "2 3" "1 2 3 4 5 6 7 8 9" "2 3 4 5 6 7" "0 1 2 3 4" "100 200 300 400 500 600 700 800"
    do
		$TIME
		RES=$($EXEC $INPUT | wc -l)
        if [ "${RES}" -eq 0 ]; then
            echo -e "\033[0;32mOK!\033[0m"
        else
            echo -e "\033[0;31mKO!\033[0m"
			echo "Failed at ${INPUT}"
		fi
	done
}

Error_management(){
echo "Error management"

$TIME
INPUT="1 2 1"
RES=$($EXEC $INPUT 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT="1 2 g 1"
RES=$($EXEC $INPUT 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT="s"
RES=$($EXEC $INPUT 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT="1 dog 3"
RES=$($EXEC $INPUT 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT="1 3 gildo"
RES=$($EXEC $INPUT 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT="a 4 5"
RES=$($EXEC $INPUT 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT="- 1 3"
RES=$($EXEC $INPUT 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT="1 - 4"
RES=$($EXEC $INPUT 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT="4 -- 6"
RES=$($EXEC $INPUT 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT="4 4- 3"
RES=$($EXEC $INPUT 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT="1 --2 1"
RES=$($EXEC $INPUT 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT="1 2 --"
RES=$($EXEC $INPUT 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT="1 2 -z"
RES=$($EXEC $INPUT 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT="1 2 +r"
RES=$($EXEC $INPUT 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT="1 2 ++"
RES=$($EXEC $INPUT 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT="1 2 666666666666666666666666666666666666"
RES=$($EXEC $INPUT 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT="77777777777777777777777777 2 1"
RES=$($EXEC $INPUT 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT="1 2 -888888888888888888888888888888888888"
RES=$($EXEC $INPUT 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT="1 2 7 5 8 2 0"
RES=$($EXEC $INPUT 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT="1 2 0 3 4 5 7 1 56 39"
RES=$($EXEC $INPUT 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT="1 2 3 4 5 6 7 8 9 0+ d"
RES=$($EXEC $INPUT 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi
}

Push_swap_Simple_version(){
echo "Push_swap - Simple version"

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
}

Push_swap_Middle_version(){
echo "Push_swap - Middle-version"

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

$TIME
INPUT=$(shuf -i 1-1000 -n 100)
RES=$($EXEC $INPUT | $CHECK $INPUT)
OPTRS=$($EXEC $INPUT | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 700 ]]; then
		echo -e "\033[0;32mOK!| 5/5 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 900 ]]; then
		echo -e "\033[0;32mOK!| 5/4 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1100 ]]; then
		echo -e "\033[0;32mOK!| 5/3 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1300 ]]; then
		echo -e "\033[0;31mOK!| 5/2 |\033[0m"
	elif [[ "${RES}" = "OK" && "${OPTRS}" -le 1500 ]]; then
		echo -e "\033[0;31mOK!| 5/1 |\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi
}

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

Error_management
Identity_Test
Push_swap_Simple_version
Push_swap_Middle_version
Push_swap_Advanced_version