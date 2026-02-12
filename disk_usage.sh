#Disk Usage

#!/bin/bash

#Threshold in percentage
THRESHOLD=80

#Get disk usage of root partition
USAGE=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

if [ $USAGE -ge $THRESHOLD ]; then 
  echo "Warning: Disk usage is at ${USAGE}%"
else
 echo "Disk usage is safe: ${USAGE}%"
 fi
 
