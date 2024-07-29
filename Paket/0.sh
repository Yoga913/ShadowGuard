#!/bin/bash

function Title {
clear
# Warna ANSI
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
RESET='\033[0m' # Reset warna

echo -e "${CYAN}   _____  __                __                   ______                         __${RESET}"
echo -e "${MAGENTA}  / ___/ / /_   ____ _ ____/ /____  _      __   / ____/__  __ ____ _ _____ ____/ /${RESET}"
echo -e "${RED}  \__ \ / __ \ / __ \`// __  // __ \| | /| / /  / / __ / / / // __ \`// ___// __  / ${RESET}"
echo -e "${GREEN} ___/ // / / // /_/ // /_/ // /_/ /| |/ |/ /  / /_/ // /_/ // /_/ // /   / /_/ /  ${RESET}"
echo -e "${YELLOW}/____//_/ /_/ \__,_/ \__,_/ \____/ |__/|__/   \____/ \__,_/ \__,_//_/    \__,_/   ${RESET}"
echo -e "${BLUE}                                                                                  ${RESET}"
echo -e "${RED}___________________________________________________________________________________${RESET}"
echo "                  ︻デ═一   Dibuat Oleh:Yoga913   ︻デ═一 "
echo "--------------------------------------------------------------------------------------------------"
echo
echo
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
	Title
	echo "[0] Konfigurasi Alat"
	echo
	echo "================================"
	echo "[1] Pemasangan Persyaratan""    |"
	echo "[2] Konfigurasi Akun ProtonVPN""|"
	echo "[3] Siapkan Akun NordVPN""      |"
	echo "[4] Kembali Ke Menu""           |"
	echo "================================"
	echo
	echo
	read -p "[*] Pilih SalahSatu Opsi: " opc1
		case $opc1 in
				1 )	echo
					sudo apt install macchanger -y
					sudo apt-get install tor -y
					sudo apt-get install speedtest -y
					sudo apt-get install exiftool -y
					sudo apt-get install secure-delete -y
					sudo pip install speedtest-cli
					sudo apt-get install curl -y
					sudo apt install git -y
					
					cd Paket
					
					sudo pip install -r requirements.txt
					sudo rm -r linux-cli
					sudo rm -r kali-anonsurf
					
					sudo git clone https://github.com/Und3rf10w/kali-anonsurf && cd kali-anonsurf && bash installer.sh
					
					cd ..
					
					sudo git clone https://github.com/ProtonVPN/linux-cli && cd linux-cli && sudo apt install -y openvpn dialog python3-pip python3-setuptools && sudo python3 -m pip install protonvpn-cli
					cd ..
					cd ..
					Title
					echo "[*] Silahkan Masukan (username OpenVPN/IKEv2) dan (password OpenVPN/IKEv2) akun ProtonVPN Anda:"
					protonvpn init
					;;
				2 )	echo
					echo "[*] Silahkan Masukan (username OpenVPN/IKEv2) dan (password OpenVPN/IKEv2) akun ProtonVPN Anda:"
					protonvpn init
					;;
				3 )	echo
					echo "[*] Masukan (Email) dan (Password) akun NordVPN Anda: " email1
					echo "[*] Masukan (Password) akun NordVPN Anda: " pass1
					nordvpn login --username $email1 -- password $pass1
					;;
				4 )	bash shadowguard.sh
					;;
				* )	echo
					echo "$RRPLY Bukan Pilihan Yang Valid"
					sleep 1
					bash Paket/0.sh
		esac
	echo
	echo
	echo "#####################"
	echo "[1] Kembali Ke menu"
	echo "[2] Jalnkan Kembali"
	echo "[3] Keluar"
	echo "#####################"
	echo
	read -p "Pilih SalahSatu Opsi: " opc2
		case $opc2 in
				1 )	bash shadowguard.sh
					;;
				2 )	bash Paket/0.sh
					;;
				3 )	exit && clear
					;;
				* )	echo
					echo "$RRPLY Bukan Pilihan Yang Valid"
		esac
fi
