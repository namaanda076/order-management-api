# Order Management API

Sistem API untuk manajemen pesanan menggunakan PHP Native dan MySQL.

## Fitur

- Login dan autentikasi menggunakan PHP session
- CRUD produk (admin)
- Customer dapat membuat pesanan
- Stok produk otomatis berkurang saat pesanan dibuat
- Riwayat pesanan per pengguna
- Validasi dan penanganan error

## Stack & Tools

- PHP Native
- MySQL
- Apache (XAMPP)
- Postman

## Struktur Folder

```
order-management-api/
├── config/
├── controllers/
├── middleware/
├── models/
├── routes/
├── utils/
├── index.php
├── .htaccess
├── order_management.sql
```

## Cara Menjalankan

1. Ekstrak proyek ke folder XAMPP:
   `C:/xampp/htdocs/order-management-api`

2. Import database:
   - Buka phpMyAdmin
   - Buat database `order_management`
   - Import file `order_management.sql`

3. Tambah user admin (opsional):

```sql
INSERT INTO users (username, password, role)
VALUES (
  'admin',
  '$2y$10$WwEqdp32KE.8ANFPRHQGoelx8m0pjXwb8K4nAP08hWAF/ARwqs81e', -- password: yourpassword
  'admin'
);
```

4. Jalankan Apache dan MySQL melalui XAMPP.

5. Akses dan uji API melalui Postman.

## Endpoint API

### Autentikasi

| Method | Endpoint  | Keterangan     |
|--------|-----------|----------------|
| POST   | /login    | Login user     |
| POST   | /logout   | Logout session |

### Produk (Admin)

| Method | Endpoint         | Keterangan        |
|--------|------------------|-------------------|
| GET    | /products        | Lihat produk      |
| POST   | /products        | Tambah produk     |
| PUT    | /products?id=ID  | Update produk     |
| DELETE | /products?id=ID  | Hapus produk      |

### Pesanan (Customer)

| Method | Endpoint            | Keterangan         |
|--------|---------------------|--------------------|
| POST   | /orders             | Buat pesanan       |
| GET    | /orders/history     | Lihat riwayat pesanan |

## Contoh Request JSON

### Login
```json
{
  "username": "adminpertama",
  "password": "admin1"
}
```

### Tambah Produk
```json
{
  "name": "Mouse",
  "price": 100000,
  "stock": 5
}
```

### Buat Pesanan
```json
[
  {
    "product_id": 1,
    "quantity": 2
  }
]
```

## Catatan

- Session PHP digunakan untuk autentikasi.
- Endpoint dibatasi berdasarkan peran: admin/customer.
- File `.htaccess` dibutuhkan untuk routing jika menggunakan Apache.

## Lisensi

Proyek ini bebas digunakan untuk keperluan belajar dan pengembangan.
