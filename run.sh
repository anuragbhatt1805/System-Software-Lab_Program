#!/bin/bash

# Update and upgrade the system
sudo apt-get update
sudo apt-get -y upgrade

# Install Lex and Bison libraries
sudo apt install -y flex bison

# Check if the installation was successful
if [ $? -eq 0 ]; then
    echo "Lex and Bison libraries installed successfully."
else
    echo "Error: Failed to install Lex and Bison libraries."
fi
