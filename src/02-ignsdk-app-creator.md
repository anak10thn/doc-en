##Membuat Aplikasi di IGNSDK
Skrip IGN SDK Devtools membantu Anda untuk mulai membuat aplikasi berbasis IGN SDK dengan
lebih mudah. Selain itu, skrip ini dapat memaketkan aplikasi buatan Anda kedalam bentuk berkas **.deb**
(Debian, Ubuntu, LinuxMint, dll) serta **.rpm** (IGOS Nusantara, openSUSE). Sebelum menjalankan
panduan ini, pastikan bahwa paket “ignsdk-devtools” sudah terpasang.

1. Buka terminal
2. Jalankan perintah dengan format `ignsdk-app-creator -p [namapaket]`. **[namapaket]** diisi
dengan nama paket aplikasi yang akan Anda buat, hanya boleh berisi huruf kecil, angka, dan
simbol – ***(dash)***. Pastikan nama paket yang akan Anda buat tidak sama dengan nama paket lain
yang sudah ada di repositori (misalnya gimp, apache, mysql, dsb.). Sebagai contoh, nama
paketnya adalah `aplikasi-keren`.
~~~
$ ignsdk-app-creator -p aplikasi-keren
~~~
3. Setelahnya akan muncul isian nama aplikasi. Isikan dengan nama aplikasi yang akan Anda buat.
Misalnya “Aplikasi Keren”.
~~~
Application name: Aplikasi Keren
~~~
4. Pada isian kategori, isikan nomor sesuai dengan kategori aplikasi Anda. Misalnya “Aplikasi
Keren” adalah aplikasi pemutar musik, isikan dengan nomor 2 (Audio).
~~~
Choose one: 2
~~~
5. Selanjutnya, akan muncul isian versi paket. Isikan dengan 1.0.
~~~
Version [1.0]: 1.0
~~~
6. Untuk isian rilis paket, sesuaikan dengan kode rilis distro yang Anda pakai atau yang akan
menjadi target instalasi. Untuk paket yang ditujukan bagi IGOS Nusantara D9.x, isi dengan
“ign9”.
~~~
Release [1]: ign9
~~~
7. Pada isian lisensi, isikan dengan kode sesuai lisensi aplikasi Anda. Sebaiknya Anda memahami
dengan jelas isi lisensi yang Anda pilih. *Default*-nya adalah MIT.
~~~
License [MIT/BSD/GPL2/GPL3/etc, default=MIT]: MIT
~~~
8. Isikan URL website aplikasi Anda (tanpa awalan http://) pada isian URL
~~~
URL [example.com]: ignsdk.web.id
~~~
9. Isikan deskripsi singkat aplikasi Anda pada isian Description.
~~~
Description: Aplikasi keren untuk memutar musik
~~~
10. Skrip akan membuat aplikasi baru di direktori **/home/user/IGNSDK-APP/aplikasi-keren.ign**.
Anda bisa menjalankan aplikasi tersebut dengan perintah:
~~~
$ ignsdk -p ~/IGNSDK-APP/aplikasi-keren.ign
~~~
<end>
