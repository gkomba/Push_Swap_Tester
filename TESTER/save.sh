INPUT="1 2 3"
    if $VAL $EXEC $INPUT 2>&1 | grep -q "${LEAK_CHECK}"; then
    echo -e "\033[0;32mOK!\033[0m"
	else
		echo -e "\033[0;31mKO!\033[0m"
		echo "Failed at ${INPUT}"
	fi

    for INPUT in "42" "2 3" "1 2 3 4 5 6 7 8 9" "2 3 4 5 6 7" "0 1 2 3 4" "100 200 300 400 500 600 700 800"
    do
		$TIME
		if $VAL $EXEC "$INPUT" 2>&1 | grep -q "${LEAK_CHECK}"; then
            echo -e "\033[0;32mOK!\033[0m"
        else
            echo -e "\033[0;31mKO!\033[0m"
			echo "Failed at \"$INPUT\""
		fi
	done
	for INPUT in "42" "2 3" "1 2 3 4 5 6 7 8 9" "2 3 4 5 6 7" "0 1 2 3 4" "100 200 300 400 500 600 700 800"
    do
		$TIME
		if $VAL $EXEC $INPUT 2>&1 | grep -q "${LEAK_CHECK}"; then           echo -e "\033[0;32mOK!\033[0m"
        else
            echo -e "\033[0;31mKO!\033[0m"
			echo "Failed at ${INPUT}"
		fi
	done
}