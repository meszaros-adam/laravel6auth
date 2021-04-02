-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2020. Sze 14. 11:28
-- Kiszolgáló verziója: 10.4.11-MariaDB
-- PHP verzió: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `laravel6auth`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `best_reply_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `conversations`
--

INSERT INTO `conversations` (`id`, `user_id`, `title`, `body`, `best_reply_id`, `created_at`, `updated_at`) VALUES
(1, 5, 'Odio fugiat praesentium voluptas alias enim.', 'Est incidunt ipsum et iure quis. Adipisci nisi numquam quia est quibusdam quia. Quia ut adipisci praesentium quo et rem.', 6, '2020-08-26 08:38:55', '2020-08-31 09:51:36'),
(2, 6, 'Porro minima nostrum est nemo.', 'A error et quidem ipsam beatae eum. Fugiat iure magni reprehenderit nobis. Consectetur similique ut veritatis. Iusto molestiae nam corporis rerum et est cum ducimus.', NULL, '2020-08-26 08:38:55', '2020-08-26 08:38:55'),
(3, 2, 'Inventore impedit dignissimos accusantium rerum velit.', 'Quia delectus ut aut sint sit. Recusandae sunt officiis temporibus eum incidunt quibusdam. Ut doloribus ad officiis nulla possimus consequatur qui itaque.', NULL, '2020-08-26 08:38:55', '2020-08-26 08:38:55'),
(4, 6, 'Velit fuga ut minima et minima fugit.', 'Quis consequatur veniam esse quia ut ipsum. Ab nobis quasi a ipsum autem quaerat quam. Hic et et dolorem vel eveniet consequatur.', 1, '2020-08-26 08:38:55', '2020-08-28 11:42:23'),
(5, 1, 'Minima illo fugit nesciunt sed maiores deserunt iste.', 'Voluptas est ut sequi. Ut voluptatibus est quam quas autem itaque dolorem. Esse esse libero veritatis optio maxime suscipit.', 15, '2020-08-26 08:38:55', '2020-08-28 11:54:40');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_31_093344_create_notifications_table', 2),
(5, '2020_08_03_124105_create_conversations_table', 3),
(6, '2020_08_26_101330_create_replies_table', 4),
(7, '2020_08_26_121621_add_reply_fkey_to_conversations_table', 5);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('08e172a5-6fed-4400-870b-2f65c62d2586', 'App\\Notifications\\PaymentReceived', 'App\\User', 1, '{\"amount\":900}', NULL, '2020-07-31 10:27:42', '2020-07-31 10:27:42'),
('0dc260e6-9739-4915-9c99-29415977ada0', 'App\\Notifications\\PaymentReceived', 'App\\User', 1, '{\"amount\":900}', '2020-07-31 09:20:05', '2020-07-31 08:53:15', '2020-07-31 09:20:05'),
('3a9dc0c7-920e-4144-b5b8-5c0a2d05c0fd', 'App\\Notifications\\PaymentReceived', 'App\\User', 1, '[]', '2020-07-31 09:20:05', '2020-07-31 07:42:51', '2020-07-31 09:20:05'),
('46ea5506-f22b-4865-93fa-b2223a3dd797', 'App\\Notifications\\PaymentReceived', 'App\\User', 1, '{\"amount\":900}', '2020-07-31 09:32:24', '2020-07-31 09:32:22', '2020-07-31 09:32:24'),
('5b4addf5-55ee-4a7c-89d5-457c386a35fc', 'App\\Notifications\\PaymentReceived', 'App\\User', 1, '{\"amount\":900}', '2020-07-31 09:20:05', '2020-07-31 07:52:19', '2020-07-31 09:20:05'),
('6efbece5-dc8f-4f35-b4eb-60f799a7b8e5', 'App\\Notifications\\PaymentReceived', 'App\\User', 1, '{\"amount\":900}', NULL, '2020-07-31 10:19:04', '2020-07-31 10:19:04'),
('8f260f15-ae9d-4137-b038-ab0171679616', 'App\\Notifications\\PaymentReceived', 'App\\User', 1, '{\"amount\":900}', '2020-07-31 09:31:06', '2020-07-31 09:31:04', '2020-07-31 09:31:06'),
('a97a3cbc-8235-43be-90e4-b2a134732aa8', 'App\\Notifications\\PaymentReceived', 'App\\User', 1, '{\"amount\":900}', NULL, '2020-07-31 10:19:12', '2020-07-31 10:19:12'),
('bb1375f8-1049-4723-8dac-88e5a75c7617', 'App\\Notifications\\PaymentReceived', 'App\\User', 1, '{\"amount\":900}', NULL, '2020-07-31 10:20:48', '2020-07-31 10:20:48'),
('ebcbedd7-9fb3-4f05-8b49-8d9fe1ff04d0', 'App\\Notifications\\PaymentReceived', 'App\\User', 1, '{\"amount\":900}', NULL, '2020-07-31 10:14:19', '2020-07-31 10:14:19');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `conversation_id` bigint(20) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `replies`
--

INSERT INTO `replies` (`id`, `user_id`, `conversation_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 3, 4, 'Sint culpa voluptatum voluptatem at ea.', '2020-08-26 08:38:55', '2020-08-26 08:38:55'),
(2, 4, 2, 'Et consectetur voluptatem perferendis recusandae et et et.', '2020-08-26 08:38:55', '2020-08-26 08:38:55'),
(3, 3, 1, 'Porro similique neque laboriosam molestiae laudantium dignissimos.', '2020-08-26 08:38:55', '2020-08-26 08:38:55'),
(4, 2, 1, 'Voluptas alias sit est veritatis maxime quo eos et.', '2020-08-26 08:38:55', '2020-08-26 08:38:55'),
(5, 1, 5, 'Ad quis et accusantium voluptatem ut ut et.', '2020-08-26 08:38:55', '2020-08-26 08:38:55'),
(6, 2, 1, 'Fugit nulla quis mollitia.', '2020-08-26 08:38:55', '2020-08-26 08:38:55'),
(7, 4, 2, 'Nulla quod quaerat et dolorum ut aperiam consectetur harum.', '2020-08-26 08:38:55', '2020-08-26 08:38:55'),
(8, 1, 1, 'Recusandae reprehenderit laboriosam tempora veniam non nesciunt similique voluptas.', '2020-08-26 08:38:55', '2020-08-26 08:38:55'),
(9, 6, 3, 'Occaecati perferendis dolor tempore nostrum dolorem molestiae ratione incidunt.', '2020-08-26 08:38:55', '2020-08-26 08:38:55'),
(10, 2, 4, 'Quaerat ea delectus atque ut necessitatibus aut itaque.', '2020-08-26 08:38:55', '2020-08-26 08:38:55'),
(11, 5, 2, 'Laboriosam cum voluptatem nihil adipisci.', '2020-08-26 08:38:55', '2020-08-26 08:38:55'),
(12, 1, 2, 'Voluptates soluta quia quae repellendus.', '2020-08-26 08:38:55', '2020-08-26 08:38:55'),
(13, 1, 3, 'Ut possimus exercitationem delectus non a.', '2020-08-26 08:38:55', '2020-08-26 08:38:55'),
(14, 4, 4, 'Ea amet voluptatem nihil magni fuga sed explicabo.', '2020-08-26 08:38:55', '2020-08-26 08:38:55'),
(15, 6, 5, 'Nihil nostrum amet sunt aperiam omnis modi nam.', '2020-08-26 08:38:55', '2020-08-26 08:38:55');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mészáros Ádám', 'meszike91@gmail.com', NULL, '$2y$10$s0c1khLByQ5MrvHdz4xAuOR0vNobriZdBjyYdux8a0G/7TdGw9yRK', 'Is19xffE5v1LX59RYFwZJHaOSHVXMpOjdSFhGQc5R4iOobkJdsYPIYfV1P0H', '2020-07-23 09:06:20', '2020-07-23 10:59:45'),
(2, 'Nathaniel Stiedemann', 'kling.raymond@example.net', '2020-08-26 08:38:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NoOtLjBwOa', '2020-08-26 08:38:55', '2020-08-26 08:38:55'),
(3, 'Mr. Merritt Satterfield', 'rodolfo.dach@example.org', '2020-08-26 08:38:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8KTwzPHLn8', '2020-08-26 08:38:55', '2020-08-26 08:38:55'),
(4, 'Davion Rutherford', 'kailee70@example.com', '2020-08-26 08:38:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PkZv5Lm5nj', '2020-08-26 08:38:55', '2020-08-26 08:38:55'),
(5, 'Mrs. Roberta Prosacco I', 'kunde.zelda@example.org', '2020-08-26 08:38:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OzIvLpQeBj', '2020-08-26 08:38:55', '2020-08-26 08:38:55'),
(6, 'Nils Robel', 'felix67@example.com', '2020-08-26 08:38:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6WQjAYqogR', '2020-08-26 08:38:55', '2020-08-26 08:38:55');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conversations_user_id_foreign` (`user_id`),
  ADD KEY `conversations_best_reply_id_foreign` (`best_reply_id`);

--
-- A tábla indexei `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- A tábla indexei `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- A tábla indexei `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replies_user_id_foreign` (`user_id`),
  ADD KEY `replies_conversation_id_foreign` (`conversation_id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT a táblához `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `conversations`
--
ALTER TABLE `conversations`
  ADD CONSTRAINT `conversations_best_reply_id_foreign` FOREIGN KEY (`best_reply_id`) REFERENCES `replies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `conversations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_conversation_id_foreign` FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
