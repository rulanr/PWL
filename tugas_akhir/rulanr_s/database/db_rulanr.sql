SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--

CREATE TABLE `akses_user` (
  `id_akses` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `ket` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `akses_user` (`id_akses`, `nama`, `ket`) VALUES
(1, 'admin', 'Administrator'),
(2, 'pimpinan', 'pimpinan perusahaan'),
(3, 'Pelanggan', 'Pelanggan');


CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `kd_customer` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `notelp` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `id_akses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `customers` (`id`, `kd_customer`, `username`, `password`, `nama`, `notelp`, `alamat`, `id_akses`) VALUES
(1, '', 't', 't', 'Ria', '087687678342', 'Blora', 4),
(3, 'tes', 'tes', '28b662d883b6d76fd96e4ddc5e9ba780', 'tes', '123123', 'tes', 4),
(4, 'CUS00001', 'tes2', '7a8a80e50f6ff558f552079cefe2715d', 'tes2', '123123', 'tes', 4);

--

CREATE TABLE `harga` (
  `id` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `harga` (`id`, `id_menu` `harga`) VALUES
(1, 1770000),
(2, 3500000),
(3, 5000000),
(4, 4500000),
(5, 2350000),
(6, 2000000),
(7, 2350000),
(8, 2990000),
(9, 3490000),
(10, 7990000),
(11, 5990000),
(12, 4998000),
(13, 2700000),
(14, 1990000),
(15, 1499000),
(16, 4000000),
(17, 3200000),
(18, 3980000),
(19, 2990000),
(20, 1200000),
(21, 1400000),
(22, 2800000),
(23, 2100000),
(24, 2300000),

-- --------------------------------------------------------

--
-- Table structure for table `kategori_menu`
--

CREATE TABLE `kategori_menu` (
  `id` int(11) NOT NULL,
  `ket` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `nama_menu` varchar(255) NOT NULL,
  `gambar` text DEFAULT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `nama_menu`, `gambar`, `ket`) VALUES
(1, 'Xiaomi Poco M3', '1.png', ),
(2, 'Vivo Y51', '2.jpeg',),
(3, 'Oppo Reno5', '3.jpeg',),
(4, 'Oppo Reno5 F', '131.jpeg',),
(5, 'Oppo A54', '1.png',),
(6, 'Realme Narzo 20', '6.jpeg',),
(7, 'Xiaomi Redmi Note 10', '7.jpeg',),
(8, 'Xiaomi Redmi Note 10S', '8.jpeg',),
(14, 'Samsung Galaxy A02S', '14.jpeg', '-'),
(13, 'Samsung Galaxy A32', '13.jpeg', '-'),
(19, 'Oppo A92', '19.png', '-'),
(15, 'Samsung Galaxy A02', '15.jpeg', '-'),
(21, 'Xiaomi redmi 9C', '21.png', '-'),
(23, 'realme C15', '23.png', '-');

-- --------------------------------------------------------

CREATE TABLE `pesbuk` (
  `id`
   int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL DEFAULT 'default.svg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `pesbuk` (`id`, `username`, `email`, `password`, `name`, `photo`) VALUES
(1, 'tes', 'tes@gmail.com', '$2y$10$hVNE5LHVOiXeV78J28iEkeAcCBOAKYKGjIE9GtLOI2s8iiALgdX/y', 'tes', 'default.svg');

-- --------------------------------------------------------


CREATE TABLE `stok` (
  `id` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `sisa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-
INSERT INTO `stok` (`id`, `id_menu`, `stok`, `sisa`) VALUES
(1, 4, 12, 143),
(2 128, 20, 0),
(3, 129, 20, 19),
(4, 130, 20, 19),
(5, 131, 20, 0),
(6, 132, 20, 12),
(7, 133, 20, 0),
(8, 134, 20, 14),
(9, 130, 143, 6),
(10, 142, 20, 50),
(11, 143, 12, 30),
(12, 144, 12, 0),
(13, 145, 20, 0),
(14, 0, 20, 5),
(15, 147, 20, 0);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `nama`, `alamat`) VALUES
(1, 'Rulanr Store', 'Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `temp_transaksi_pemesanan`
--

CREATE TABLE `temp_transaksi_pemesanan` (
  `id` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `id_menu` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `id_harga` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '1=sudah proses, 0 belum proses',
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `temp_transaksi_pemesanan` (`id`, `tgl`, `id_menu`, `jumlah`, `id_harga`, `status`, `total`) VALUES
(11, '2021-06-22', 134, 1, 133, 0, 1500000);

-- --------------------------------------------------------

CREATE TABLE `transaksi_pembayaran` (
  `id` int(11) NOT NULL,
  `kd_transaksi` varchar(50) NOT NULL,
  `id_pemesanan` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `total` int(11) NOT NULL,
  `nominal_bayar` int(11) NOT NULL,
  `kembali` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `transaksi_pembayaran` (`id`, `kd_transaksi`, `id_pesanan`, `tgl`, `total`, `nominal_bayar`, `kembali`) VALUES
(2, 'PBY08112000001', 1, '2021-05-08', 4000000),
(3, 'PBY08112000002', 13, '2021-05-08', 23000000),
(4, 'PBY21122000001', 19, '2021-05-21', 2700000),
(5, 'PBY21122000002', 20, '2021-06-21', 1990000),
(6, 'PBY22122000001', 22, '2021-06-22', 1200000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_pembelian`
--

CREATE TABLE `transaksi_pembelian` (
  `id` int(11) NOT NULL,
  `kd_transaksi` varchar(40) NOT NULL,
  `tgl` date NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_harga` int(11) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_pemesanan`
--

CREATE TABLE `transaksi_pemesanan` (
  `id` int(11) NOT NULL,
  `kd_transaksi` varchar(255) NOT NULL,
  `tgl` date NOT NULL,
  `nomer_meja` int(11) NOT NULL,
  `atas_nama` varchar(50) NOT NULL,
  `total` int(15) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 = belum bayar, 1 = sudah bayar'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi_pemesanan`
--

INSERT INTO `transaksi_pemesanan` (`id`, `kd_transaksi`, `tgl`, `nomer_meja`, `atas_nama`, `total`, `status`) VALUES
(19, 'PSN21122000003', '2021-05-21', 2, 'Ny Fira', 4000000, 1),
(20, 'PSN21122000004', '2021-05-21', 3, 'Pelanggan 2', 0, 1),
(21, 'PSN21122000005', '2021-06-21', 0, 'admin', 0, 0),
(22, 'PSN22122000001', '2021-06-22', 10, 'Pembeli 1', 1990000, 1),
(23, 'PSN22122000002', '2021-06-22', 1, 'Pembeli 2', 1200000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_pemesanan_detail`
--

CREATE TABLE `transaksi_pemesanan_detail` (
  `id` int(11) NOT NULL,
  `id_pemesanan` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `porsi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi_pemesanan_detail`
--

INSERT INTO `transaksi_pemesanan_detail` (`id`, `id_pemesanan`, `id_menu`, `porsi`) VALUES
(1, 1, 2, 2),
(2, 1, 1, 2),
(3, 2, 1, 5),
(4, 3, 1, 5),
(5, 4, 1, 5),
(6, 5, 1, 5),
(7, 6, 3, 2),
(8, 6, 6, 1),
(9, 7, 2, 1),
(10, 8, 8, 1),
(11, 9, 1, 1),
(12, 9, 3, 1),
(13, 9, 6, 1),
(14, 10, 1, 1),
(15, 10, 2, 1),
(16, 11, 2, 1),
(17, 11, 3, 1),
(18, 12, 6, 1),
(19, 12, 3, 1),
(20, 13, 3, 1),
(21, 13, 3, 1),
(22, 14, 2, 1),
(23, 15, 2, 1),
(24, 16, 1, 1),
-- --------------------------------------------------------

--
-- Table structure for table `transaksi_penjualan`
--

CREATE TABLE `transaksi_penjualan` (
  `id` int(11) NOT NULL,
  `kd_transaksi` varchar(40) NOT NULL,
  `tgl` date NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_harga` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi_penjualan`
--

INSERT INTO `transaksi_penjualan` (`id`, `kd_transaksi`, `tgl`, `id_barang`, `id_harga`, `id_customer`, `jumlah`, `total`) VALUES
(1, 'PNJ23071800001', '2018-07-23', 1, 1, 1, 5, 78125);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `idusers` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `status` varchar(5) NOT NULL,
  `id_akses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`idusers`, `username`, `password`, `status`, `id_akses`) VALUES
(1, 'ngadmin', '21232f297a57a5a743894a0e4a801fc3', 'Y', 1),
(2, 'pimpinan', '90973652b88fe07d05a4304f0a945de8', 'Y', 2),
(3, 'kasir', 'c7911af3adbd12a035b289556d96470a', 'Y', 3),
(4, 'hakim', 'c96041081de85714712a79319cb2be5f', 'Y', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akses_user`
--
ALTER TABLE `akses_user`
  ADD PRIMARY KEY (`id_akses`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `harga`
--
ALTER TABLE `harga`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_menu`
--
ALTER TABLE `kategori_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesbuk`
--
ALTER TABLE `pesbuk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `[username]` (`username`);

--
-- Indexes for table `stok`
--
ALTER TABLE `stok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_transaksi_pemesanan`
--
ALTER TABLE `temp_transaksi_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi_pembayaran`
--
ALTER TABLE `transaksi_pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi_pembelian`
--
ALTER TABLE `transaksi_pembelian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi_pemesanan`
--
ALTER TABLE `transaksi_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi_pemesanan_detail`
--
ALTER TABLE `transaksi_pesanan_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi_penjualan`
--
ALTER TABLE `transaksi_penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idusers`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akses_user`
--
ALTER TABLE `akses_user`
  MODIFY `id_akses` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `harga`
--
ALTER TABLE `harga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `kategori_menu`
--
ALTER TABLE `kategori_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `pesbuk`
--
ALTER TABLE `pesbuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stok`
--
ALTER TABLE `stok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `temp_transaksi_pemesanan`
--
ALTER TABLE `temp_transaksi_pemesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `transaksi_pembayaran`
--
ALTER TABLE `transaksi_pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transaksi_pembelian`
--
ALTER TABLE `transaksi_pembelian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksi_pemesanan`
--
ALTER TABLE `transaksi_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `transaksi_pemesanan_detail`
--
ALTER TABLE `transaksi_pesanan_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `transaksi_penjualan`
--
ALTER TABLE `transaksi_penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `idusers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;
