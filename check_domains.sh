#!/bin/bash
#This script checks every word from words.txt for a valid .com domain.
#It outputs a comma seperated file straight to the terminal, but can be piped like so: ./check_domains.sh > output.csv
A=$"www."
C=".com"
D=";"
E="TRUE"
F="FALSE"
for url in $(cat words.txt) 
do 
  if timeout 10 curl --output /dev/null --silent --head --fail "$url$C"; then
    echo $url$D$E$D
    #echo "TRUE"
  else
    echo $url$D$F$D
  fi 
done