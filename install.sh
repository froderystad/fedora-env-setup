#! /bin/bash

# Colors
RED="\033[1;31m"
GREEN="\033[1;32m"
BLUE="\033[1;34m"
ENDCOLOR="\033[0m"

function DisableUnusedServices() {
  echo -e $BLUE"Disabling unused services..."$ENDCOLOR
  systemctl disable bluetooth.service
}

function RemoveUnwantedStandardSoftware() {
  echo -e $BLUE"Removing unwanted standard software..."$ENDCOLOR
  # yum -y remove ..
}

function UpdateSoftware() {
  echo -e $BLUE"Updating Fedora..."$ENDCOLOR
  yum -y update
}

function CheckRoot() {
  if [ $(whoami) != "root" ]; then
    echo -e $RED"Please run this script as root."$ENDCOLOR
    exit 1
  fi
}

function CheckConnection() {
  i=`ping -c 1 www.google.com > "/dev/null" 2>&1` ;
  if [ $? != 0 ]; then
    echo -e $RED"No internet connection found. This script requires internet to work properly."$ENDCOLOR
    exit 1
  fi
}

CheckRoot
CheckConnection
RemoveUnwantedStandardSoftware
DisableUnusedServices
UpdateSoftware

echo -e $GREEN"Successfully software. Done."$ENDCOLOR
