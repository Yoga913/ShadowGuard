#!/bin/bash

source Paket/0.sh

Title
echo "[6] Hapus FIle Secara Permanenen"
echo
read -p "[*] Tulis nama file beserta pathnya atau letakkan file di Terminal (Contoh: /home/kali/Desktop/Test.png):  " file
echo
echo "[#] Proses ini mungkin memakan waktu lama tergantung pada file"
echo
echo
primera=`echo $file | head -c 1`
coma="'"
if [ $primera = $coma ]
	then
		file=`echo $file | cut -c 2- | rev | cut -c2- | rev`
fi
sudo srm -vz -r $file
echo
echo
echo "#####################"
echo "[1] Kembali Ke Menu"
echo "[2] Jalankan kembali"
echo "[3] Keluar"
echo "#####################"
echo
read -p "Pilih SalahSatu Opsi: " opc1
	case $opc1 in
			1 )	bash shadowguard.sh
				;;
			2 )	bash Paket/6.sh
				;;
			3 )	exit && clear
				;;
			* )	echo
				echo "$RRPLY Bukan Pilihan Yang Valid"
	esac
