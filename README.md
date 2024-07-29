# 🥷ShadowGuard 🔐

<p align="justify"><i>Sebuah alat Yang Berfokus pada <strong>perlindungan</strong> sehingga jejak apa pun yang tertinggal di Internet atau Jaringan Lokal adalah Palsu dan Tidak Dapat Dilacak <strong>[SAYA TIDAK BERTANGGUNG JAWAB PENYALAHGUNAAN ALAT INI] </strong></i> </p>
<!--
<p align="center"><img width="120px" alt="Version" src="https://img.shields.io/badge/version-2.0-yellow.svg?style=for-the-badge"/></p>
-->


## Fitur 💡:

:ballot_box_with_check: **Perubahan IP Publik** (ProtonVPN, NordVPN)

:ballot_box_with_check: **AnonSurf** (Tor Node, Tor Proxy, Tor DNS, Menonaktifkan layanan IPv6)

:ballot_box_with_check: **Perubahan MAC** (Acak)

:ballot_box_with_check: **Perubahan DNS** (Terenkripsi, tidak dicatat, dan cepat)

:ballot_box_with_check: **Redirect Terminal melalui Tor** (Semua lalu lintas keluar dan masuk)

:ballot_box_with_check: **Mengubah Mac di Kartu Jaringan Eksternal** (Acak)

:ballot_box_with_check: **Buat Identitas Palsu/Palsu** (Nama Depan, Nama Belakang, Email, Tanggal Lahir, KTP, Telepon Rumah, Telepon Seluler, Kota, Jamsostek, Kartu Kredit, Masa Berlaku, CVV, Nomor Rekening ( AKAN BERLAKU ))

:ballot_box_with_check: **Ekstrak atau Hapus Metadata dari file**

:ballot_box_with_check: **Menghapus file secara permanen** (38 pass dieksekusi pada file, sehingga tidak dapat dipulihkan sepenuhnya oleh perangkat lunak pemulihan file canggih yang dihapus)

:ballot_box_with_check: **Kill Switch (Emergency Shutdown)** (Mematikan Perangkat tanpa meninggalkan jejak, hal ini dilakukan dengan Mendekripsi perangkat (Menghapus VPN, MAC, Proxy, DNS, dll), lalu menghapus data dari secara permanen RAM (Agar tidak dapat dipulihkan) dan matikan Peralatan)

## Instal Alat 🛠:

**1)Perbarui dan upgrade system:**
```bash
 sudo apt update && apt -y full-upgrade
```
**2)Paket git untuk mengkloning repository:** 
```bash
sudo apt-get install git
```

**3)Cloning repository ini:** 
```bash
git clone https://github.com/Yoga913/ShadowGuard.git
```
**4) Masuk pada halaman direktory:**
```bash
 cd ShadowGuard
```
**5) beri izin membaca,menulis,dan mengeksekusi:** 
```bash
chmod 777 shadowguard.sh
```
**6) mulai eksekusi file:**
```bash
bash shadowguard.sh
```

**Catatan:**

**1)** anda menandai opsi 0 dan kemudian 1 untuk menginstal dependensi (Hanya tandai pertama kali)

**2)** Setelah selesai menginstal dependensi,anda akan Ditanyai kredensial ProtonVPN Anda, lalu masukan.

### Syarat Dan Ketentuan 🎲

**[1]** Untuk mengubah IP Publik anda harus memiliki akun ProtonVPN.

**[2]** Agar opsi 3 berfungsi dengan benar, disarankan agar Kartu Jaringan berada dalam Mode Monitor sebelum digunakan.

**[3]** Jika terjadi kesalahan pada VPN (IP Publik), pilih opsi 0 (Alat Konfigurasi) dan kemudian opsi 2 (Konfigurasi Akun ProtonVPN), setelah itu, masukkan kembali kredensial yang diberikannya kepada Anda situs web. 
(Jangan masukkan nama atau email akun anda tetapi yang diberikan ProtonVPN kepada anda saat mendaftar)

**[4]** Setiap kali mesin dihidupkan ulang atau dimatikan, tindakan keamanan opsi 2 dan 3 akan dihapus, jadi disarankan untuk Mengenkripsi peralatan saat dihidupkan dan Mendekripsi sebelum mematikannya menghindari meninggalkan sidik jari atau menghasilkan kesalahan.

**[5]** Di Bagian 2 Opsi 1 di menu tarik-turun, jika kita memilih Opsi Nord VPN + Tor Proxies, ketika dijalankan akan memberi kita Eror berikut masuk: 
```bash
setting times of '/etc/resolv.conf': Operation not permitted
/etc/init.d/anonsurf: line 167: /etc/resolv.conf: Operation not permitted
```
ini karena Nord VPN memblokir Bagian DNS sehingga tidak dapat diubah, sehingga semua perlindungan Tor akan berfungsi kecuali DNS. (Kesalahan yang sama)

**[6]** Jika kita memilih opsi Anonsurf + Vpn kecepatannya bisa sangat sangat lambat.

**[7]** Jika Anda telah mengunduh versi yang lebih lama, saya menyarankan Anda untuk menghapusnya dan menginstal ulang alat (+persyaratan) untuk mengatasi kesalahan dan mendapatkan peningkatan, yang menjadikan alat ini jauh lebih baik daripada versi sebelumnya.


**Demikian Alat Ini Dibuat Dengan TUjuan Pendidikan,Keamanana,Dan Penelitian Dan Untuk Slebihnya Saya Tidak Bertanggung Jawab!!!**
