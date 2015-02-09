##Contoh Program
###2.1 Spawn API
**Javascript :**
~~~javascript
/*Import Module Sys dari IGNSDK runtime*/
var sys = ign.sys();

$(document).ready(function(){
  $('#exec').click(function(){
    /*Ambil isian perintah
    dari text input id (#) "cmd"*/
    var cmd = $('#cmd').val();
    /*perintah di kirim ke runtime
    IGNSDK untuk di eksekusi*/
    sys.exec(cmd);
    sys.out.connect(function(out){
      /*stdout dari perintah ditulis
      kedalam element id=out*/
      $('#out').prepend(out+"<br>");
    })
  });

  $('#kill').click(function(){
    /*Hentikan proses*/
    sys.kill();
  });
});
~~~
**HTML :**
~~~html
<body>
  <input type="text" value="ping google.com" id="cmd">
  <input type="submit" value="exec" id="exec">
  <input type="submit" value="kill" id="kill"><br>
  <div id="out"></div>
</body>
~~~

###2.2 CRUD
**Javascript :**
~~~javascript
//Import Module yang dibutuhkan
var fs = ign.filesystem();
var sql = ign.sql();
//dama file database
var dbFile = "coba.db";

$(document).ready(function(){
	//reference http://goo.gl/E0obMa
  //Cek apakah file database sudah di buat
	if(fs.info(dbFile).exists){
    //jika database sudah di buat, aplikasi akan langsung menjalankan fungsi load()
		sql.driver("sqlite", dbFile);
		load();
	}
	else{
    //jalankan fungsi setup DB jika database belum dibuat
		setupDb();
	}
});

function setupDb(){
  //connect ke database
	sql.driver("sqlite", dbFile);
  //buat table user dengan field id,nama, dan umur
	sql.query("create table user(id INTEGER PRIMARY KEY AUTOINCREMENT,nama varchar(10), umur smallint)");
}

function add(){
	var nama = $("#nama").val();
	var umur = $("#umur").val();
  //query untuk menambah data ke database
	var add = sql.query("insert into user (nama,umur) values ('"+nama+"',"+umur+")");
	alert("input berhasil status "+add.status);
}

function load(){
  //query untuk mengambil data
	var loadData = sql.query("select * from user");
	var html="";
  /*
    struktur data yang di hasilkan oleh query
    loadData:{ content:[....], status: true}
  */
	loadData.content.forEach(function(data){
		html += "Nama : " + data.nama + "<br>";
		html += "Umur : " + data.umur + "<br>";
		html += "<a href='#' onclick='del("+data.id+")'>Delete</a><hr>";
	});
	$("#out").html(html);
}

function del(id){
  //query untuk menghapus data
	var del = sql.query("delete from user where id="+id);
}
~~~
**HTML :**
~~~html
<input type="text" placeholder="Nama" id="nama"><br>
<input type="text" placeholder="Umur" id="umur"><br>
<input type="submit" value="Tambah Data" onclick="add()">
<div id="out"></div>
~~~
<end>
