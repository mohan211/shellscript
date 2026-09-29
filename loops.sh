#!/usr/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
for i in {1..25}
do
    echo -e $Y"Welcome $i times"
done
for app in $@
do
    echo -e $G "Installing $app"
    dnf install $app -y
done