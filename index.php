<?php
require_once 'koneksi.php';

// Jika pakai Pilihan 1 (Sederhana)
$db = new Database();
$karyawan = $db->getAll("SELECT * FROM tabel_karyawan");

echo "<h2>Daftar Karyawan</h2>";
echo "<table border='1'>";
echo "<tr><th>ID</th><th>Nama</th><th>Departemen</th><th>Jenis</th></tr>";
foreach ($karyawan as $row) {
    echo "<tr>";
    echo "<td>{$row['id_karyawan']}</td>";
    echo "<td>{$row['nama_karyawan']}</td>";
    echo "<td>{$row['departement']}</td>";
    echo "<td>{$row['jenis_karyawan']}</td>";
    echo "</tr>";
}
echo "</table>";
?>