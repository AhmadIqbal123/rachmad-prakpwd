<?php
include_once("koneksi.php");
$result = mysqli_query($con, "SELECT * FROM mahasiswa");
?>
<html>

<head>
    <title>Halaman Utama</title>
</head>

<body>
    <a href="tambah.php">Tambah Data</a><br><br>
    <table width="80%" border="1">
        <tr>
            <th>NIM</th>
            <th>Nama</th>
            <th>Gender</th>
            <th>Alamat</th>
            <th>Tanggal Lahir</th>
            <th>Fakultas</th>
            <th>Update</th>

        </tr>
        <?php
        while ($user_data = mysqli_fetch_array($result)) {
            echo "<tr>";
            echo "<td>" . $user_data["NIM"] . "</td>";
            echo "<td>" . $user_data['Nama'] . "</td>";
            echo "<td>" . $user_data['JKEL'] . "</td>";
            echo "<td>" . $user_data['Alamat'] . "</td>";
            echo "<td>" . $user_data['TGLLHR'] . "</td>";
            echo "<td>" . $user_data['fakultas'] . "</td>";
            echo "<td> <a href='edit.php?NIM=$user_data[NIM]'>Edit</a> | <a href='delete.php?NIM=$user_data[NIM]'>Delete</a></td></tr>";
        }
        ?>
    </table>
</body>

</html>