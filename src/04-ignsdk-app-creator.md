##Memaketkan Aplikasi
Aplikasi berbasis IGN SDK dapat didistribusikan dengan berbagai cara. Cara yang paling mudah dan
ringkas adalah dengan memaketkannya dalam bentuk **.deb** atau **.rpm**. Skrip yang akan digunakan
untuk memaketkan aplikasi adalah `ignsdk-app-builder`.
1. Buka Terminal.
2. Jalankan perintah dengan format “ignsdk-app-builder -p [namapaket]”. [namapaket]
adalah nama paket aplikasi yang sudah Anda buat sebelumnya dan ada di direktori
`/home/igos/IGNSDK-APP/`. Contohnya adalah `aplikasi-keren`.
~~~
$ ignsdk-app-builder -p aplikasi-keren
~~~
3. Sistem pemaketan akan memulai proses.
4. Jika sudah selesai, maka paket berbentuk .rpm dengan nama `aplikasikeren.ign-1.0-ign9.noarch.rpm`
bisa ditemukan di direktori
`/home/igos/rpmbuild/RPMS/noarch/`. Coba pasang paket tersebut.
~~~
$ sudo yum install ~/rpmbuild/RPMS/noarch/aplikasi-keren.ign-1.0-ign9.noarch.rpm
~~~
5. Setelah paket terpasang, akan muncul item menu bernama ***Aplikasi Keren***. Selanjutnya,
aplikasi tersebut bisa dijalankan melalui menu.
<end>
