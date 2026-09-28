#!/usr/bash
USER=$(id -u)
if [ $USER -ne 0 ]; then
    echo "Please run this script as root."
    
else
    echo "Running as root. Proceeding with installation of mysql"
    dnf install mysql -y
    if [ $? -eq 0 ]; then
        echo "mysql installed successfully."
    else
        echo "Failed to install mysql."
    fi
fi