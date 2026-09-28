#!/usr/bin
USER=(id -u)
if [ $USER -ne 0 ]; then
    echo "Please run this script as root."
    exit 1

fi