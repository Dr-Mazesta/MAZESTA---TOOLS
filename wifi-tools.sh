#!/data/data/com.termux/files/usr/bin/bash

clear
echo "====== WiFi Tools ======"
echo "1) aircrack-ng"
echo "2) airodump-ng"
echo "0) Back"
read -p "Select: " w

case $w in
1)
  aircrack-ng --help
  ;;
2)
  airodump-ng --help
  ;;
0)
  exit
  ;;
*)
  echo "Invalid option"
  ;;
esac
