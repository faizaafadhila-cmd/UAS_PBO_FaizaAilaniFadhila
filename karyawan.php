<?php
/**
 * Abstract Class Karyawan
 * Blueprint untuk semua jenis karyawan
 */
abstract class Karyawan {
    // Properti dengan akses protected (terenkapsulasi)
    protected $id_karyawan;
    protected $nama_karyawan;
    protected $departemen;
    protected $hariKerjaMasuk;
    protected $gajiDasarPerHari;

    /**
     * Constructor untuk inisialisasi properti
     * @param int $id_karyawan
     * @param string $nama_karyawan
     * @param string $departemen
     * @param string $hariKerjaMasuk (format: YYYY-MM-DD)
     * @param float $gajiDasarPerHari
     */
    public function __construct($id_karyawan, $nama_karyawan, $departemen, $hariKerjaMasuk, $gajiDasarPerHari) {
        $this->id_karyawan = $id_karyawan;
        $this->nama_karyawan = $nama_karyawan;
        $this->departemen = $departemen;
        $this->hariKerjaMasuk = $hariKerjaMasuk;
        $this->gajiDasarPerHari = $gajiDasarPerHari;
    }

    /**
     * Method abstrak - wajib diimplementasikan oleh class anak
     * Menghitung gaji bersih berdasarkan jenis karyawan
     * @return float
     */
    abstract public function hitungGajiBersih();

    /**
     * Method abstrak - wajib diimplementasikan oleh class anak
     * Menampilkan profil lengkap karyawan
     * @return string
     */
    abstract public function tampilkanProfilKaryawan();

    // ========== GETTER & SETTER (Encapsulation) ==========

    /**
     * Getter untuk id_karyawan
     * @return int
     */
    public function getIdKaryawan() {
        return $this->id_karyawan;
    }

    /**
     * Setter untuk id_karyawan
     * @param int $id_karyawan
     */
    public function setIdKaryawan($id_karyawan) {
        $this->id_karyawan = $id_karyawan;
    }

    /**
     * Getter untuk nama_karyawan
     * @return string
     */
    public function getNamaKaryawan() {
        return $this->nama_karyawan;
    }

    /**
     * Setter untuk nama_karyawan
     * @param string $nama_karyawan
     */
    public function setNamaKaryawan($nama_karyawan) {
        $this->nama_karyawan = $nama_karyawan;
    }

    /**
     * Getter untuk departemen
     * @return string
     */
    public function getDepartemen() {
        return $this->departemen;
    }

    /**
     * Setter untuk departemen
     * @param string $departemen
     */
    public function setDepartemen($departemen) {
        $this->departemen = $departemen;
    }

    /**
     * Getter untuk hariKerjaMasuk
     * @return string
     */
    public function getHariKerjaMasuk() {
        return $this->hariKerjaMasuk;
    }

    /**
     * Setter untuk hariKerjaMasuk
     * @param string $hariKerjaMasuk
     */
    public function setHariKerjaMasuk($hariKerjaMasuk) {
        $this->hariKerjaMasuk = $hariKerjaMasuk;
    }

    /**
     * Getter untuk gajiDasarPerHari
     * @return float
     */
    public function getGajiDasarPerHari() {
        return $this->gajiDasarPerHari;
    }

    /**
     * Setter untuk gajiDasarPerHari
     * @param float $gajiDasarPerHari
     */
    public function setGajiDasarPerHari($gajiDasarPerHari) {
        $this->gajiDasarPerHari = $gajiDasarPerHari;
    }

    /**
     * Method untuk menghitung masa kerja (dalam tahun)
     * @return int
     */
    protected function hitungMasaKerja() {
        $tanggalMasuk = new DateTime($this->hariKerjaMasuk);
        $tanggalSekarang = new DateTime();
        $selisih = $tanggalMasuk->diff($tanggalSekarang);
        return $selisih->y; // Mengembalikan selisih tahun
    }

    /**
     * Method untuk menghitung total hari kerja (asumsi 20 hari kerja per bulan)
     * @return int
     */
    protected function hitungTotalHariKerja() {
        $tanggalMasuk = new DateTime($this->hariKerjaMasuk);
        $tanggalSekarang = new DateTime();
        $selisih = $tanggalMasuk->diff($tanggalSekarang);
        $totalBulan = ($selisih->y * 12) + $selisih->m;
        return $totalBulan * 20; // 20 hari kerja per bulan
    }

    /**
     * Method untuk menghitung total gaji kotor
     * @return float
     */
    protected function hitungGajiKotor() {
        $totalHariKerja = $this->hitungTotalHariKerja();
        return $totalHariKerja * $this->gajiDasarPerHari;
    }
}