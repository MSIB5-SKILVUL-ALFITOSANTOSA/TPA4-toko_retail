
-- Mengisi data ke tabel Kategori
INSERT INTO kategori (nama) VALUES
    ('Elektronik'),
    ('Pakaian'),
    ('Makanan');

-- Mengisi data ke tabel Pembeli
INSERT INTO pembeli (username, email, password, alamat, image_profile) VALUES
    ('pembeli1', 'pembeli1@example.com', 'password1', 'Alamat Pembeli 1', 'profile1.jpg'),
    ('pembeli2', 'pembeli2@example.com', 'password2', 'Alamat Pembeli 2', 'profile2.jpg'),
    ('pembeli3', 'pembeli3@example.com', 'password3', 'Alamat Pembeli 3', 'profile3.jpg'),
    ('pembeli4', 'pembeli4@example.com', 'password4', 'Alamat Pembeli 4', 'profile4.jpg'),
    ('pembeli5', 'pembeli5@example.com', 'password5', 'Alamat Pembeli 5', 'profile5.jpg');


-- Mengisi data ke tabel Penjual
INSERT INTO penjual (username, email, password, alamat, image_profile) VALUES
    ('penjual1', 'penjual1@example.com', 'password1', 'Alamat Penjual 1', 'profile1.jpg'),
    ('penjual2', 'penjual2@example.com', 'password2', 'Alamat Penjual 2', 'profile2.jpg'),
    ('penjual3', 'penjual3@example.com', 'password3', 'Alamat Penjual 3', 'profile3.jpg'),
    ('penjual4', 'penjual4@example.com', 'password4', 'Alamat Penjual 4', 'profile4.jpg'),
    ('penjual5', 'penjual5@example.com', 'password5', 'Alamat Penjual 5', 'profile5.jpg');



-- Mengisi data ke tabel Barang
INSERT INTO barang (id_penjual, nama, varian, qty, harga, image) VALUES
    (1, 'Laptop', 'Model A', 10, 1000.00, 'laptop1.jpg'),
    (1, 'Smartphone', 'Model B', 20, 500.00, 'smartphone1.jpg'),
    (2, 'T-Shirt', 'Large', 30, 20.00, 'tshirt1.jpg'),
    (2, 'Jeans', 'Medium', 15, 40.00, 'jeans1.jpg'),
    (1, 'Tablet', 'Model X', 5, 300.00, 'tablet1.jpg'),
    (3, 'Mouse', 'Wireless', 50, 15.00, 'mouse1.jpg'),
    (4, 'Keyboard', 'USB', 40, 12.00, 'keyboard1.jpg'),
    (5, 'Camera', 'Model C', 8, 200.00, 'camera1.jpg'),
    (2, 'Sweater', 'Medium', 25, 25.00, 'sweater1.jpg'),
    (4, 'Bag', 'Backpack', 12, 35.00, 'bag1.jpg'),
    (3, 'Monitor', 'Full HD', 7, 150.00, 'monitor1.jpg'),
    (1, 'Printer', 'Laser', 10, 70.00, 'printer1.jpg'),
    (5, 'Earphones', 'In-Ear', 30, 10.00, 'earphones1.jpg'),
    (3, 'TV', '55 inch', 6, 400.00, 'tv1.jpg'),
    (4, 'Gaming Mouse', 'RGB', 20, 30.00, 'gamingmouse1.jpg');

    -- mengisi tabel pembelian
INSERT INTO pembelian (id_barang, id_pembeli, qty, tgl_pembelian, total_harga) VALUES
    (1, 1, 2, '2023-10-15', 2000.00),
    (2, 1, 3, '2023-10-15', 1500.00),
    (3, 2, 5, '2023-10-16', 100.00),
    (4, 2, 2, '2023-10-16', 80.00),
    (5, 3, 1, '2023-10-17', 60.00),
    (6, 3, 4, '2023-10-17', 60.00),
    (7, 4, 2, '2023-10-18', 24.00),
    (8, 4, 3, '2023-10-18', 600.00),
    (9, 5, 2, '2023-10-19', 50.00),
    (10, 5, 1, '2023-10-19', 35.00);


-- Mengisi data ke tabel Kategori_Barang
INSERT INTO kategori_barang (id_barang, id_kategori) VALUES
    (1, 1),
    (2, 1),
    (3, 2),
    (4, 2);