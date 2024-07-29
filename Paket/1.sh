#!/bin/bash

source Paket/0.sh

Title
echo "[1] Informasi Tim"
echo
echo "==============================================================================================================================="
echo "☢ IP Publik Anda Salah: " `curl -s http:/ifconfig.me`
echo "-------------------------------------------------------------------------------------------------------------------------------"
echo "☢ IP Lokal Anda Salah: " `hostname -I`
echo "-------------------------------------------------------------------------------------------------------------------------------"
echo "☢ DNS Anda: " `cat /etc/resolv.conf`
echo "-------------------------------------------------------------------------------------------------------------------------------"
echo "☢ MAC Anda Adalah: " `sudo ifconfig -a | awk '/^[a-z]/ { iface=$1; } /inet addr:/ { next; } /^[[:space:]]*ether/ { print iface,$2; }'`
echo "-------------------------------------------------------------------------------------------------------------------------------"
echo "☢ Sistem Operasi Anda: " `uname -a`
echo "-------------------------------------------------------------------------------------------------------------------------------"
echo "☢ Service Tor: `timeout 1s service tor status | awk 'FNR<= 3{print}' | awk 'FNR >= 3{print}'`"
echo "-------------------------------------------------------------------------------------------------------------------------------"
echo "☢ Informasi VPN: "
protonvpn s
echo
nordvpn status
echo "-------------------------------------------------------------------------------------------------------------------------------"
echo "☢ Informasi Kartu Jaringan: "
sudo airmon-ng
echo
sudo iwconfig
echo "==============================================================================================================================="
echo
echo
read -p "[*] Apakah Anda ingin melakukan tes kecepatan yang akurat? (Y/T): " opc1
echo
	if [ $opc1 = Y ]
		then
			speedtest --simple
		else
			bash shadowguard.sh
	fi
echo
echo
echo "#####################"
echo "[1] Kembali Ke Kenu"
echo "[2] Jalankan Kembali"
echo "[3] Keluar"
echo "#####################"
echo
read -p "Pilih salah satu Opsi: " opc1
	case $opc1 in
			1 )	bash shadowguard.sh
				;;
			2 )	bash Paket/1.sh
				;;
			3 )	exit && clear
				;;
			* )	echo
				echo "$RRPLY Bukan Pilihan Yang Valid"
	esac
