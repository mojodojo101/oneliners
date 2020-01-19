#!/bin/sh
string=${1:-".*"}
before=${2:-"0"}
after=${3:-"0"}
echo "pasted to clipboard"
cat /root/redteam/oscp/scripts/oneliners/oneliners.txt | grep -A$after -B$before $string | tee /dev/tty | tr -d "\n" |  gpaste-client
