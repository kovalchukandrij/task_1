#! /bin/bash
OS_VERSION=$(cat /etc/os-release | grep PRETTY | cut -d= -f2)
users=$(cat /etc/passwd | grep bash | cut -d: -f1)
open_ports=$(ss -tuln)
clear

echo -e "This script shows OS Linux version, all users on the OS with bash shell installed and  the open ports\n"
sleep 1

echo -e "Linux version is: $OS_VERSION\n"
echo -e "Users with bash shell are:\n$users\n"
echo -e "Open ports are:\n $open_ports\n"


