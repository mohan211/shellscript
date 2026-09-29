#!/usr/bash
for i in {1..25}
do
    echo "Welcome $i times"
done
for app in $@
do
    echo "Installing $app"
    dnf install $app -y
done