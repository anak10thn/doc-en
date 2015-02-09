##Instalasi IGNSDK
Paket IGN SDK sudah dimasukkan secara default di IGOS Nusantara D9.1. Jika belum terpasang di
sistem Anda, ikuti langkah-langkah berikut untuk memasang IGN SDK.

1. Buka aplikasi Terminal
2. Pasang paket bernama `ignsdk`. Paket ini berisi binari peluncur aplikasi yang digunakan untuk
menjalankan aplikasi berbasis IGN SDK.
~~~
$ sudo yum install ignsdk
~~~
3. (Opsional) Pasang paket bernama `ignsdk-devtools`. Paket ini berisi alat bantu untuk membuat
dan memaketkan aplikasi berbasis IGN SDK.
~~~
$ sudo yum install ignsdk-devtools
~~~
4. Testing
~~~
ignsdk -p /usr/share/ign-sdk/test/calculator.ign
~~~
<end>
