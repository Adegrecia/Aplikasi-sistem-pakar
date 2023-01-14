## Configure

Gunakan XAMPP versi <b>PHP 7.4.9(*)</b> & <b>10.4.14-MariaDB</b> : setting nama database anda di file config.php 
```<?php
$server = "localhost";
$username = "root";
$password = "";
$database = "kerusakan_hp";

mysql_connect($server,$username,$password) or die("Koneksi gagal");
mysql_select_db($database) or die("Maaf, Database tidak bisa dibuka");
?>
```
Login dengan /kerusakan_hp/formlogin 
Username : <b>admin</b> 
Password : <b>admin</b>
```
