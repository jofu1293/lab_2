#!/bin/bash
# Author: John Furlong
# Date: 2/3/2019
echo "Enter a regular expression"
read $exp
echo "Enter file name"
read $filename
grep $exp $filename
grep "^((\([0-9]{3}\) )|([0-9]{3}\-))[0-9]{3}\-[0-9]{4}$" regex_practice.txt | wc -l
grep "^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-z]{2,}" regex_practice.txt | wc -l
grep "^((\([0-9]{3}\) )|([0-9]{3}\-))[0-9]{3}\-[0-9]{4}$" regex_practice.txt | grep ^303 >>phone_results.txt
grep "^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-z]{2,}" regex_practice.txt | grep -v "geociities.com" >>email_results.txt
grep "$regexp" regex_practice.txt >> command_results.txt
