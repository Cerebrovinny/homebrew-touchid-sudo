#!/bin/bash

# Check if the script is being run as root
if [ "$(id -u)" -ne 0 ]; then
  echo "This script must be run as root."
  exit 1
fi

# Check if the PAM TID module is available
if ! [ -e "/usr/local/lib/pam/pam_tid.so" ]; then
  echo "The pam_tid.so module is not available on your system."
  exit 1
fi

# Backup the original /etc/pam.d/sudo file
cp /etc/pam.d/sudo /etc/pam.d/sudo.bak

# Add the necessary line to the /etc/pam.d/sudo file
sed -i '' 's/^# sudo: auth account password session/auth       sufficient     pam_tid.so\
&/' /etc/pam.d/sudo

echo "TouchID authentication for sudo has been enabled."
