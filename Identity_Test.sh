#!/bin/bash

#VARS
CHECK="./checker_linux"
EXEC="../push_swap"
TIME="sleep 0.2"

Identity_Test(){
echo -e "\033[0;96mPUSH_SWAP - IDENTITY TEST | PART 1 |\033[0m"
RES=1
    for INPUT in "42" "2 3" "2 3 2147483647" "1 2 3 4 5 6 7 8 9" "2 3 4 5 6 7" "0 1 2 3 4" "100 200 300 400 500 600 700 800"
    do
		$TIME
		RES=$($EXEC "$INPUT" 2>&1 | wc -l)
        if [ "$RES" -eq 0 ]; then
            echo -e "\033[0;32mOK!\033[0m"
        else
            echo -e "\033[0;31mKO!\033[0m"
			echo "Failed at \"$INPUT\""
		fi
	done
echo ""
echo -e "\033[0;96mPUSH_SWAP - IDENTITY TEST | PART 2 |\033[0m"
RES=1
	for INPUT in "42" "2 3" "2 3 2147483647" "1 2 3 4 5 6 7 8 9" "2 3 4 5 6 7" "0 1 2 3 4" "100 200 300 400 500 600 700 800"
    do
		$TIME
		RES=$($EXEC $INPUT 2>&1 | wc -l)
        if [ "$RES" -eq 0 ]; then
            echo -e "\033[0;32mOK!\033[0m"
        else
            echo -e "\033[0;31mKO!\033[0m"
			echo "Failed at ${INPUT}"
		fi
	done
}

Identity_Test
