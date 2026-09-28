#!/usr/bin
USER=(id -u)
if [ $USER -ne 0 ]; then
    echo "Please run this script as root."
    
else
    echo "Running as root. Proceeding with installation..."
fi