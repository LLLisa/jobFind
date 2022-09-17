#!/usr/bin/bash


URL='https://boards.greenhouse.io/icapitalnetwork'
URL='localhost:1312'
HTML=$( curl "${URL}" )
FORMATTEDURL=${URL////_}
NOW=$(date)

echo $NOW

echo $HTML > ${FORMATTEDURL}.txt
echo $NOW >> diff.txt
diff -u compare.txt ${FORMATTEDURL}.txt | grep -E "^\+" >> diff.txt
cat ${FORMATTEDURL}.txt > compare.txt


exit 0
