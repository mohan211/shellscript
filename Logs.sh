USER=$(id -u)
LOGS_DIR=/home/ec2-user/shelllogs
LOGS_FILE=$LOGS_DIR/$0.log
VALIDATE(){
    if [ $2 -ne 0 ]; then
        echo "Installation of $1 failed."
        exit 1
    else
        echo "Installation of $1 completed successfully."
    fi
}
if [ $USER -ne 0 ]; then
    echo "Please run this script as root."
    
else
    echo "Running as root. Proceeding with installation of mysql-server"
    dnf install mysql-server -y > $LOGS_FILE 2>&1
    VALIDATE mysql-server $?
fi