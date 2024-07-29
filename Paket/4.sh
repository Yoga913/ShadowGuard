#!/bin/bash

source Paket/0.sh

Title
echo "[4] Buat Identitas Palsu"
echo
echo "=================================================================="
echo "[1] Nama Depan, Nama Belakang, Email, Tanggal Lahir""              |"
echo "[2] DNI, Telepon Rumah, Telepon Seluler, Kota, Jamsostek""         |"
echo "[3] Kartu Kredit, Masa Berlaku, CVV, Nomor Rekening (IBAN)""       |"
echo "[4] -------------------------> Semua"" <--------------------------- |"
echo "[5] Kembali Ke Menu""                                              |"
echo "=================================================================="
echo
read -p "Pilih SalahSatu Opsi: " opc1
	case $opc1 in
			1 )	echo
				read -p "[*] Masukkan jumlah Identitas Palsu yang ingin Anda hasilkan (Contoh: 3): " number
				echo
				sudo python Paket/FakeData.py -n $number
				;;
			2 )	echo
				read -p "[*] Masukkan jumlah Identitas Palsu yang ingin Anda hasilkan (Contoh: 3): " number
				echo
				sudo python Paket/FakeData.py -n $number -e
				;;
			3 )	echo
				read -p "[*] Masukkan jumlah Identitas Palsu yang ingin Anda hasilkan (Contoh: 3): " number
				echo
				sudo python Paket/FakeData.py -n $number -b
				;;
			4 )	echo
				read -p "[*] Masukkan jumlah Identitas Palsu yang ingin Anda hasilkan (Contoh: 3): " number
				echo
				sudo python Paket/FakeData.py -n $number && sudo python Paket/FakeData.py -n $number -e && sudo python Paket/FakeData.py -n $number -b
				;;
			5 )	bash shadowguard.sh
				;;
			* )	echo
				echo "$RRPLY Bukan Pilihan Yang Valid"
				sleep 1
				bash Paket/4.sh
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
			2 )	bash Paket/4.sh
				;;
			3 )	exit && clear
				;;
			* )	echo
				echo "$RRPLY Bukan Pilihan Yang Valid"
	esac
