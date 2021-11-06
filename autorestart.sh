#!/bin/bash
while :
do
    RESULT=`pgrep -c "node"`
    if [ $RESULT -eq "0" ]; then
		     nohup node index.js >> /dev/null 2>>./errorlog.txt &
    fi
    sleep 60
done    
