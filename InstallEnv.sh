#!/bin/bash

#Installing python and pip v2 and v3
echo "Installing python2, python3, pip and pip3"
sudo apt-get install python2.7 
sudo apt-get install python-pip 
sudo apt-get install python3.7 
sudo apt-get install python3-pip 
read -p "Press enter to continue"
clear

#Check for upgrades fpr pip3..
echo "Checking for upgrades.."
python3.7 -m pip install --upgrade requests
echo "..done"
read -p "Press enter to continue"

#Install SNAP Package Mananger
echo "Installing additional package manager snapd"
sudo apt-get install snapd 
read -p "Press enter to continue"
clear

#Warning!
echo "Getting ready to install required modules..."
echo "This script uses pip3"
sleep 1
echo "Getting ready to install required dev tools"
read -p "Press enter to continue"
clear

#Install Meraki
echo "1. Meraki for Python"
python3.7 -m pip install meraki 
sleep 1
echo "DONE!"
read -p "Press enter to continue"
clear

#Install Paramiko
echo "2. Paramiko for Python (SSH)"
python3.7 -m pip install paramiko 
sleep 1
echo "DONE!"
read -p "Press enter to continue"
clear

#Install PySNMP
echo "3. PySNMP for Python(Interact with SNMP devices)"
python3.7 -m pip install pysnmp 
sleep 1
echo "DONE!"
read -p "Press enter to continue"
clear

#Install VirturalENV
echo "4. VirturalENV for Python"
python3.7 -m pip install Virtualenv 
sleep 1
echo "DONE!"
read -p "Press enter to continue"
clear

#Install requests env
echo "5. Requests for Python"
python3.7 -m pip install requests 
sleep 1
echo "DONE!"
read -p "Press enter to continue"
clear

#Install curl
echo "6. Install curl"
sudo apt-get install curl 
sleep 1
echo "DONE!"
read -p "Press enter to continue"
clear

#Install ssl
echo "7. Install lib ssl"
sudo apt-get install libssl-dev 
sleep 1
echo "DONE!"
read -p "Press enter to continue"
clear

#Install essential dev tools
echo "8. Install essential dev tools"
sudo apt-get install build-essential 
sleep 1
echo "DONE!"
read -p "Press enter to continue"
clear

#Install GIT
echo "9. Install GIT"
sudo apt-get install git 
sleep 1
echo "DONE!"
read -p "Press enter to continue"
clear

#Install NodeJS and Node Package Manager
echo "9. Install GIT"
sudo apt-get install nodejs 
sudo apt-get install npm 
sleep 1
echo "DONE!"
read -p "Press enter to continue"
clear

#Install Atom IDE
echo "10. Install ATOM IDE"
sudo snap install atom --classic
sleep 1
echo "DONE!"
read -p "Press enter to continue"
clear

#Install Postman
echo "11. Install Postman"
sudo snap install postman
sleep 1
echo "DONE!"
read -p "Press enter to continue"
clear

#Install OpenCOnnect
echo "12. Install OpenConnect VPN"
sudo apt-get install openconnect 
sleep 1
echo "DONE!"
read -p "Press enter to continue"
clear

#Install Docker
echo "Installing Docker and Configuring"

#Install HTTPS plugins that will support repositories to be used over HTTPS.
sudo apt install apt-transport-https ca-certificates curl software-properties-common

#Next, add Docker’s specific GPG key and add it to the apt key-ring to verify the package integrity.
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add the Docker repository to apt in order to always check for the latest stable version.
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

#Now that the Docker repository is set up, update apt and then install Docker Community Edition.
sudo apt update
sudo apt install docker-ce

#Now set up group permissions so you don’t need sudo for every docker command.

#Add your user to the docker group.
sudo usermod -aG docker $USER

echo "DONE :)"

