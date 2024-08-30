#!/bin/bash

CHECK="./checker_linux"
EXEC="../push_swap"
TIME="sleep 0.2"


Push_swap_Simple_version(){
echo -e "\033[0;96mPUSH_SWAP - SIMPLE VERSION | PART 1 |\033[0m"

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
echo -e "\033[0;96mPUSH_SWAP - SIMPLE VERSION | PART 2 |\033[0m"

$TIME
INPUT="2 1 0"
RES=$($EXEC "$INPUT" | $CHECK "$INPUT")
OPTRS=$($EXEC "$INPUT" | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 3 ]]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

$TIME
INPUT="0 2 1"
RES=$($EXEC "$INPUT" | $CHECK $INPUT)
OPTRS=$($EXEC "$INPUT" | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 3 ]]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

$TIME
INPUT="2 0 1"
RES=$($EXEC "$INPUT" | $CHECK $INPUT)
OPTRS=$($EXEC "$INPUT" | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 3 ]]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

$TIME
INPUT="2 1"
RES=$($EXEC "$INPUT" | $CHECK $INPUT)
OPTRS=$($EXEC "$INPUT" | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 3 ]]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

$TIME
INPUT="1 2 0"
RES=$($EXEC "$INPUT" | $CHECK $INPUT)
OPTRS=$($EXEC "$INPUT" | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 3 ]]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

echo -e "\033[0;96mPUSH_SWAP - ANOTHER SIMPLE VERSION | PART 1 |\033[0m"

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
echo -e "\033[0;96mPUSH_SWAP - ANOTHER SIMPLE VERSION | PART 2 |\033[0m"

$TIME
INPUT="1 5 2 4 3"
RES=$($EXEC "$INPUT" | $CHECK "$INPUT")
OPTRS=$($EXEC "$INPUT" | wc -l)
	if [[ "${RES}" == "OK" && "${OPTRS}" -le 12 ]]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

$TIME
INPUT="4 3 2 1 0"
RES=$($EXEC "$INPUT" | $CHECK "$INPUT")
OPTRS=$($EXEC "$INPUT" | wc -l)
	if [[ "${RES}" == "OK" && "${OPTRS}" -le 12 ]]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

$TIME
INPUT="258 708 466 833 488"
RES=$($EXEC "$INPUT" | $CHECK "$INPUT")
OPTRS=$($EXEC "$INPUT" | wc -l)
	if [[ "${RES}" == "OK" && "${OPTRS}" -le 12 ]]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

$TIME
INPUT="448 40 107 759 946"
RES=$($EXEC "$INPUT" | $CHECK "$INPUT")
OPTRS=$($EXEC "$INPUT" | wc -l)
	if [[ "${RES}" == "OK" && "${OPTRS}" -le 12 ]]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

$TIME
INPUT="2 15 9 12 8"
RES=$($EXEC "$INPUT" | $CHECK "$INPUT")
OPTRS=$($EXEC "$INPUT" | wc -l)
	if [[ "${RES}" == "OK" && "${OPTRS}" -le 12 ]]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

$TIME
INPUT="9 6 2 5 1"
RES=$($EXEC "$INPUT" | $CHECK "$INPUT")
OPTRS=$($EXEC "$INPUT" | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 12 ]]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

$TIME
INPUT="631 23 286 479 334"
RES=$($EXEC "$INPUT" | $CHECK "$INPUT")
OPTRS=$($EXEC "$INPUT" | wc -l)
	if [[ "${RES}" = "OK" && "${OPTRS}" -le 12 ]]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi
}

Push_swap_Simple_version