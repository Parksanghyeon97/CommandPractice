#!/bin/bash

echo "============start==============="

history | awk '{$1=""; print $0}' | sed 's/^ //' > $(date +%Y%m%d).txt

if [ $# -eq 0 ] ; then
	echo "$(date +%Y%m%d).txt Maked"
else
	echo "[ FAIL ]"
	exit 1
fi

git add .
git commit -m "$(date +%Y%m%d)"
git push  

echo "===========end=================="
