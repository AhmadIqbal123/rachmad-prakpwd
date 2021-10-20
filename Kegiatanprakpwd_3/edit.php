<?php
include_once("koneksi.php");

if (isset($_POST['update'])) {
    $nim = $_POST['NIM'];
    $nama = $_POST['Nama'];
    $jkel = $_POST['JKEL'];
    $alamat = $_POST['Alamat'];
    $tgllhr = $_POST['TGLLHR'];
    $fakul = $_POST['fakultas'];

    $result = mysqli_query($con, "UPDATE mahasiswa SET Nama = '$nama',JKEL='$jkel',Alamat='$alamat',TGLLHR='$tgllhr', fakultas='$fakul WHERE NIM='$nim'");

    header("Location:index.php");
}
?>

<?php
$nim = $_GET['NIM'];
$result = mysqli_query($con, "SELECT * FROM mahasiswa WHERE NIM='$nim'");

while ($user_data = mysqli_fetch_array($result)) {
    $nim = $user_data['NIM'];
    $nama = $user_data['Nama'];
    $jkel = $user_data['JKEL'];
    $alamat = $user_data['Alamat'];
    $tgllhr = $user_data['TGLLHR'];
    $fakul = $user_data['fakultas'];
}
?>

<html>

<head>
    <title>Edit Data Mahasiswa</title>
</head>

<body>
    <a href="index.php">Home</a><br><br>

    <form action="edit.php" name="update_mahasiswa" method="post">
        <table border="0">
            <tr>
                <td>Nama</td>
                <td><input type="text" name="Nama" value="<?php echo $nama; ?>"></td>
            </tr>
            <tr>
                <td>Gender</td>
                <td><input type="text" name="JKEL" value="<?php echo $jkel; ?>"></td>
            </tr>
            <tr>
                <td>Alamat</td>
                <td><input type="text" name="Alamat" value="<?php echo $alamat; ?>"></td>
            </tr>
            <tr>
                <td>Tanggal Lahir</td>
                <td><input type="text" name="TGLLHR" value="<?php echo $tgllhr; ?>"></td>
            </tr>
            <tr>
                <td>Fakultas</td>
                <td><input type="text" name="fakultas" value="<?php echo $fakul; ?>"></td>
            </tr>
            <tr>
                <td><input type="hidden" name="nim" value="<?php echo $_GET['NIM']; ?>"></td>
                <td><input type="submit" name="update" value="Update"></td>
            </tr>
        </table>
    </form>
</body>

</html>