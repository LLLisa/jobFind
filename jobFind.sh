#!/usr/bin/bash

URL='https://boards.greenhouse.io/icapitalnetwork'
HTML=$( curl "${URL}" )
FORMATTEDURL=${URL////_}


echo $FORMATTEDURL

if [[ -f "${FORMATTEDURL}.txt" ]]
  then
    echo "${FORMATTEDURL}.txt exists"
  else
    echo "${FORMATTEDURL}.txt does not exist"
    touch "${FORMATTEDURL}.txt"
fi


exit 0
