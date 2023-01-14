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
## Formula yang digunakan:
```
Certainty Factor (CF) merupakan salah satu teknik yang digunakan untuk mengatasi ketidakpastian dalam pengambilan keputusan. Certainty Factor (CF) dapat terjadi dengan berbagai kondisi. 
Diantara kondisi yang terjadi adalah terdapat beberapa antensenden (dalam rule yang berbeda) dengan satu konsekuen yang sama. 
Dalam kasus ini, kita harus mengagregasikan nilai CF keseluruhan dari setiap kondisi yang ada. Berikut formula yang digunakan:

CFc (CF1,CF2) = CF1 + CF2 (1- CF1)                            ; jika CF1 dan CF2 keduanya posistif

CFc (CF1,CF2) = CF1 + CF2 (1+ CF1)                            ; jika CF1 dan CF2 keduanya negative

CFc (CF1,CF2) = {CF1 + CF2} / (1-min{| CF1|,| CF2|})          ; jika salah satu negatif
```
