#!/bin/bash
#Move to /opt
cd /opt

#golang-go
echo "Installing GO"
sudo apt install golang-go -y

#redis
echo "Checking For Redis-CLI"
sudo apt list redis-cli
which redis-cli

#pimpmykali
echo "Installing PimpMyKali Modules for - Covenent, Sublime Text, Fix Missing, Flameshot"
sudo mkdir pimpmykali
sudo wget https://raw.githubusercontent.com/Dewalt-arch/pimpmykali/master/pimpmykali.sh
sudo mv pimpmykali.sh ./pimpmykali
sudo chmod +x pimpmykali.sh
echo M | sudo ./pimpmykali.sh
echo L | sudo ./pimpmykali.sh
echo 3 | sudo ./pimpmykali.sh
sudo ./pimpmykali.sh --flameshot
sudo ./pimpmykali.sh --missing
sudo rm /opt/pimpmykali.log


#PEAS
echo "Privilege-Escalation-Awesome-Script"
sudo mkdir /opt/privilege-escalation-awesome-script
cd opt/privilege-escalation-awesome-script
sudo wget https://raw.githubusercontent.com/Tib3rius/privilege-escalation-awesome-scripts-suite/master/linPEAS/linpeas.sh
sudo wget https://github.com/Tib3rius/privilege-escalation-awesome-scripts-suite/raw/master/winPEAS/winPEASexe/winPEAS/bin/Release/winPEAS.exe
sudo wget https://raw.githubusercontent.com/Tib3rius/privilege-escalation-awesome-scripts-suite/master/winPEAS/winPEASbat/winPEAS.bat

#Sublist3r
echo "Installing Sublist3r"
sudo git clone https://github.com/aboul3la/Sublist3r.git
sudo mkdir /opt/sublist3r/
sudo cp /opt/Sublist3r/subbrute /opt/sublist3r/
sudo cp -r /opt/Sublist3r/subbrute /opt/sublist3r/
sudo rm -r /opt/Sublist3r

#Sublime_Text
echo "Sublime Text Editor Installed by PimpMyKali"

#VScode
echo "Installing VS Code"
sudo apt install code-oss

#dnspy

#rubeus
echo "Installing Rubeus but not compiling"
sudo mkdir /opt/rubeus
cd /opt/rubeus
sudo wget https://github.com/GhostPack/Rubeus/archive/refs/tags/1.6.4.zip
sudo unzip 1.6.4.zip

#sharphound
echo "SharpHound"


#powersploit
echo "PowerSploit"


#libreoffice
echo "Libre Office"


#nmapAutomator
echo "nmapAutomator"


#linux-smart-enumeration
echo "linux-smart-enumeration"


#NahamSec
#https://github.com/nahamsec/

#blooodhound
echo "Installing Bloodhound Binaries"

cd /opt
sudo wget https://github.com/BloodHoundAD/BloodHound/archive/refs/tags/4.2.0.zip
sudo unzip bloodhound.zip ./
sudo unzip 4.2.0.zip
sudo rm bloodhound.zip
sudo rm 4.2.0.zip
sudo mv BloodHound-4.2.0 ./bloodhound

#Seclist
echo "Installing Seclist /usr/share/wordlists/seclist"
sudo git clone https://github.com/danielmiessler/SecLists.git /usr/share/wordlists/seclist

#kerbrute
echo "Installing Kerbrute"
sudo git clone https://github.com/ropnop/kerbrute /opt/kerbrute/
cd kerbrute
sudo make clean
sudo make linux

#Docker
echo "Installing Docker"
sleep 5
sudo apt install -y docker.io
sudo systemctl enable docker --now
sudo usermod -aG docker $USER
printf '%s\n' "deb https://download.docker.com/linux/debian bullseye stable" | sudo tee /etc/apt/sources.list.d/docker-ce.list
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/docker-ce-archive-keyring.gpg
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io

#nessus
echo "Installing Nessus"
docker pull tenableofficial/nessus

#plank
#sudo apt install plank -y

#neo4j
echo "Installing neo4j"
sudo apt install neo4j -y

echo "Installations Complete"
