#!/usr/bin
STARTTIME=$(date +%s)
sleep 50
ENDTIME=$(date +%s)
DIFF=$(($ENDTIME - $STARTTIME))
echo "It took $DIFF seconds to run the script."