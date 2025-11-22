#!/data/data/com.termux/files/usr/bin/bash

red='\e[31m'
green='\e[32m'
yellow='\e[33m'
blue='\e[34m'
white='\e[97m'
reset='\e[0m'

clear
cat banner.txt

echo -e "${yellow}========== MAZESTA TOOLBOX ==========${reset}"
echo -e "${green}1) Termux tools${reset}"
echo -e "${green}2) Security tools${reset}"
echo -e "${green}3) Network tools${reset}"
echo -e "${green}4) WiFi tools${reset}"
echo -e "${green}5) Save config${reset}"
echo -e "${green}0) Exit${reset}"
echo -e "${yellow}======================================${reset}"

read -p "Select: " choice

case $choice in
1)
  ls $PREFIX/bin
  ;;
2)
  sqlmap --help
  ;;
3)
  ifconfig
  ;;
4)
  bash wifi-tools.sh
  ;;
5)
  cp $PREFIX/etc/bash.bashrc backup-bashrc.txt
  echo "Config saved."
  ;;
0)
  exit
  ;;
*)
  echo -e "${red}Invalid option${reset}"
  ;;
esac
