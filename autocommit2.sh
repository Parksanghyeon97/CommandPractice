#!/bin/bash

echo "============start==============="

cat ~/.bash_history | egrep -v '^#' > $(date +%Y%m%d).txt

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
