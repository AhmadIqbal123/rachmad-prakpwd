<?php 
include_once("koneksi.php");
$nim=$_GET['NIM'];
$result=mysqli_query($con, "DELETE FROM mahasiswa WHERE NIM='$nim'");
header("Location:index.php");
