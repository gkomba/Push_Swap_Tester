#!/bin/bash

VAL="valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes -s" 
EXEC="../push_swap"
LEAK_CHECK="no leaks are possible"


leaks(){
echo "Leaks Check | PART 1"
for INPUT in "42" "2 3" "1 2 3 4 5 6 7 8 9" "2 3 4 5 6 7" "0 1 2 3 4" "100 200 300 400 500 600 700 800"
    do
		
		if $VAL $EXEC "$INPUT" 2>&1 | grep -q "${LEAK_CHECK}"; then
            echo -e "\033[0;32mOK!\033[0m"
        else
            echo -e "\033[0;31mKO!\033[0m"
			echo "Failed at \"$INPUT\""
		fi
done

for INPUT in "42" "2 3" "1 2 3 4 5 6 7 8 9" "2 3 4 5 6 7" "0 1 2 3 4" "100 200 300 400 500 600 700 800"
    do
		
		if $VAL $EXEC $INPUT 2>&1 | grep -q "${LEAK_CHECK}"; then           echo -e "\033[0;32mOK!\033[0m"
        else
            echo -e "\033[0;31mKO!\033[0m"
			echo "Failed at ${INPUT}"
		fi
done

echo ""
echo "Leaks Check | PART 2"

INPUT="1 2 3"
    if $VAL $EXEC $INPUT 2>&1 | grep -q "${LEAK_CHECK}"; then
    echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi


INPUT="2 1 0"
    if $VAL $EXEC $INPUT 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi


INPUT="1 2 0"
    if $VAL $EXEC $INPUT 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi


INPUT="2 1"
    if $VAL $EXEC $INPUT 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi


INPUT="2 0 1"
    if $VAL $EXEC $INPUT 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi


INPUT="0 2 1"
    if $VAL $EXEC $INPUT 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi


INPUT="2 1 0"
    if $VAL $EXEC "$INPUT" 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi


INPUT="0 2 1"
    if $VAL $EXEC "$INPUT" 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi


INPUT="2 0 1"
    if $VAL $EXEC "$INPUT" 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi


INPUT="2 1"
    if $VAL $EXEC "$INPUT" 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi


INPUT="1 2 0"
    if $VAL $EXEC "$INPUT" 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi

echo ""
echo "Leaks Check | PART 2"

INPUT="1 2 g 1"
	if $VAL $EXEC "$INPUT" 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi


INPUT="s"
	if $VAL $EXEC "$INPUT" 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi


INPUT="1 dog 3"
	if $VAL $EXEC "$INPUT" 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
        echo "Failed at \"$INPUT\""
    fi


INPUT="1 3 gildo"
	if $VAL $EXEC "$INPUT" 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi


INPUT="a 4 5"
	if $VAL $EXEC "$INPUT" 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi


INPUT="- 1 3"
	if $VAL $EXEC "$INPUT" 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi


INPUT="1 - 4"
	if $VAL $EXEC "$INPUT" 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi


INPUT="4 -- 6"
	if $VAL $EXEC "$INPUT" 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi


INPUT="4 4- 3"
	if $VAL $EXEC "$INPUT" 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi


INPUT="1 --2 1"
	if $VAL $EXEC "$INPUT" 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi


INPUT="1 2 --"
	if $VAL $EXEC "$INPUT" 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi


INPUT="1 2 -z"
	if $VAL $EXEC "$INPUT" 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi


INPUT="1 2 +r"
	if $VAL $EXEC "$INPUT" 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi


INPUT="1 2 ++"
	if $VAL $EXEC "$INPUT" 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi


INPUT="1 2 666666666666666666666666666666666666"
	if $VAL $EXEC "$INPUT" 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi


INPUT="77777777777777777777777777 2 1"
	if $VAL $EXEC "$INPUT" 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi


INPUT="1 2 -888888888888888888888888888888888888"
	if $VAL $EXEC "$INPUT" 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi


INPUT="1 2 7 5 8 2 0"
	if $VAL $EXEC "$INPUT" 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi


INPUT="1 2 0 3 4 5 7 1 56 39"
	if $VAL $EXEC "$INPUT" 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi


INPUT="1 2 3 4 5 6 7 8 9 0+ d"
	if $VAL $EXEC "$INPUT" 2>&1 | grep -q "${LEAK_CHECK}"; then
		echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at \"$INPUT\""
	fi
}

leaks