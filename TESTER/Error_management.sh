#!/bin/bash

#VARS
CHECK="./checker_linux"
EXEC="../push_swap"
TIME="sleep 0.2"

Error_management(){
echo -e "\033[0;96mPUSH_SWAP - ERROR MANAGEMENT | PART 1 |\033[0m"
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

echo ""
echo -e "\033[0;96mPUSH_SWAP - ERROR MANAGEMENT | PART 2 |\033[0m"

$TIME
INPUT="1 2 1"
RES=$($EXEC "$INPUT" 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

$TIME
INPUT="1 2 g 1"
RES=$($EXEC "$INPUT" 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

$TIME
INPUT="s"
RES=$($EXEC "$INPUT" 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

$TIME
INPUT="1 dog 3"
RES=$($EXEC "$INPUT" 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
        echo "Failed at \"$INPUT\""
    fi

$TIME
INPUT="1 3 gildo"
RES=$($EXEC "$INPUT" 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

$TIME
INPUT="a 4 5"
RES=$($EXEC "$INPUT" 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

$TIME
INPUT="- 1 3"
RES=$($EXEC "$INPUT" 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

$TIME
INPUT="1 - 4"
RES=$($EXEC "$INPUT" 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

$TIME
INPUT="4 -- 6"
RES=$($EXEC "$INPUT" 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

$TIME
INPUT="4 4- 3"
RES=$($EXEC "$INPUT" 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

$TIME
INPUT="1 --2 1"
RES=$($EXEC "$INPUT" 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

$TIME
INPUT="1 2 --"
RES=$($EXEC "$INPUT" 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

$TIME
INPUT="1 2 -z"
RES=$($EXEC "$INPUT" 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

$TIME
INPUT="1 2 +r"
RES=$($EXEC "$INPUT" 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

$TIME
INPUT="1 2 ++"
RES=$($EXEC "$INPUT" 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

$TIME
INPUT="1 2 666666666666666666666666666666666666"
RES=$($EXEC "$INPUT" 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

$TIME
INPUT="77777777777777777777777777 2 1"
RES=$($EXEC "$INPUT" 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

$TIME
INPUT="1 2 -888888888888888888888888888888888888"
RES=$($EXEC "$INPUT" 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

$TIME
INPUT="1 2 7 5 8 2 0"
RES=$($EXEC "$INPUT" 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

$TIME
INPUT="1 2 0 3 4 5 7 1 56 39"
RES=$($EXEC "$INPUT" 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

$TIME
INPUT="1 2 3 4 5 6 7 8 9 0+ d"
RES=$($EXEC "$INPUT" 2>&1)
	if [ "${RES}" = "Error" ]; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi
}

Error_management