# Order Management API

Sistem Order Management API menggunakan PHP dan MySQL.

## Fitur

- Login dan autentikasi menggunakan PHP session
- CRUD Produk (admin)
- Pemesanan oleh customer
- Riwayat pesanan customer
- Validasi input dan error handling

## Stack & Tools

- PHP Native
- MySQL
- Apache (XAMPP)
- Postman

## Struktur Direktori

order-management-api/
|-- config/
|-- controllers/
|-- middleware/
|-- models/
|-- routes/
|-- utils/
|-- index.php
|-- .htaccess
|-- order_management.sql

## Cara Menjalankan

1. **Ekstrak ke folder htdocs**  
   Contoh: C:/xampp/htdocs/order-management-api

2. **Import database**
   - Buka phpMyAdmin
   - Buat database: order_management
   - Import file order_management.sql

3. **Jalankan XAMPP (Apache & MySQL)**

5. **Akses endpoint melalui Postman**

## Endpoint API

### Autentikasi
| Method | Endpoint      | Body                        | Keterangan        |

| POST   | /login        | {username, password}        | Login user        |
| POST   | /logout       | -                           | Logout session    |

### Produk (Admin)
| Method | Endpoint        | Body                                | Keterangan       |

| GET    | /products       | -                                   | List produk      |
| POST   | /products       | {name, price, stock}                | Tambah produk    |
| PUT    | /products?id=1  | {name, price, stock}                | Update produk    |
| DELETE | /products?id=1  | -                                   | Hapus produk     |

### Order (Customer)
| Method | Endpoint            | Body                              | Keterangan       |

| POST   | /orders             | [{product_id, quantity}]          | Buat pesanan     |
| GET    | /orders/history     | -                                 | Riwayat pesanan  |

## Role-based Akses

- Admin:
  - Akses semua endpoint produk
- Customer:
  - Hanya bisa melihat produk, membuat pesanan, dan melihat riwayatnya

## Contoh Request Postman

### Login:
JSON
POST /login
{
  "username": "adminpertama",
  "password": "admin1"
}

### Tambah Produk:
JSON
POST /products
{
  "name": "Mouse Kabel Logitech",
  "price": 120000,
  "stock": 20
}

### Buat Pesanan:
JSON
POST /orders
[
  {
    "product_id": 1,
    "quantity": 2
  }
]

## Lisensi

Proyek ini bebas digunakan untuk belajar dan pengembangan lebih lanjut.