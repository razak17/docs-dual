#!/bin/bash
# shellcheck disable=2162,2000
while read line; do
	echo "$line" | wc -c
done
