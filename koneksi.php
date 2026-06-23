<?php
/**
 * Class Database - Koneksi Database dengan OOP Sederhana
 */
class Database {
    private $host = 'localhost';
    private $username = 'root';
    private $password = '';
    private $database = 'db_uas_pbo_trpl1b_faizaailanifadhila';
    private $koneksi;

    public function __construct() {
        try {
            $dsn = "mysql:host={$this->host};dbname={$this->database};charset=utf8mb4";
            $this->koneksi = new PDO($dsn, $this->username, $this->password);
            $this->koneksi->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            die("Koneksi gagal: " . $e->getMessage());
        }
    }

    public function getKoneksi() {
        return $this->koneksi;
    }

    public function query($sql, $params = []) {
        $stmt = $this->koneksi->prepare($sql);
        $stmt->execute($params);
        return $stmt;
    }

    public function getAll($sql, $params = []) {
        return $this->query($sql, $params)->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getOne($sql, $params = []) {
        return $this->query($sql, $params)->fetch(PDO::FETCH_ASSOC);
    }
}

// Contoh penggunaan:
// $db = new Database();
// $data = $db->getAll("SELECT * FROM tabel_karyawan");
?>