#!/bin/bash
set -euo pipefail

name="System Audit Report"
echo "Welcome to $name"
echo "Date $(date)"
echo
echo "==============================="
echo "          Disk Usage           "
echo "==============================="
df -h

echo 
echo "==============================="
echo "        Memroy Usage           "
echo "==============================="
free -h
echo
echo "==============================="
echo "          CPU Load             "
echo "==============================="
uptime
echo
echo "==============================="
echo "         Who is here           "
echo "==============================="
whoami
echo
echo "==============================="
echo "       Listening Ports         "
echo "==============================="
ss -tulnp
