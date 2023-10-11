#!/bin/bash

n=$1
m=$2

if [ "$#" -ne 2 ]; then
	echo "Invalid input"
	exit 1
fi

if ((n <= 0)) || ((m <= 0)); then
	echo "Input must be greater than 0"
	exit 1
fi

for i in $(seq 1 $n); do
	for j in $(seq 1 $m); do
		result=$((i*j))
		echo -n "$i*$j=$result "
	done
	echo ""
done
