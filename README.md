# Toko Kita - Flutter App

Aplikasi mobile toko sederhana berbasis Flutter yang terhubung ke REST API CodeIgniter 4 (`toko-api`).

## Fitur
- Registrasi akun member
- Login & Logout
- Melihat daftar produk
- Melihat detail produk
- Tambah produk baru
- Ubah data produk
- Hapus produk

## Teknologi
- **Frontend**: Flutter (Dart)
- **Backend**: CodeIgniter 4 REST API
- **Database**: MySQL

---

## Screenshots

### Halaman Login

| Referensi Modul | Hasil Aplikasi |
|:-:|:-:|
| ![Login Modul](screenshots/login_modul.png) | ![Login App](screenshots/login.png) |

---

### Halaman Registrasi

| Referensi Modul | Hasil Aplikasi |
|:-:|:-:|
| ![Registrasi Modul](screenshots/registrasi_modul.png) | ![Registrasi App](screenshots/registrasi.png) |

---

### Halaman List Produk

| Referensi Modul | Hasil Aplikasi |
|:-:|:-:|
| ![List Produk Modul](screenshots/list_produk_modul.png) | ![List Produk App](screenshots/list_produk.png) |

---

### Halaman Tambah Produk

| Referensi Modul | Hasil Aplikasi |
|:-:|:-:|
| ![Tambah Produk Modul](screenshots/tambah_produk_modul.png) | ![Tambah Produk App](screenshots/tambah_produk.png) |

---

### Halaman Detail Produk

| Referensi Modul | Hasil Aplikasi |
|:-:|:-:|
| ![Detail Produk Modul](screenshots/detail_produk_modul.png) | ![Detail Produk App](screenshots/detail_produk.png) |

**Dialog Konfirmasi Hapus:**

![Hapus Dialog](screenshots/hapus_dialog.png)

---

### Halaman Ubah Produk

| Referensi Modul | Hasil Aplikasi |
|:-:|:-:|
| ![Ubah Produk Modul](screenshots/ubah_produk_modul.png) | ![Ubah Produk App](screenshots/ubah_produk.png) |

---

## Struktur Project

```
tokokita/
├── lib/
│   ├── main.dart
│   ├── model/
│   │   ├── login.dart
│   │   ├── registrasi.dart
│   │   └── produk.dart
│   └── ui/
│       ├── login_page.dart
│       ├── registrasi_page.dart
│       ├── produk_page.dart
│       ├── produk_form.dart
│       └── produk_detail.dart
└── screenshots/
```

## Cara Menjalankan

```bash
cd tokokita
flutter run
```
