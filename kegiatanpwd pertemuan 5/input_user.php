<?php
require 'functions.php';
$id_user = $_POST['id_user'];
$nama = $_POST['nama_lengkap'];
$email = $_POST['email'];
$pass = md5($_POST['password']);
$sql = "INSERT INTO user(id_user, password, nama_lengkap, email) VALUES ('$id_user', '$pass', '$nama','$email')";
$query = mysqli_query($conn, $sql);
mysqli_close($conn);
header('location:tampil_user.php');
