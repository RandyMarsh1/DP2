#!/bin/bash

if [[ $# != 1 ]]
then
	echo 'Usage: gen_records <number of records>'
	exit 1
fi

rec_id=0

while [[ $rec_id -lt $1 ]]
do
	item_code=$(( $RANDOM % 10 ))
	quantity=$(( $RANDOM % 5 ))
	date=$(date -d @$(( $(date +%s) - 31557600 + $RANDOM * 1000)))
	echo "$rec_id, $item_code, $quantity, $date"
	: $(( rec_id++ ))
done
