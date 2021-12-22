<?php
$url = "http://localhost:8080/kegiatan10pwd/getdatamhs.php";
$client = curl_init($url);
curl_setopt($client, CURLOPT_RETURNTRANSFER, 1);
$response = curl_exec($client);
$result = json_decode($response);
foreach ($result as $r) {
    echo "<p>";
    echo "NIM : " . $r->NIM . "<br />";
    echo "Nama : " . $r->Nama . "<br />";
    echo "jenis kel : " . $r->JKEL . "<br />";
    echo "Alamat : " . $r->Alamat . "<br />";
    echo "Tgl Lahir : " . $r->TGLLHR . "<br />";
    echo "</p>";
}
