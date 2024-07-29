#!/bin/bash

source Paket/0.sh

Title
echo "[5] Ekstrak/Hapus Meta Data"
echo
echo "========================================="
echo "1º Ekstrak Metadata pertama dari file""  |"
echo "-----------------------------------------"
echo "2º Hapus Metadat file""     |"
echo "-----------------------------------------"
echo "3º Hapus Metadata dari direktory""  |"
echo "========================================="
echo
read -p "Pilih SalahSatu Opsi: " opc1
	case $opc1 in
			1 )	read -p "[*] Tulis nama file beserta pathnya (Contoh: /home/kali/Desktop/Test.png): " meta
				echo
                primera=`echo $meta | head -c 1`
				coma="'"
				if [ $primera = $coma ]
					then
						meta=`echo $meta | cut -c 2- | rev | cut -c2- | rev`
				fi
				sudo exiftool -v -s -G $meta
				;;
			2 )	read -p "[*] Tulis nama file beserta pathnya (Contoh: /home/kali/Desktop/Test.png): " meta
				echo
                primera=`echo $meta | head -c 1`
				coma="'"
				if [ $primera = $coma ]
					then
						meta=`echo $meta | cut -c 2- | rev | cut -c2- | rev`
				fi
				sudo exiftool -r -overwrite_original -all= $meta
				;;
			3 )	read -p "[*] Tulis nama file beserta pathnya (Contoh: /home/kali/Desktop/test/): " meta
				echo
                primera=`echo $meta | head -c 1`
				coma="'"
				if [ $primera = $coma ]
					then
						meta=`echo $meta | cut -c 2- | rev | cut -c2- | rev`
				fi
				sudo exiftool -r -overwrite_original -all= $meta
				;;
			* )	echo
				echo "$RRPLY Bukan Pilihan Yang Valid"
				sleep 1
				bash Paket/5.sh
	esac
echo
echo
echo "#####################"
echo "[1] Kembali Ke menu"
echo "[2] Jalankan Kembali"
echo "[3] Keluar"
echo "#####################"
echo
read -p "Pilih SalahSatu Opsi: " opc2
	case $opc2 in
			1 )	bash shadowguard.sh
				;;
			2 )	bash Paket/5.sh
				;;
			3 )	exit && clear
				;;
			* )	echo
				echo "$RRPLY Bukan Pilihan Yang Valid"
	esac
