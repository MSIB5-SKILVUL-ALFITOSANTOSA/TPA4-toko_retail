-- Active: 1699328799079@@localhost@3306@toko_retail_online
-- Query untuk melihat kategori barang yang paling banyak barangnya
-- CASE 1
-- 1 pelanggan membeli 3 barang yang berbeda
-- Query untuk menampilkan pembelian 3 barang yang berbeda oleh pelanggan tertentu (pembeli dengan id_pembeli=1)
SELECT p.id_pembeli, b.nama AS nama_barang, pb.qty
FROM pembelian pb
JOIN pembeli p ON pb.id_pembeli = p.id_pembeli
JOIN barang b ON pb.id_barang = b.id_barang
WHERE pb.id_pembeli = 1
GROUP BY p.id_pembeli, b.nama, pb.qty
HAVING COUNT(*) = 1
LIMIT 3;


-- CASE 2
  -- Melihat 3 produk yang paling sering dibeli oleh pelanggan
-- Query untuk menampilkan 3 produk yang paling sering dibeli oleh pelanggan tertentu (pembeli dengan id_pembeli=1)
SELECT p.id_pembeli, b.nama AS nama_barang, COUNT(pb.id_pembelian) AS jumlah_pembelian
FROM pembelian pb
JOIN pembeli p ON pb.id_pembeli = p.id_pembeli
JOIN barang b ON pb.id_barang = b.id_barang
WHERE pb.id_pembeli = 1
GROUP BY p.id_pembeli, b.nama
ORDER BY jumlah_pembelian DESC
LIMIT 3;


-- case 3
-- Melihat Kategori barang yang paling banyak barangnya.-- Query untuk menampilkan kategori barang yang memiliki barang paling banyak
SELECT kb.id_kategori, k.nama AS nama_kategori, COUNT(kb.id_barang) AS jumlah_barang
FROM kategori_barang kb
JOIN kategori k ON kb.id_kategori = k.id_kategori
GROUP BY kb.id_kategori, k.nama
ORDER BY jumlah_barang DESC
LIMIT 1;


-- CASE 4
-- Mencari rata-rata transaksi pelanggan dalam 1 bulan terakhir

-- Query untuk menghitung rata-rata transaksi yang dilakukan oleh pelanggan dalam 1 bulan terakhir
SELECT pb.id_pembeli, AVG(pb.total_harga) AS rata_rata_transaksi
FROM pembelian pb
WHERE pb.tgl_pembelian >= DATE_SUB(NOW(), INTERVAL 1 MONTH)
GROUP BY pb.id_pembeli;



