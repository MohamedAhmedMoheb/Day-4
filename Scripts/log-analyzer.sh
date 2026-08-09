#!/bin/bash
set -euo pipefail

if [ $# -eq 0 ]; then 
echo "ERROR NUMBER OF ARGUMMENTS NOT TRUE "
exit 1
fi 

if [ ! -f "$1" ] ; then
echo " FILE DOES NOt EXIST"
exit 1
fi
echo " The log file is ; $1 "
echo
grep -E "ERROR|WARN|CRITICAL" "$1" | awk '/ERROR/ {error++}
 /WARN/ {warn++}
 /CRITICAL/{critical++}
 
  END {print "ERROR :",error ,"WARN :", warn ,"CRITICAL:", critical}'

