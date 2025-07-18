-- Active: 1749958885483@@127.0.0.1@5432
CREATE TABLE IF NOT EXISTS obat (
  id SERIAL PRIMARY KEY,
  nama VARCHAR(100),
  harga INTEGER,
  gambar VARCHAR(255),
  deskripsi TEXT,
  manfaat TEXT
);

CREATE TABLE IF NOT EXISTS artikel (
  id SERIAL PRIMARY KEY,
  judul VARCHAR(255),
  isi TEXT,
  gambar VARCHAR(255),
  tanggal DATE DEFAULT CURRENT_DATE
);

CREATE TABLE IF NOT EXISTS mitra (
  id SERIAL PRIMARY KEY,
  nama VARCHAR(100),
  email VARCHAR(100),
  apotek VARCHAR(100),
  kota VARCHAR(100),
  pesan TEXT,
  status VARCHAR(50) DEFAULT 'menunggu',
  tanggal TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE IF NOT EXISTS pesan_kontak (
  id SERIAL PRIMARY KEY,
  nama VARCHAR(100),
  email VARCHAR(100),
  telepon VARCHAR(20),
  pesan TEXT,
  tanggal TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- SQL: Tambahkan ke `init.sql`
CREATE TABLE IF NOT EXISTS mitra (
  id SERIAL PRIMARY KEY,
  nama VARCHAR(100),
  email VARCHAR(100),
  apotek VARCHAR(100),
  kota VARCHAR(100),
  pesan TEXT,
  status VARCHAR(20) DEFAULT 'pending',
  tanggal TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);