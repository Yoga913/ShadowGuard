#!/bin/bash

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
echo "                                   ================================"
echo "                                  [0] KonfigurasiKan  Alat""       |"
echo "                                  [1] Informasi Tim  ""            |"
echo "                                  [2] Enkripsi/Lindungi Komputer"" |"
echo "                                  [3] Ganti Kartu MAC NETWORK   "" |"
echo "                                  [4] Buat Identitas Palsu      "" |"
echo "                                  [5] Ekstrak/Hapus Metadata    "" |"
echo "                                  [6] Hapus File (Permanen)   ""   |"
echo "                                  [7] Tombol Pemutus          ""   |"
echo "                                       (Mematikan Jika Darurat)""  |"
echo "                                  [99]-------> Keluar"" <----------|"
echo "                                   ================================"
echo
read -p "[*] Pilih Slah Satu Opsi: " opc1
	case $opc1 in
			0 )	bash Paket/0.sh
				;;
			1 )	bash Paket/1.sh
				;;
			2 )	bash Paket/2.sh
				;;
			3 )	bash Paket/3.sh
				;;
			4 )	bash Paket/4.sh
				;;
			5 )	bash Paket/5.sh
				;;
			6 )	bash Paket/6.sh
				;;
			7 )	bash Paket/7.sh
				;;
			99 ) exit
				;;
			* )	echo
				echo -e"$RRPLY bukan pilihan yang valid"
				bash shadowguard.sh
	esac







