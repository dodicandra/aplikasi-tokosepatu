<?php
	$host = "localhost";
	$user = "root";
	$pass = "";
	$db	  = "db_sepatu";
	
	$kon   = mysql_connect($host, $user, $pass);
	$kondb = mysql_select_db($db, $kon);
	
	/*if($kon){
		echo "Terkoneksi ke MySQL";
		if($kondb){
			echo "<br>$db bisa diakses";
		}else{
			echo "<br>$db tidak ada";
		}
	}else{
		echo "Gagal Koneksi";
	}*/
?>