#!/bin/bash
if [ "$#" -ne 1 ]; then
    echo "Please enter city name..."
    exit 1
fi
javac ReadWebsiteData.java
#echo $1
java ReadWebsiteData $1> out.txt

declare -a x
declare -a y
cat out.txt| grep "data-id=\"movies"| cut -d "=" -f4|cut -d "\"" -f2>movies.txt
cat out.txt | grep "language'>"| cut -d ">" -f2| cut -d "<" -f1>language.txt

paste movies.txt language.txt | column -s $'\t' -t



