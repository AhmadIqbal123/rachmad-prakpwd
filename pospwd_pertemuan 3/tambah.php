<html>

<head>
    <title>Tambah data mahasiswa</title>
</head>

<body>
    <a href="index.php">Home</a>
    <br /><br />
    <form action="tambah.php" method="post" name="form1">
        <table width="25%" border="0">
            <tr>
                <td>Nim</td>
                <td><input type="text" name="NIM"></td>
            </tr>
            <tr>
                <td>Nama</td>
                <td><input type="text" name="Nama"></td>
            </tr>
            <tr>
                <td>Gender (L/P)</td>
                <td><input type="text" name="JKEL"></td>
            </tr>
            <tr>
                <td>Alamat</td>
                <td><input type="text" name="Alamat"></td>
            </tr>
            <tr>
                <td>Tanggal Lahir</td>
                <td><input type="text" name="TGLLHR"></td>
            </tr>
            <tr>
                <td>Fakultas</td>
                <td><input type="text" name="fakultas"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" name="Submit" value="Tambah"></td>
            </tr>
        </table>
    </form>
    <?php
    // Check If form submitted, insert form data into users table.
    if (isset($_POST['Submit'])) {
        $nim = $_POST['NIM'];
        $nama = $_POST['Nama'];
        $jkel = $_POST['JKEL'];
        $alamat = $_POST['Alamat'];
        $tgllhr = $_POST['TGLLHR'];
        $fakul = $_POST['fakultas'];
        // include database connection file
        include_once("koneksi.php");
        // Insert user data into table

        $result = mysqli_query($con, "INSERT INTO mahasiswa(NIM,Nama,JKEL,Alamat,TGLLHR,fakultas)
VALUES('$nim','$nama', '$jkel','$alamat','$tgllhr','$fakul')");
        // Show message when user added
        echo "Data berhasil disimpan. <a href='index.php'>View Users</a>";
    }
    ?>
</body>

</html>