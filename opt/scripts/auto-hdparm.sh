#!/bin/bash

DRIVES=$(lsblk -d -e 7 -o NAME,ROTA | tail -n+2 | awk '{ if ($2 == 1) { print $1 } }')

for drive in $DRIVES; do
  echo "Setup hdparm for /dev/$drive"
  hdparm -B254 -M254 -S120 /dev/$drive
done;
