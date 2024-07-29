#!/bin/bash

source Paket/0.sh

Title
echo "[7] Tombol Pemutus(Mematian Jika Darurat)"
echo
echo "          Fungsi:"
echo "================================"
echo "[*] Deskripsi Perangkat""     |"
echo "[*] Hapus Secara Permanenen"" |"
echo "    Data RAM""                |"
echo "[*] Mematikan Komputer""      |"
echo "================================"
echo
echo
read -p "Jalankan? (Ya/Tidak): " opc1
echo
	if [ $opc1 = Ya ]
		then
			echo
			read -p "[*] Masukkan Antarmuka Jaringan yang Anda gunakan (Misal: eth0):  " interface
			echo
			sudo anonsurf stop >/dev/null
			sleep 1
			protonvpn disconnect >/dev/null
			sleep 1
			nordvpn disconnect >/dev/null
			sleep 1
			sudo service tor stop >/dev/null
			sudo ifconfig $interface down >/dev/null
			sudo macchanger -p $interface >/dev/null
			sudo ifconfig $interface up >/dev/null
			echo "==========================="
			echo "  Mendeskripsi Perangkat"
			echo "==========================="
			echo "------->""                  |"
    		sleep 1
			echo "------------>""             |"
			sleep 1
			echo "------------------->""      |"
			sleep 1
			echo "------------------------->""|"
            echo "==========================="
			sudo ifconfig $interface -promisc >/dev/null
			sudo systemctl restart NetworkManager.service >/dev/null
			echo
            echo "==========================="
			echo "Menghapus Data Dari RAM"
			echo "   Secara Permanen"
			echo "==========================="
			echo "------->""                  |"
			sleep 1
			echo "------------>""             |"
			sleep 1
			echo "------------------->""      |"
			sleep 1
			echo "------------------------->""|"
			echo "==========================="
            pandora bomb
            echo "======================="
			echo "    Matikan Perangkat"
			echo "======================="
			echo "--->""                  |"
			sleep 1
			echo "-------->""             |"
			sleep 1
			echo "--------------->""      |"
			sleep 1
			echo "--------------------->""|"
			echo "======================="
            shutdown now
		else
			bash shadowguard.sh
	fi