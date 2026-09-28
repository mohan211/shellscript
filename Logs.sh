USER=$(id -u)
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
    echo "Running as root. Proceeding with installation of nginx"
    dnf install xyz -y > /shelllogs/output.log
    VALIDATE xyz $?
fi