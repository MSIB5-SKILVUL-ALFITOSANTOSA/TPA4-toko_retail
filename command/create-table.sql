
-- Tabel Kategori
CREATE TABLE kategori (
    id_kategori INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(255) NOT NULL
);

-- Tabel Barang
update TABLE barang (
    id_barang INT AUTO_INCREMENT PRIMARY KEY,
    id_penjual INT,
    id_kategori INT,
    nama VARCHAR(255) NOT NULL,
    varian VARCHAR(255),
    qty INT,
    harga DECIMAL(10, 2) NOT NULL,
    image VARCHAR(255),
    FOREIGN KEY (id_penjual) REFERENCES penjual(id_penjual),
    FOREIGN KEY (id_kategori) REFERENCES kategoti(id_kategori)
);

-- Tabel Kategori_Barang
CREATE TABLE kategori_barang (
    id_kategori_barang INT AUTO_INCREMENT PRIMARY KEY,
    id_barang INT,
    id_kategori INT,
    FOREIGN KEY (id_barang) REFERENCES barang(id_barang),
    FOREIGN KEY (id_kategori) REFERENCES kategori(id_kategori)
);

-- Tabel Penjual
CREATE TABLE penjual (
    id_penjual INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    alamat VARCHAR(255) NOT NULL,
    image_profile VARCHAR(255)
);

-- Tabel Pembeli
CREATE TABLE pembeli (
    id_pembeli INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    alamat VARCHAR(255) NOT NULL,
    image_profile VARCHAR(255)
);

-- Tabel Pembelian
CREATE TABLE pembelian (
    id_pembelian INT AUTO_INCREMENT PRIMARY KEY,
    id_barang INT,
    id_pembeli INT,
    qty INT,
    tgl_pembelian DATE,
    total_harga DECIMAL(10, 2),
    FOREIGN KEY (id_barang) REFERENCES barang(id_barang),
    FOREIGN KEY (id_pembeli) REFERENCES pembeli(id_pembeli)
);

-- Tabel Keranjang
CREATE TABLE keranjang (
    id_keranjang INT AUTO_INCREMENT PRIMARY KEY,
    id_barang INT,
    qty INT,
    total_harga DECIMAL(10, 2),
    FOREIGN KEY (id_barang) REFERENCES barang(id_barang)
);