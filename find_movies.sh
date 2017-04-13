#!/bin/bash
if [ "$#" -ne 1 ]; then
    echo "Please enter city name..."
    exit 1
fi
javac ReadWebsiteData.java
#echo $1
java ReadWebsiteData $1> out.txt
cat out.txt| grep "data-id=\"movies"| cut -d "=" -f4|cut -d "\"" -f2
