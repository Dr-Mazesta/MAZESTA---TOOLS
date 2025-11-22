#!/data/data/com.termux/files/usr/bin/bash

##############################################
# MAZESTA TOOLS - INSTALL SCRIPT
# GitHub: Dr-Mazesta / MAZESTTA-TOOLS
##############################################

# رنگ‌ها
red='\e[31m'
green='\e[32m'
yellow='\e[33m'
blue='\e[34m'
white='\e[97m'
reset='\e[0m'

clear

# بنر
echo -e "${green}"
cat banner.txt
echo -e "${reset}"

echo -e "${yellow}[+] Updating Repositories...${reset}"
sleep 1
pkg update -y && pkg upgrade -y

echo -e "${yellow}[+] Setting Best Mirrors...${reset}"
sleep 1
termux-change-repo

echo -e "${yellow}[+] Installing Base Packages...${reset}"
pkg install -y \
bash zsh nano vim neofetch htop tree curl wget git openssh \
proot proot-distro python python-pip nodejs php clang make \
cmake binutils termux-api

echo -e "${green}[+] Base packages installed.${reset}\n"

echo -e "${yellow}[+] Installing Network Tools...${reset}"
pkg install -y net-tools nmap lsof dnsutils inetutils
echo -e "${green}[+] Network tools installed.${reset}\n"

echo -e "${yellow}[+] Installing Security Tools...${reset}"
pkg install -y hydra sqlmap john aircrack-ng
echo -e "${red}[!] NOTE:${white} hashcat و hcxdumptool در ترموکس موجود نیست.${reset}\n"

echo -e "${yellow}[+] Installing Compression Tools...${reset}"
pkg install -y zip unzip tar gzip p7zip

echo -e "${yellow}[+] Installing Extra Tools...${reset}"
pkg install -y figlet toilet lolcat mc tmux fd ripgrep

echo -e "${green}[✓] Installation Completed Successfully!${reset}"
echo -e "${blue}Run tools: ./run-tools.sh${reset}"
