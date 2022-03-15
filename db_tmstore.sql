-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Jul 2021 pada 00.17
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tmstore`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `products_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cart`
--

INSERT INTO `cart` (`id`, `products_id`, `product_name`, `product_code`, `product_color`, `size`, `price`, `quantity`, `user_email`, `session_id`, `created_at`, `updated_at`) VALUES
(20, 6, 'sukulen', '5', 'standart', 'small', 15000.00, 100, 'weshare@gmail.com', 'vgJR84QrxzVlgxPeE4BsDr8Yk3MFsWOQmLxoRRkT', '2021-07-26 04:37:29', '2021-07-26 04:37:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `description`, `url`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 0, 'Kaktus', 'Kaktus adalah nama yang diberikan untuk anggota tumbuhan berbunga famili Cactaceae. Kaktus dapat tumbuh pada waktu yang lama tanpa air. Kaktus biasa ditemukan di daerah-daerah yang kering. Kata jamak untuk kaktus adalah kakti.', 'https://id.wikipedia.org/wiki/Kaktus', 1, NULL, '2021-06-28 20:18:35', '2021-06-28 20:18:35'),
(2, 0, 'aglonema', 'Aglaonema adalah tanaman hias populer dari suku talas-talasan atau Araceae. Genus Aglaonema memiliki sekitar 30 spesies. Habitat asli tanaman ini adalah di bawah hutan hujan tropis, tumbuh baik pada areal dengan intensitas penyinaran rendah dan kelembaban tinggi.', 'https://id.wikipedia.org/wiki/Sri_rezeki', 1, NULL, '2021-06-28 20:20:06', '2021-06-28 20:31:32'),
(3, 0, 'Keladi', 'Keladi merupakan sekelompok tumbuhan dari genus Caladium. Dalam bahasa sehari-hari keladi kerap juga dipakai untuk menyebut beberapa tumbuhan lain yang masih sekerabat namun tidak termasuk Caladium, seperti talas. Keladi sejati jarang membentuk umbi yang membesar.', 'https://id.wikipedia.org/wiki/Keladi', 1, NULL, '2021-06-28 20:22:02', '2021-06-28 20:22:02'),
(4, 0, 'haworthia', 'Diterjemahkan dari bahasa Inggris-Haworthia adalah genus besar tanaman sukulen kecil yang endemik di Afrika Selatan . Seperti gaharu, mereka adalah anggota dari subfamili Asphodeloideae dan mereka umumnya menyerupai gaharu mini, kecuali pada bunganya, yang berbeda dalam penampilan. Mereka adalah tanaman kebun dan wadah yang populer.', 'https://en.wikipedia.org/wiki/Haworthia', 1, NULL, '2021-06-28 20:22:49', '2021-06-28 20:22:49'),
(5, 0, 'sukulen', 'Tumbuhan sukulen, juga dikenal sebagai sukulen, adalah tumbuhan dengan organ yang menebal, berdaging, dan membengkak, biasanya untuk menyimpan air di iklim atau kondisi tanah kering.', 'https://id.wikipedia.org/wiki/Sukulen', 1, NULL, '2021-06-28 20:23:34', '2021-06-28 20:23:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_code` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
(1, '1', 'indonesia', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `amount_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry_date` date NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_code`, `amount`, `amount_type`, `expiry_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'okta123', 90, 'Percentage', '2021-08-04', 1, '2021-06-28 22:49:43', '2021-06-28 22:51:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `delivery_address`
--

CREATE TABLE `delivery_address` (
  `id` int(10) UNSIGNED NOT NULL,
  `users_id` int(11) NOT NULL,
  `users_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `delivery_address`
--

INSERT INTO `delivery_address` (`id`, `users_id`, `users_email`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `created_at`, `updated_at`) VALUES
(3, 4, 'rexy.solehudin@gmail.com', 'Rexy', 'awdadaw', 'asdda', 'sadsda', 'indonesia', 'adsad', 'asddsad', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_10_20_040609_create_categories_table', 1),
(4, '2018_10_24_075802_create_products_table', 1),
(5, '2018_11_08_024109_create_product_att_table', 1),
(6, '2018_11_20_055123_create_tblgallery_table', 1),
(7, '2018_11_26_070031_create_cart_table', 1),
(8, '2018_11_28_072535_create_coupons_table', 1),
(9, '2018_12_01_042342_create_countries_table', 1),
(10, '2018_12_03_043804_add_more_fields_to_users_table', 1),
(11, '2018_12_03_093548_create_delivery_address_table', 1),
(12, '2018_12_05_024718_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `users_id` int(11) NOT NULL,
  `users_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_charges` double(8,2) NOT NULL,
  `coupon_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_amount` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grand_total` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `categories_id` int(11) NOT NULL,
  `p_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `categories_id`, `p_name`, `p_code`, `p_color`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Kaktus Graft x Gymno Three Color', '002', 'Graft x Gymno Three Color', 'Merupakan jenis kaktus yang sering dikenal dengan kaktus GymnoG raft atau kaktus&nbsp; Gymno yang di stek dengan batang pohon buah naga.&nbsp;', 60000.00, '1626232580-kaktus-graft-x-gymno-three-color.png', '2021-06-28 20:27:08', '2021-07-13 20:16:21'),
(2, 1, 'Kaktus Graft x Gymno Purple Import', '001', 'Graft x Gymno Purple Import', 'Merupakan jenis kaktus yang sering dikenal dengan kaktus Gymno Purple Graft atau kaktus&nbsp; Gymno yang di stek dengan batang pohon buah naga.&nbsp;', 80000.00, '1626232964-kaktus-graft-x-gymno-purple-import.png', '2021-06-28 20:31:00', '2021-07-13 20:22:45'),
(3, 2, 'Aglonema Lipstick', '003', 'Lipstick', 'Merupakan tanaman hias yang menjadi primadona atau bisa dibilang sasaran utama tanaman hias berdaun ini. Tanaman ini masih termasuk jenis seperti SriRezeki. Ciri khas tanaman ini di bagian sampingnya berwarna merah menyala.&nbsp; Untuk penyiramannya bisa kita siram 2-3 hari sekali', 45000.00, '1626233134-aglonema-lipstick.png', '2021-06-28 20:34:04', '2021-07-13 20:25:35'),
(4, 3, 'Tanaman Hias Keladi Ace Heart', '004', 'Keladi Ace Heart', 'Merupakan tanaman hias daun yang berjenis Calladium / Keladi. Ciri has tanman ini terdapat seperti sebercak warna batik berwarna putih pink bahkan sampai merah menyala', 60000.00, '1626233246-tanaman-hias-keladi-ace-heart.png', '2021-06-28 20:35:00', '2021-07-13 20:27:27'),
(5, 2, 'aglonema', '005', 'standart', 'Merupakan tanaman hias yang menjadi primadona atau bisa dibilang sasaran utama tanaman hias berdaun ini. Tanaman ini masih termasuk jenis seperti SriRezeki. Untuk penyiramannya bisa kita siram 2-3 hari sekali', 80000.00, '1626233148-aglonema.png', '2021-06-28 20:38:32', '2021-07-13 20:25:49'),
(6, 5, 'sukulen', '006', 'standart', 'Merupakan tanaman yang termasuk jenis sukulen', 15000.00, '1626233322-sukulen.png', '2021-06-28 20:39:21', '2021-07-13 20:28:44'),
(7, 4, 'Haworthia Zebra +Pot Kaca', '007', 'zebra', 'Merupakan jenis haworthia zebra. Tanaman ini bisa kita taruh didalam ruangan untuk hiasan meja, apalagi sudah memakai pot kaca yang menjadikan tanaman ini terlihat lebih berkelas. Untuk merawat tanaman ini bisa kita siram seminggu satu kali secukupnya', 25000.00, '1626233500-haworthia-zebra-pot-kaca.png', '2021-06-28 20:40:03', '2021-07-13 20:31:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_att`
--

CREATE TABLE `product_att` (
  `id` int(10) UNSIGNED NOT NULL,
  `products_id` int(11) NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product_att`
--

INSERT INTO `product_att` (`id`, `products_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(4, 6, '5', 'small', 15000.00, 100, '2021-06-28 22:34:32', '2021-06-29 00:02:34'),
(13, 7, '5', 'small', 25000.00, 100, '2021-06-29 00:00:50', '2021-06-29 00:00:52'),
(14, 7, '5', 'Medium', 30000.00, 100, '2021-06-29 00:01:18', '2021-06-29 00:01:18'),
(15, 6, '5', 'Medium', 20000.00, 100, '2021-06-29 00:02:31', '2021-06-29 00:02:34'),
(16, 1, '5', 'small', 60000.00, 100, '2021-06-29 00:00:50', '2021-06-29 00:13:45'),
(17, 1, '5', 'Medium', 70000.00, 100, '2021-06-29 00:01:18', '2021-06-29 00:13:45'),
(18, 2, '5', 'small', 80000.00, 100, '2021-06-29 00:00:50', '2021-06-29 00:13:30'),
(19, 2, '5', 'Medium', 90000.00, 100, '2021-06-29 00:01:18', '2021-06-29 00:13:30'),
(20, 3, '5', 'small', 45000.00, 100, '2021-06-29 00:00:50', '2021-06-29 00:13:08'),
(21, 3, '5', 'Medium', 60000.00, 100, '2021-06-29 00:01:18', '2021-06-29 00:13:08'),
(22, 4, '5', 'small', 60000.00, 100, '2021-06-29 00:00:50', '2021-06-29 00:12:22'),
(23, 4, '5', 'Medium', 70000.00, 100, '2021-06-29 00:01:18', '2021-06-29 00:12:22'),
(24, 5, '5', 'small', 80000.00, 100, '2021-06-29 00:00:50', '2021-06-29 00:10:36'),
(25, 5, '5', 'Medium', 90000.00, 100, '2021-06-29 00:01:18', '2021-06-29 00:10:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblgallery`
--

CREATE TABLE `tblgallery` (
  `id` int(10) UNSIGNED NOT NULL,
  `products_id` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(4) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `admin`, `remember_token`, `created_at`, `updated_at`, `address`, `city`, `state`, `country`, `pincode`, `mobile`) VALUES
(1, 'admin', 'admin@mail.com', NULL, '$2y$10$lcM5V0fLucUvu8pFVlGSWuAJljmC7SpHKl7IJrMT3y4MUCWOMz0hG', 1, 'hljy2Zlr4NnqgGey5Zrzx5bUqOvXDbXVjfGR2LLXw6w6GqoCZDKszhVI1ael', '2021-06-28 20:15:57', '2021-06-28 20:15:57', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Rexy', 'rexy.solehudin@gmail.com', NULL, '$2y$10$js0W9jOqMQE7CX6RX5ovCu3R/xqNFkGkvz7zcp4j0aVx0Lywh8lI6', NULL, NULL, '2021-07-26 04:37:03', '2021-07-26 04:37:03', NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`name`);

--
-- Indeks untuk tabel `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `delivery_address`
--
ALTER TABLE `delivery_address`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product_att`
--
ALTER TABLE `product_att`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblgallery`
--
ALTER TABLE `tblgallery`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `delivery_address`
--
ALTER TABLE `delivery_address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `product_att`
--
ALTER TABLE `product_att`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `tblgallery`
--
ALTER TABLE `tblgallery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
