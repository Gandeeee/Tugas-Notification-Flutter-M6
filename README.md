# Laporan Praktikum Pemrograman Perangkat Bergerak

Repositori ini berisi hasil pengerjaan tugas praktikum mata kuliah Aplikasi Perangkat Bergerak untuk pertemuan keenam yang berfokus pada implementasi PageView dan sistem navigasi tingkat lanjut dalam kerangka kerja Flutter.

---

## Identitas Mahasiswa

* **Nama Lengkap**: Kadek Gandhi Wahyu Jaya Suastika
* **NIM**: 1202230017
* **Kelas**: IT 06-01
* **Program Studi**: S1 Teknologi Informasi
* **Mata Kuliah**: Aplikasi Perangkat Bergerak

---

## Informasi Modul

* **Nomor Modul**: 06
* **Topik Utama**: PageView dan Navigation (BottomNavigationBar)
* **Status Proyek**: Integrasi Lanjutan Modul 05

---

## Materi yang Dipelajari

Pada praktikum kali ini, saya telah mempelajari dan mengimplementasikan beberapa konsep teknis berikut:

* **Implementasi PageView**: Mempelajari penggunaan widget PageView untuk menciptakan antarmuka yang dapat digeser (swipeable) secara horizontal maupun vertikal.
* **Sinkronisasi Navigasi**: Mengintegrasikan PageView dengan BottomNavigationBar menggunakan PageController, sehingga perpindahan halaman melalui geseran layar dan penekanan tombol navigasi bawah dapat berjalan secara selaras.
* **Manajemen Kontroler**: Penggunaan PageController untuk mengatur indeks halaman awal serta durasi dan kurva animasi saat terjadi perpindahan halaman melalui fungsi animateToPage.
* **Navigasi Antar Halaman (Navigator)**: Mengimplementasikan fungsi Navigator.push untuk menghubungkan halaman navigasi utama dengan modul fungsional yang telah dibuat pada pertemuan sebelumnya.

---

## Modifikasi yang Dilakukan

Berdasarkan instruksi tugas, saya telah melakukan beberapa modifikasi dan penyesuaian teknis pada basis kode:

1. **Integrasi Kode Modul 05**: Melakukan penggabungan kode sumber dari tugas Minggu 5 (User Interaction) ke dalam satu file utama (main.dart) pada proyek Minggu 6.
2. **Refactoring Class**: Mengubah nama class pada modul sebelumnya menjadi Modul5Page untuk menghindari konflik penamaan (class conflict) dengan class utama pada modul navigasi yang baru.
3. **Custom Navigation Logic**: Menambahkan widget InkWell pada halaman pertama PageView yang berfungsi sebagai pemicu navigasi menuju halaman interaksi data (Modul 5).
4. **Penyesuaian Visual**: Mengatur skema warna pada BottomNavigationBar dengan latar belakang biru dan warna aksen oranye pada item yang terpilih untuk memastikan tampilan sesuai dengan spesifikasi tutorial.

---

## Dokumentasi Hasil Eksekusi

Berikut adalah bukti visual dari aplikasi yang telah berhasil dijalankan pada perangkat:

<img width="1710" height="1112" alt="Screenshot 2026-04-15 at 20 17 46" src="https://github.com/user-attachments/assets/0a904210-e0e2-4a6a-9a04-bbd25c82edb8" />
<img width="1710" height="1112" alt="Screenshot 2026-04-15 at 20 18 03" src="https://github.com/user-attachments/assets/56ec7e36-98f2-45be-a283-41186ce2897c" />
<img width="1710" height="1112" alt="Screenshot 2026-04-15 at 20 18 06" src="https://github.com/user-attachments/assets/52e9ac42-ca94-49ae-8c3a-5bf29668fea1" />
<img width="1710" height="1112" alt="Screenshot 2026-04-15 at 20 18 13" src="https://github.com/user-attachments/assets/9012c0a7-6420-48c7-a6ff-9e52f94bc2bc" />
