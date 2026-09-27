#!/usr/bin
STARTTIME=$(date +%s)
echo "Starting the script..."
sleep 50
echo "Script finished."
ENDTIME=$(date +%s)
DIFF=$(($ENDTIME - $STARTTIME))
echo "It took $DIFF seconds to run the script."