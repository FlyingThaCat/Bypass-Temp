#!/bin/bash

# Splash Screen
echo -e "
██████╗  ██████╗  ██████╗ ████████╗███████╗██████╗ 
██╔══██╗██╔═══██╗██╔═══██╗╚══██╔══╝██╔════╝██╔══██╗
██████╔╝██║   ██║██║   ██║   ██║   █████╗  ██████╔╝
██╔══██╗██║   ██║██║   ██║   ██║   ██╔══╝  ██╔══██╗
██████╔╝╚██████╔╝╚██████╔╝   ██║   ███████╗██║  ██║
╚═════╝  ╚═════╝  ╚═════╝    ╚═╝   ╚══════╝╚═╝  ╚═╝ \033[1;36mFor Faking Battery Temp\033[0m
"
echo -e "By: \033[0;35m@FlyingThaCat / @Orangeskai\033[0m"
echo -e "Tested on: \033[1;33mAsus Zenfone 2 Laser w/ ViperOS\033[0m"

# show help menu
help(){
    echo ""
    echo -e "This script \033[1m\033[0;31mONLY WORKS ON ROOTED DEVICES\033[0m"
    echo "When you have dummy battery or directly wire to the battery connector."
    echo "And you don't connect the sensor pin it will think the battery is overheating"
    echo "And it will shutdown the device, this script will fake the temp to 20 degrees so it will not shutdown"
    echo ""
    echo "Usage: ./boot.sh"
    echo ""
    echo "Options:"
    echo "  -h, --help      Show this help menu"
    echo ""
}

# call help menu when /? or -h is used
if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
    help
    exit 0
fi

# make printer function
printer(){
    if [ "$1" = "success" ]; then
        echo -e "\033[0;32m$2"
    elif [ "$1" = "error" ]; then
        echo -e "\033[0;31m$2"
    else 
        echo -e "\033[1;34m$2"
    fi
}

# #Check if adb is installed
# if ! [ -x "$(command -v adb)" ]; then
#     echo ""
#     printer "error" "Error: adb is not installed." >&2
#     exit 1
# fi

# # make sure to pause and wait for user to connect device
# echo ""
# printer "info" "Please connect your device and press enter to continue."
# read -p ""

# # loop check until device is connected
# while ! [ -n "$(adb devices | sed -n 2p)" ]; do
#     :
# done

# # # Check if device is connected and strip the first line
# if ! [ -n "$(adb devices | sed -n 2p)" ]; then
#     printer "error" "Error: Device is not connected." >&2
#     exit 1
# else
#     printer "success" "Device is connected."
# fi

# # while loop to check if device is unauthorized and retry until authorized
# while ! [ -n "$(adb devices | sed -n 2p | grep -o device)" ]; do
#     :
# done

# # Check if device is authorized
# if ! [ -n "$(adb devices | sed -n 2p | grep -o device)" ]; then
#     printer "error" "Error: Device is not authorized." >&2
#     exit 1
# else
#     printer "success" "Device is authorized."
# fi

# # Enable root
# adb root

# # check if root is enabled
# if ! [ -n "$(adb shell id | grep -o root)" ]; then
#     printer "error" "Error: Device is not rooted." >&2
#     exit 1
# else
#     printer "success" "Device is rooted."
# fi

# # inject battery temp
# adb shell "echo 200 > /sys/class/power_supply/battery/temp"

# # check if battery temp is injected
# if ! [ -n "$(adb shell cat /sys/class/power_supply/battery/temp | grep -o 200)" ]; then
#     printer "error" "Error: Battery temp is not injected." >&2
#     exit 1
# else
#     printer "success" "Battery temp is injected."
# fi