#!/bin/bash

source Paket/0.sh

Title
echo "[3] Ganti Kartu Mac NERWORK"
echo
echo "================================"
echo "[1] Ganti Kartu Mac NERWORK"" |"
echo "[2] Kartu Jaringan Asli MAC""|"
echo "[3] Kembali Ke Menu""             |"
echo "================================"
echo
read -p "Pilih SalahSatu Opsi: " opc1
	case $opc1 in
			1 )	echo
				sudo airmon-ng
				echo
				read -p "[*] Tulis antarmuka Kartu Jaringan dalam Mode Monitor (Contoh: wlan0mon atau wlan0): " interface2
				echo
				echo "+++++++++++++++++++++++++++++++++"
				echo "MAC Asli: " `cat /sys/class/net/$interface2/address`
				echo "+++++++++++++++++++++++++++++++++"
				sudo ifconfig $interface2 promisc >/dev/null
				sudo ifconfig $interface2 down >/dev/null
				sleep 2
				sudo macchanger -a $interface2 >/dev/null
				sudo ifconfig $interface2 up >/dev/null
				echo
				echo "==========================="
				echo "Mengubah Mac $interface2"
				echo "==========================="
				echo "------->""                  |"
				sleep 1
				echo "------------>""             |"
				sleep 1
				echo "------------------->""      |"
				sleep 1
				echo "------------------------->""|"
				echo "==========================="
				echo
				echo "++++++++++++++++++++++++++++++"
				echo "MAC Baru: " `cat /sys/class/net/$interface2/address`
				echo "++++++++++++++++++++++++++++++"
				;;
			2 )	echo
				sudo airmon-ng
				echo
				read -p "[*] Tulis antarmuka Kartu Jaringan dalam Mode Monitor (Contoh: wlan0mon atau wlan0): " interface2
				echo
				echo "+++++++++++++++++++++++++++++++"
				echo "MAC Saat Ini: " `cat /sys/class/net/$interface2/address`
				echo "+++++++++++++++++++++++++++++++"
				sudo ifconfig $interface2 down >/dev/null
				sleep 2.5
				sudo ifconfig $interface2 promisc >/dev/null
				sudo macchanger -p $interface2 >/dev/null
				sudo ifconfig $interface2 up >/dev/null
				sudo ifconfig $interface2 -promisc >/dev/null
				echo
				echo "==========================="
				echo " Mengatur MAC Asli"
				echo "==========================="
				echo "------->""                  |"
				sleep 1
				echo "------------>""             |"
				sleep 1
				echo "------------------->""      |"
				sleep 1
				echo "------------------------->""|"
				echo "==========================="
				echo
				echo "+++++++++++++++++++++++++++++++++"
				echo "MAC Asli: " `cat /sys/class/net/$interface2/address`
				echo "+++++++++++++++++++++++++++++++++"
				;;
			3 )	bash shadowguard.sh
				;;
			* )	echo
				echo "$RRPLY Bukan Pilihan Yang Valid"
				sleep 1
				bash Paket/3.sh
	esac
echo
echo
echo "#####################"
echo "[1] Kembali Ke Menu"
echo "[2] Jalankan Kembali"
echo "[3] Kembali"
echo "#####################"
echo
read -p "Pilih SalahSatu Opsi: " opc2
	case $opc2 in
			1 )	bash shadowguard.sh
				;;
			2 )	bash Paket/3.sh
				;;
			3 )	exit && clear
				;;
			* )	echo
				echo "$RRPLY Bukan Pilihan Yang Valid"
	esac

