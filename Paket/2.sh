#!/bin/bash

source Paket/0.sh

Title
echo "[2] Enkripsi/Lindungi Komputer"
echo
echo "================================"
echo "[1] Enkripsi Komputer""           |"
echo "[2] Dekripsi Komputer""        |"
echo "[3] Kembali Ke Menu""             |"
echo "================================"
echo
read -p "Pilih SalahSatu Opsi: " opc1
	case $opc1 in
			1 )	echo
				echo "Proxys Tor= Tor node + Proxy, DNS"
				echo
				echo "================================"
				echo "[1] Proton VPN""                 |"
				echo "[2] Proton VPN + Proxys Tor""    |"
				echo "[3] Nord VPN""                   |"
				echo "[4] Nord VPN + Proxys Tor""      |"
				echo "[5] Anonsurf (Proxys Tor)""      |"
				echo "================================"
				echo
				read -p "Pilih SalahSatu Opsi: " opc1
					case $opc1 in
							1 )	echo
								echo
								read -p "[*] Masukkan Antarmuka Jaringan yang Anda gunakan (Misal: eth0):  " interface
								echo
								sudo ifconfig $interface promisc >/dev/null
								sudo ifconfig $interface down >/dev/null
								sleep 1
								sudo macchanger -a $interface >/dev/null
								sudo ifconfig $interface up >/dev/null
								echo "======================="
								echo "     Mengganti Mac"
								echo "======================="
								echo "--->""                  |"
								sleep 1
								echo "-------->""             |"
								sleep 1
								echo "--------------->""      |"
								sleep 1
								echo "--------------------->""|"
								echo "======================="
								echo
								echo "======================="
								echo " Mengganti IP Publik"
								echo "======================="
								echo "--->""                  |"
								sleep 1
								echo "-------->""             |"
								sleep 1
								echo "--------------->""      |"
								sleep 1
								echo "--------------------->""|"
								echo "======================="
								echo
								protonvpn c
								Title
								echo "[#] Melakuan Konfigurasi Akhir"
								echo
								sudo echo nameserver 1.1.1.1 > /etc/resolv.conf
								sudo /etc/init.d/networking restart >/dev/null
								echo "======================="
								echo "    Mengganti DNS"
								echo "======================="
								echo "--->""                  |"
								sleep 1
								echo "-------->""             |"
								sleep 1
								echo "--------------->""      |"
								sleep 1
								echo "--------------------->""|"
								echo "======================="
								sleep 1
								echo
								sudo service tor start >/dev/null
								echo "==========================="
								echo "Memuat Ulang Terminal"
								echo "     Melalui Tor"
								echo "==========================="
								echo "------->""                  |"
								sleep 1
								echo "------------>""             |"
								sleep 1
								echo "------------------->""      |"
								sleep 1
								echo "------------------------->""|"
								echo "==========================="
								sleep 2
								Title
								echo "[#] Data baru diberikan untuk melindungi Identitas Anda"
								echo
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ Info IP + VPN Baru: "
								protonvpn s
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ MAC Baru: `cat /sys/class/net/$interface/address`"
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ DNS Baru: `cat /etc/resolv.conf`"
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ Terminal Dialihkan Oleh Tor:`timeout 1s service tor status | awk 'FNR<= 3{print}' | awk 'FNR >= 3{print}'`"
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ Proxys Tor + DNS (Anonsurf): Tidak"
								echo "+++++++++++++++++++++++++++++++++++++"
								;;
							2 )	echo
								echo
								read -p "[*]  Masukkan Antarmuka Jaringan yang Anda gunakan (Misal: eth0):" interface
								echo
								sudo ifconfig $interface promisc >/dev/null
								sudo ifconfig $interface down >/dev/null
								sleep 1
								sudo macchanger -a $interface >/dev/null
								sudo ifconfig $interface up >/dev/null
								echo "======================="
								echo "     Mengganti Mac"
								echo "======================="
								echo "--->""                  |"
								sleep 1
								echo "-------->""             |"
								sleep 1
								echo "--------------->""      |"
								sleep 1
								echo "--------------------->""|"
								echo "======================="
								echo
								echo "======================="
								echo " Mengganti IP Publik"
								echo "======================="
								echo "--->""                  |"
								sleep 1
								echo "-------->""             |"
								sleep 1
								echo "--------------->""      |"
								sleep 1
								echo "--------------------->""|"
								echo "======================="
								echo
								protonvpn c
								Title
								echo "[#] Melakukan konfigurasi Akhir"
								echo
								sudo echo nameserver 1.1.1.1 > /etc/resolv.conf
								sudo /etc/init.d/networking restart >/dev/null
								echo "======================="
								echo "    Mengganti DNS"
								echo "======================="
								echo "--->""                  |"
								sleep 1
								echo "-------->""             |"
								sleep 1
								echo "--------------->""      |"
								sleep 1
								echo "--------------------->""|"
								echo "======================="
								sleep 1
								echo
								sudo service tor start >/dev/null
								echo "==========================="
								echo "Memuat Ulang Terminal"
								echo "     Melalui Tor"
								echo "==========================="
								echo "------->""                  |"
								sleep 1
								echo "------------>""             |"
								sleep 1
								echo "------------------->""      |"
								sleep 1
								echo "------------------------->""|"
								echo "==========================="
								sleep 1
								echo
								sudo anonsurf start >/dev/null
								echo "====================================="
								echo "Mengaktifkan Tor Node/Proxys Tor, DNS y"
								echo "  Menonaktifkan Service IPv6"
								echo "====================================="
								echo "-------->""                           |"
								sleep 1
								echo "---------------->""                   |"
								sleep 1
								echo "------------------------->""          |"
								sleep 1
								echo "----------------------------------->""|"
								echo "====================================="
								sleep 2
								Title
								echo "[#] Data baru diberikan untuk melindungi Identitas Anda"
								echo
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ Info IP + VPN Baru: "
								protonvpn s
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ IP Node Tor Asli: `curl -s http:/ifconfig.me`"
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ Mac Baru: `cat /sys/class/net/$interface/address`"
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ DNS Baru: `cat /etc/resolv.conf`"
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ Terminal dialihkan oleh Tor:`timeout 1s service tor status | awk 'FNR<= 3{print}' | awk 'FNR >= 3{print}'`"
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ Proxys Tor + DNS (Anonsurf): Ya"
								echo "+++++++++++++++++++++++++++++++++++++"
								;;
							3 )	echo
								echo
								read -p "[*] Masukkan Antarmuka Jaringan yang Anda gunakan (Misal: eth0) " interface
								echo
								nordvpn countries
								echo
								read -p "[*] Salin dan tempel salah satu Negara berikut di bawah ini untuk terhubung: " country
								echo
								sudo ifconfig $interface promisc >/dev/null
								sudo ifconfig $interface down >/dev/null
								sleep 1
								sudo macchanger -a $interface >/dev/null
								sudo ifconfig $interface up >/dev/null
								echo "======================="
								echo "     Mengganti Mac"
								echo "======================="
								echo "--->""                  |"
								sleep 1
								echo "-------->""             |"
								sleep 1
								echo "--------------->""      |"
								sleep 1
								echo "--------------------->""|"
								echo "======================="
								echo
								echo "======================="
								echo " Mengganti IP Publica"
								echo "======================="
								echo "--->""                  |"
								sleep 1
								echo "-------->""             |"
								sleep 1
								echo "--------------->""      |"
								sleep 1
								echo "--------------------->""|"
								echo "======================="
								echo
								nordvpn connect $country
								Title
								echo "[#] Melakukan Konfigurasi Akhir"
								echo
								#NordVpn no permite cambiar el DNS, pone el suyo propio
								#sudo echo nameserver 1.1.1.1 > /etc/resolv.conf
								#sudo /etc/init.d/networking restart >/dev/null
								echo "======================="
								echo "    Mengganti DNS"
								echo "======================="
								echo "--->""                  |"
								sleep 1
								echo "-------->""             |"
								sleep 1
								echo "--------------->""      |"
								sleep 1
								echo "--------------------->""|"
								echo "======================="
								sleep 1
								echo
								sudo service tor start >/dev/null
								echo "==========================="
								echo "Memuat Ulang Terminal"
								echo "     Melalui Tor"
								echo "==========================="
								echo "------->""                  |"
								sleep 1
								echo "------------>""             |"
								sleep 1
								echo "------------------->""      |"
								sleep 1
								echo "------------------------->""|"
								echo "==========================="
								sleep 2
								Title
								echo "[#] Data baru diberikan untuk melindungi Identitas Anda"
								echo
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ Info IP + VPN Baru: "
								nordvpn status
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ Mac Baru: `cat /sys/class/net/$interface/address`"
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ DNS Baru: `cat /etc/resolv.conf`"
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ Terminal dialihkan oleh Tor:`timeout 1s service tor status | awk 'FNR<= 3{print}' | awk 'FNR >= 3{print}'`"
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ Proxys Tor + DNS (Anonsurf): No"
								echo "+++++++++++++++++++++++++++++++++++++"
								;;
							4 )	echo
								echo
								read -p "[*] Masukkan Antarmuka Jaringan yang Anda gunakan (Misal: eth0) " interface
								echo
								nordvpn countries
								echo
								read -p "[*] Salin dan tempel salah satu Negara berikut di bawah ini untuk terhubung: " country
								echo
								sudo ifconfig $interface promisc >/dev/null
								sudo ifconfig $interface down >/dev/null
								sleep 1
								sudo macchanger -a $interface >/dev/null
								sudo ifconfig $interface up >/dev/null
								echo "======================="
								echo "     Mengganti Mac"
								echo "======================="
								echo "--->""                  |"
								sleep 1
								echo "-------->""             |"
								sleep 1
								echo "--------------->""      |"
								sleep 1
								echo "--------------------->""|"
								echo "======================="
								echo
								echo "======================="
								echo " Mengganti IP Publica"
								echo "======================="
								echo "--->""                  |"
								sleep 1
								echo "-------->""             |"
								sleep 1
								echo "--------------->""      |"
								sleep 1
								echo "--------------------->""|"
								echo "======================="
								echo
								nordvpn connect $country
								sleep 4
								Title
								echo "[#] Melakukan Konfigurasi Akhir"
								echo
								#NordVpn no permite cambiar el DNS, pone el suyo propio
								#sudo echo nameserver 1.1.1.1 > /etc/resolv.conf
								#sudo /etc/init.d/networking restart >/dev/null
								echo "======================="
								echo "    Mengganti DNS"
								echo "======================="
								echo "--->""                  |"
								sleep 1
								echo "-------->""             |"
								sleep 1
								echo "--------------->""      |"
								sleep 1
								echo "--------------------->""|"
								echo "======================="
								echo
								sudo service tor start >/dev/null
								echo "==========================="
								echo "Memuat Ulang Terminal"
								echo "     Melalui Tor"
								echo "==========================="
								echo "------->""                  |"
								sleep 1
								echo "------------>""             |"
								sleep 1
								echo "------------------->""      |"
								sleep 1
								echo "------------------------->""|"
								echo "==========================="
								sleep 1
								echo
								sudo anonsurf start >/dev/null
								echo "====================================="
								echo "  Mengaktifkan Tor Node/Proxys Tor, y"
								echo "  Menonaktifkan Service IPv6"
								echo "====================================="
								echo "-------->""                           |"
								sleep 1
								echo "---------------->""                   |"
								sleep 1
								echo "------------------------->""          |"
								sleep 1
								echo "----------------------------------->""|"
								echo "====================================="
								sleep 2
								Title
								echo "[#] Data baru diberikan untuk melindungi Identitas Anda"
								echo
								echo "++++++++++++++++++++++++++++++++++++++"
								echo "☢ Info IP + VPN Baru: "
								nordvpn status
								echo "++++++++++++++++++++++++++++++++++++++"
								echo "☢ IP Node Tor Asli: `curl -s http:/ifconfig.me`"
								echo "++++++++++++++++++++++++++++++++++++++"
								echo "☢ Mac Baru: `cat /sys/class/net/$interface/address`"
								echo "++++++++++++++++++++++++++++++++++++++"
								echo "☢ DNS Baru: `cat /etc/resolv.conf`"
								echo "++++++++++++++++++++++++++++++++++++++"
								echo "☢ Terminal dialihkan oleh Tor:`timeout 1s service tor status | awk 'FNR<= 3{print}' | awk 'FNR >= 3{print}'`"
								echo "++++++++++++++++++++++++++++++++++++++"
								echo "☢ Proxys Tor + Tor node (Anonsurf): Si"
								echo "++++++++++++++++++++++++++++++++++++++"
								;;
							5 )	echo
								echo
								read -p "[*] Masukkan Antarmuka Jaringan yang Anda gunakan (Misal: eth0) " interface
								echo
								sudo ifconfig $interface promisc >/dev/null
								sudo ifconfig $interface down >/dev/null
								sleep 1
								sudo macchanger -a $interface >/dev/null
								sudo ifconfig $interface up >/dev/null
								echo "======================="
								echo "     Mengganti Mac"
								echo "======================="
								echo "--->""                  |"
								sleep 1
								echo "-------->""             |"
								sleep 1
								echo "--------------->""      |"
								sleep 1
								echo "--------------------->""|"
								echo "======================="
								echo
								sudo echo nameserver 1.1.1.1 > /etc/resolv.conf
								sudo /etc/init.d/networking restart >/dev/null
								echo "======================="
								echo "    Mengganti DNS"
								echo "======================="
								echo "--->""                  |"
								sleep 1
								echo "-------->""             |"
								sleep 1
								echo "--------------->""      |"
								sleep 1
								echo "--------------------->""|"
								echo "======================="
								sleep 1
								Title
								echo "[#] Melakukan Konfigurasi Akhir"
								echo
								sudo service tor start >/dev/null
								echo "==========================="
								echo "Memuat Ulang Terminal"
								echo "     Melalui Tor"
								echo "==========================="
								echo "------->""                  |"
								sleep 1
								echo "------------>""             |"
								sleep 1
								echo "------------------->""      |"
								sleep 1
								echo "------------------------->""|"
								echo "==========================="
								sleep 1
								echo
								sudo anonsurf start >/dev/null
								echo "====================================="
								echo "Mengaktifkan Tor Node/Proxys Tor, DNS y"
								echo "  Menonaktifkan Service IPv6"
								echo "====================================="
								echo "-------->""                           |"
								sleep 1
								echo "---------------->""                   |"
								sleep 1
								echo "------------------------->""          |"
								sleep 1
								echo "----------------------------------->""|"
								echo "====================================="
								sleep 2
								Title
								echo "[#] Data baru diberikan untuk melindungi Identitas Anda"
								echo
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ Info IP + VPN Baru: "
								protonvpn s
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ IP Node Tor Asli: `curl -s http:/ifconfig.me`"
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ Mac Baru: `cat /sys/class/net/$interface/address`"
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ DNS Baru: `cat /etc/resolv.conf`"
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ Terminal dialihkan oleh Tor:`timeout 1s service tor status | awk 'FNR<= 3{print}' | awk 'FNR >= 3{print}'`"
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ Proxys Tor + DNS (Anonsurf): Ya"
								echo "+++++++++++++++++++++++++++++++++++++"
								;;
							* )	echo
								echo "$RRPLY Bukan Pilihan Yang Valid"
								sleep 1
								bash Paket/2.sh
					esac
				;;
			2 )	echo
				read -p "[*] Masukkan Antarmuka Jaringan yang Anda gunakan (Misal: eth0) " interface
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
				echo "  Desencriptando Equipo"
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
				;;
			3 )	bash shadowguard.sh
				;;
			* )	echo
				echo "$RRPLY Bukan Pilihan Yang Valid"
				sleep 1
				bash Paket/2.sh
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
			2 )	bash Paket/2.sh
				;;
			3 )	exit && clear
				;;
			* )	echo
				echo "$RRPLY Bukan Pilihan Yang Valid"
	esac
