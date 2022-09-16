#!/usr/bin/bash


URL='https://boards.greenhouse.io/icapitalnetwork'
HTML=$( curl "${URL}" )
FORMATTEDURL=${URL////_}


# echo $FORMATTEDURL

if [[ -f "${FORMATTEDURL}.txt" ]]
  then
    echo "${FORMATTEDURL}.txt exists"
    diff compare.txt ${FORMATTEDURL}.txt > diff.txt
    > compare.txt
    > ${FORMATTEDURL}.txt
    echo $HTML >> compare.txt

  else
    touch "${FORMATTEDURL}.txt"
    echo "${FORMATTEDURL}.txt was created"
    echo $HTML >> ${FORMATTEDURL}.txt
fi



exit 0
