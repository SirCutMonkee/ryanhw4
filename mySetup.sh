#!/bin/bash
# Arguments: None
# Invocation: meSetup.sh
# This script can run from any loaction

#a. Set the frequency of the BBB to 600 MHz.
sudo cpufreq-set -g ondemand
sudo cpufreq-set -f 600MHz
#b. Display information on the cpu; e.g. cpufreq-info command.
cpufreq-info
#c. Create a variable named location inside the script and assign it the value: /home/debian
location=/home/debian
#d. Echo the value of the variable location.
echo $location
#e. Create a variable named items, which gets the number of items in your current working directory and displays the number. Hint, use command substitution with ls and wc. 
items=$(ls | wc -l)
echo $items
