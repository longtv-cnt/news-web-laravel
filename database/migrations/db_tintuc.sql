-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 02, 2022 lúc 02:24 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_tintuc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories_posts`
--

CREATE TABLE `categories_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories_posts`
--

INSERT INTO `categories_posts` (`id`, `name_category`, `slug`, `created_at`, `updated_at`) VALUES
(8, 'Giải tri', 'giai-tri', '2022-07-11 02:54:25', '2022-07-18 15:49:44'),
(9, 'thể thao', 'the-thao', NULL, NULL),
(10, 'tiêu dùng', 'tieu-dung', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 7, 23, 'test comment', '2022-07-25 03:51:15', '2022-07-26 03:51:15'),
(2, 7, 23, 'hi', NULL, NULL),
(3, 7, 26, 'hi hi hi', '2022-07-21 08:05:30', '2022-07-21 08:05:30'),
(4, 7, NULL, '333đf', '2022-07-21 08:07:46', '2022-07-21 08:07:46'),
(5, 7, 22, 'bình luận thứ 1', '2022-07-21 16:02:45', '2022-07-21 16:02:45'),
(6, 7, 22, '<p>Nhập bình luận thứ 2</p>', '2022-07-21 16:12:38', '2022-07-21 16:12:38'),
(7, 7, 22, '333', '2022-07-21 16:19:55', '2022-07-21 16:19:55'),
(8, 7, 22, '<p>Nhập bình luận 4</p>', '2022-07-21 16:28:18', '2022-07-21 16:28:18'),
(9, 7, 22, '<p>Nhập bình luận thứ 5</p>', '2022-07-21 16:36:40', '2022-07-21 16:36:40'),
(10, 7, 23, '<p>Nhập bình luận thứ 3</p>', '2022-07-21 16:41:29', '2022-07-21 16:41:29'),
(11, 7, 23, '<p>Nhập bình luận 4</p>', '2022-07-21 16:48:46', '2022-07-21 16:48:46'),
(12, 7, 22, '<p>Nhập bình luận 6</p><p><br></p>', '2022-07-21 16:51:26', '2022-07-21 16:51:26'),
(13, 7, 23, '<p>Nhập bình luận 33</p>', '2022-07-21 16:58:41', '2022-07-21 16:58:41'),
(14, 7, 22, '<p>Nhập bình luận&nbsp; &nbsp;7777</p>', '2022-07-21 17:08:18', '2022-07-21 17:08:18'),
(15, 7, 28, '<p>Nhập bình luận 1</p>', '2022-07-21 17:08:48', '2022-07-21 17:08:48'),
(16, 7, 28, '<p>Nhập bình luận</p>', '2022-07-21 17:26:16', '2022-07-21 17:26:16'),
(17, 7, 28, '<p>Nhập bình luận2</p>', '2022-07-21 17:26:27', '2022-07-21 17:26:27'),
(18, 7, 28, '<p>Nhập bình luận 3</p>', '2022-07-21 17:27:34', '2022-07-21 17:27:34'),
(19, 7, 28, '<p>Nhập bình luận 4</p>', '2022-07-21 17:30:56', '2022-07-21 17:30:56'),
(20, 7, 28, '<p>Nhập bình luận 4</p>', '2022-07-21 17:32:12', '2022-07-21 17:32:12'),
(21, 7, 28, '<p>Nhập bình luận 4</p>', '2022-07-21 17:33:14', '2022-07-21 17:33:14'),
(22, 7, 22, 'thử xem nào', '2022-07-28 00:48:30', '2022-07-28 00:48:30'),
(23, 7, 22, 'thử xem nào', '2022-07-28 00:52:55', '2022-07-28 00:52:55'),
(24, 7, 22, 'thử xem nào', '2022-07-28 00:54:20', '2022-07-28 00:54:20'),
(25, 7, 22, 'thử xem nào', '2022-07-28 00:55:09', '2022-07-28 00:55:09'),
(26, 7, 22, 'thử xem&nbsp;', '2022-07-28 00:55:30', '2022-07-28 00:55:30'),
(27, 7, 22, 'thử xem&nbsp;', '2022-07-28 01:01:03', '2022-07-28 01:01:03'),
(28, 7, 23, '<p>Nhập&nbsp;</p>', '2022-07-28 01:01:50', '2022-07-28 01:01:50'),
(29, 7, 23, '<p>Nhập&nbsp;</p>', '2022-07-28 01:02:57', '2022-07-28 01:02:57'),
(30, 7, 23, '<p>Nhập bình luận thứ 10</p>', '2022-07-28 01:08:09', '2022-07-28 01:08:09'),
(31, 7, 23, '<p>Nhập bình luận thứ 10</p>', '2022-07-28 01:08:37', '2022-07-28 01:08:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `message`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Trần Văn Long', 'mylightparadise@gmail.com', NULL, 'test', NULL, '2022-07-15 07:20:18', '2022-07-15 07:20:18'),
(2, 'Lukas Heathcote', 'mohamed11@yost.com', '1-281-525-6946', 'Quis qui expedita voluptas itaque nihil nihil eveniet. Perspiciatis odit ducimus dignissimos quas dicta. Rerum earum est quis veritatis accusantium voluptas velit.', NULL, '2022-07-15 09:23:08', '2022-07-15 09:23:08'),
(3, 'Ms. Kristina Kiehn', 'borer.pete@yahoo.com', '385.531.3639', 'Ipsum cumque eum fugiat porro autem. Esse et et cum magni numquam. Adipisci quidem minus iste perspiciatis sit voluptatem.', NULL, '2022-07-15 09:23:08', '2022-07-15 09:23:08'),
(4, 'Justus Upton', 'igreenfelder@hotmail.com', '920.656.2666', 'Maxime libero voluptatibus facere autem omnis ullam possimus optio. Animi molestiae cum autem consequuntur. Quasi voluptatem qui quidem fugiat quos. Quasi repellat officiis ex.', NULL, '2022-07-15 09:23:08', '2022-07-15 09:23:08'),
(5, 'Raoul Ziemann', 'rlittle@yahoo.com', '781.483.1049', 'Mollitia nostrum sint velit. Et rem enim eum dolor maiores. Facere et repellendus voluptatem omnis ipsam culpa.', NULL, '2022-07-15 09:23:08', '2022-07-15 09:23:08'),
(6, 'Ms. Jazlyn Armstrong Jr.', 'crystal.okeefe@schulist.net', '510.943.6739', 'Ab et debitis numquam quam illum magnam maiores accusantium. Aut omnis eum blanditiis enim adipisci natus. Tempore facere amet deleniti quo ratione culpa. Totam ea excepturi nisi aut.', NULL, '2022-07-15 09:23:08', '2022-07-15 09:23:08'),
(7, 'Quincy Beahan', 'fahey.mariah@haley.com', '1-669-728-9373', 'Aliquam non minus magnam natus error similique. Ea deleniti saepe explicabo quam. Ut et porro non mollitia ipsam possimus sit aut.', NULL, '2022-07-15 09:23:08', '2022-07-15 09:23:08'),
(8, 'Israel Huel', 'lina.mann@leffler.com', '1-308-775-1115', 'Qui aliquam vel maxime. Repellat vitae magnam ad.', NULL, '2022-07-15 09:23:08', '2022-07-15 09:23:08'),
(9, 'Gerhard Cormier', 'milford.shields@hotmail.com', '(774) 745-8989', 'Totam ut numquam aut aut quisquam cum maiores fugiat. Aut occaecati consequatur ex autem nemo. Ratione culpa quod molestias sit voluptatem corporis. Dolor aliquam aliquam autem et.', NULL, '2022-07-15 09:23:08', '2022-07-15 09:23:08'),
(10, 'Prof. Craig Kreiger Jr.', 'kassandra71@yahoo.com', '(504) 973-0450', 'Dolor ratione dolor temporibus voluptates facilis est. Magnam distinctio enim voluptas optio.', NULL, '2022-07-15 09:23:08', '2022-07-15 09:23:08'),
(11, 'Maya Cassin I', 'stokes.vince@hotmail.com', '+1.651.534.6381', 'Architecto maxime voluptas aut suscipit. Autem tempora eligendi in et ex. Rerum perferendis rerum aut corrupti at sit. Sint explicabo asperiores repellendus soluta.', NULL, '2022-07-15 09:23:08', '2022-07-15 09:23:08'),
(12, 'Mrs. Vita Kertzmann', 'barbara.kozey@gmail.com', '+16063462318', 'Doloribus nostrum perspiciatis perferendis animi cupiditate. Libero quia occaecati et architecto voluptate magnam. Vel rem et sunt repellat delectus ab et consequuntur.', NULL, '2022-07-15 09:23:08', '2022-07-15 09:23:08'),
(13, 'Mitchel Lang', 'nitzsche.brain@cruickshank.org', '(610) 916-1548', 'Nobis in quasi et. Culpa unde omnis voluptatem et animi. Omnis velit id in molestiae ipsa. Vitae facilis sed voluptate esse.', NULL, '2022-07-15 09:23:08', '2022-07-15 09:23:08'),
(14, 'Miss Rosalee O\'Conner Sr.', 'kiel14@gmail.com', '+1 (959) 420-7315', 'Quaerat consequatur recusandae commodi enim eum ea pariatur eius. Quas harum modi modi reiciendis facere exercitationem. Impedit reprehenderit eius delectus.', NULL, '2022-07-15 09:23:08', '2022-07-15 09:23:08'),
(15, 'Blaise Ebert', 'benton.witting@gutmann.com', '1-701-597-1939', 'Est officiis officia placeat eveniet minus commodi. Praesentium ut pariatur labore cupiditate soluta nihil. Amet est ut sint. Et rerum laboriosam praesentium.', NULL, '2022-07-15 09:23:08', '2022-07-15 09:23:08'),
(16, 'Madaline Wiegand DVM', 'raymundo.kozey@hotmail.com', '985.479.8972', 'Velit tempora molestiae repudiandae id maiores veniam ut. Corporis sequi voluptatem et cupiditate quibusdam qui suscipit cupiditate. Quo et at vero consectetur.', NULL, '2022-07-15 09:23:08', '2022-07-15 09:23:08'),
(17, 'Dr. George Block', 'spacocha@yahoo.com', '+13479354185', 'Incidunt nulla temporibus labore quis voluptas. Enim maxime rerum ullam delectus perspiciatis laborum. Exercitationem repellendus et animi molestias aliquid. Praesentium aliquid illum inventore.', NULL, '2022-07-15 09:23:08', '2022-07-15 09:23:08'),
(18, 'Prof. Ludwig Lang II', 'deshaun.crist@gmail.com', '+1-414-610-4680', 'Odio voluptas et nesciunt dolor. Expedita et qui assumenda illo laborum. Id temporibus rerum reprehenderit consequatur. Et voluptas repudiandae consequuntur sunt quos quia aut ad.', NULL, '2022-07-15 09:23:08', '2022-07-15 09:23:08'),
(19, 'Abraham Little IV', 'gmayert@gmail.com', '+1 (785) 601-5153', 'Quasi hic et nobis et cumque. Architecto et cum molestiae. Corporis aliquid ad voluptate maxime quo fugiat. Velit unde in minima itaque qui sunt.', NULL, '2022-07-15 09:23:08', '2022-07-15 09:23:08'),
(20, 'Andreanne Gulgowski', 'tquitzon@sipes.info', '234-336-3007', 'Adipisci vel deserunt sed nobis est error corporis. Blanditiis esse voluptatem eius illum. Inventore autem rerum consequuntur amet quisquam nobis.', NULL, '2022-07-15 09:23:08', '2022-07-15 09:23:08'),
(21, 'Mr. Dee Murphy II', 'kschuppe@ferry.com', '+1-469-681-9672', 'Rerum nihil excepturi adipisci quam consectetur. Soluta non dicta labore provident et pariatur. Quibusdam officiis ducimus sed in.', NULL, '2022-07-15 09:23:08', '2022-07-15 09:23:08'),
(22, 'Mr. Vern Spinka DDS', 'etha.hirthe@hotmail.com', '1-539-923-0374', 'Id sapiente id voluptatem explicabo et. Est animi quia molestiae voluptatum aliquid.', NULL, '2022-07-15 09:23:08', '2022-07-15 09:23:08'),
(23, 'Prof. Derrick Parker', 'paula.reilly@gmail.com', '+1.830.788.6406', 'Eaque aut voluptatem dolore aliquid. Numquam eaque occaecati minus et. Omnis quia tempore voluptatibus quidem rem vel beatae. Explicabo inventore quia impedit aut autem mollitia consequatur quae.', NULL, '2022-07-15 09:23:08', '2022-07-15 09:23:08'),
(24, 'Raheem Blick I', 'von.montana@gmail.com', '+1.651.736.2238', 'In provident soluta est sit id eius. Consequatur similique consequuntur corporis ut voluptatibus sapiente quas ut. Non et consequatur eligendi qui nulla.', NULL, '2022-07-15 09:23:08', '2022-07-15 09:23:08'),
(25, 'Guiseppe Bailey', 'rosario.price@carter.com', '(786) 558-0426', 'Possimus quas vel et incidunt in itaque. Sed quisquam et vel. Vel laborum corrupti voluptatem ab alias.', NULL, '2022-07-15 09:23:08', '2022-07-15 09:23:08'),
(26, 'Lester Blanda', 'antonetta25@dubuque.com', '+13419991269', 'Quos sit amet quia recusandae molestiae labore aut est. Dolore eum omnis minima nemo laudantium fugit. Voluptatem iure nam at quia ut exercitationem.', NULL, '2022-07-15 09:23:08', '2022-07-15 09:23:08'),
(27, 'Leone Gusikowski', 'kovacek.laury@heller.com', '667-367-2630', 'Vel explicabo sint et inventore ab. Exercitationem consequatur et enim nemo. Aut quisquam ducimus deserunt.', NULL, '2022-07-15 09:23:08', '2022-07-15 09:23:08'),
(28, 'Mr. Gavin Nienow', 'padberg.cornelius@pouros.net', '1-929-893-7117', 'Et in architecto velit sint omnis. Beatae rerum aut ex ut eum. Eligendi est neque est est dolorem rerum. Non non et impedit dolor error ducimus.', NULL, '2022-07-15 09:23:08', '2022-07-15 09:23:08'),
(29, 'Rebeka Corkery', 'abernathy.florence@wilderman.com', '+1-623-664-3417', 'Id maiores culpa quam eos est repellendus sed. At eos libero aut commodi et consequatur illum aliquid. Debitis tenetur omnis dolorem aut rerum commodi.', NULL, '2022-07-15 09:23:08', '2022-07-15 09:23:08'),
(30, 'Celestine Davis Sr.', 'ruecker.lolita@mann.com', '(973) 898-1703', 'Quidem placeat officiis dolor illum dolore numquam vel consectetur. Distinctio unde nihil officiis consequatur. Dolores fuga exercitationem dolor eum voluptate. Praesentium tempora fuga dolore.', NULL, '2022-07-15 09:23:08', '2022-07-15 09:23:08'),
(31, 'Mervin Gottlieb', 'zoey42@klein.org', '+13372899991', 'Et qui omnis laudantium. Sit possimus sapiente qui veritatis voluptas. Quaerat omnis officia suscipit voluptatem. Voluptatem eveniet sed qui deserunt eaque repellendus excepturi.', NULL, '2022-07-15 09:23:08', '2022-07-15 09:23:08'),
(32, 'Alfonso Cruickshank PhD', 'goldner.anika@yahoo.com', '239-331-1346', 'Accusantium adipisci incidunt ullam officia vel. Delectus perferendis expedita necessitatibus laudantium. Dolore ea rerum a vel quia eveniet.', NULL, '2022-07-15 09:23:08', '2022-07-15 09:23:09'),
(33, 'Lonie Larkin', 'rita.bins@gmail.com', '+1.463.284.7826', 'Harum a suscipit saepe et. Illum numquam aspernatur velit qui. Est omnis qui excepturi amet ut. Iste rerum quisquam aut ut in.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(34, 'Jevon Greenfelder', 'pollich.rodolfo@hackett.com', '985.972.6254', 'Veniam quo natus vel odit. Delectus sit assumenda sit non est et. Quo non facere fuga sed dolorem molestias. Sit minus consequuntur omnis.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(35, 'Billy Murazik', 'delpha.braun@gmail.com', '+1.248.288.2513', 'Tempore sapiente sint optio eum ut. Odit enim quibusdam est blanditiis.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(36, 'Maximillia Mohr', 'zhuel@kozey.com', '+1 (681) 617-3199', 'Minima consequatur dolorum dolor laboriosam aut. Dolorem fugit deserunt ut sit molestias et quasi. Non autem et non nihil nulla.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(37, 'Triston Leuschke I', 'devante44@yahoo.com', '(972) 537-6334', 'Ipsum ut dignissimos eos qui consequatur et. Voluptas odit exercitationem quo rem iure quia ipsam. Consequatur autem vero esse unde eum. Ratione ut quo sed officia nemo voluptatem.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(38, 'Waino Bernhard Jr.', 'jhegmann@hotmail.com', '(279) 333-4367', 'Sit et et tempora vel facilis. Dolorem voluptatem omnis voluptates blanditiis sit voluptas.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(39, 'Roman Bednar', 'jermaine.lowe@treutel.com', '+17344265559', 'Aut dolor at voluptatem vel dicta consequatur. Qui ut vel consequatur aut et. Nam qui ad temporibus rerum.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(40, 'Bonita Dickens', 'cesar09@fritsch.org', '+1-815-776-1142', 'Sed et in et reprehenderit. Error qui cumque reprehenderit iusto ipsam eaque nam. Veritatis quidem nesciunt aliquam est sequi minus nulla. Eaque fuga sit quod enim atque velit ea.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(41, 'Samara Conroy', 'deanna.baumbach@yahoo.com', '+1-631-474-3741', 'At qui omnis veritatis consequatur labore qui mollitia. Iure aperiam vitae veniam harum. Quia voluptatum a ipsam amet quis minima sint. Vitae error nihil quia odit et.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(42, 'Eudora Rogahn', 'monahan.rylan@doyle.biz', '+1.231.874.5928', 'Consectetur est optio totam sit est et voluptas. Architecto sunt consequatur omnis est et. Voluptas voluptatem velit neque enim commodi esse.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(43, 'Jefferey Cormier', 'johnnie13@gmail.com', '628.522.5989', 'Consequatur reiciendis ratione repudiandae et illo excepturi. Tempora facere facilis id eos soluta omnis. Ut sit explicabo non.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(44, 'Tamara Adams', 'gutmann.arjun@gmail.com', '1-915-942-7054', 'Inventore vitae eveniet nihil molestiae aliquid nobis quia. Facere neque dolorum libero ad temporibus voluptate. Id ratione illum quia reiciendis pariatur. A optio sequi quia sit.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(45, 'Hilbert Klein', 'horeilly@gmail.com', '+1 (980) 880-9497', 'Sunt molestias architecto ex iusto repellat aut vel molestias. Et ut optio eveniet consequatur consequuntur. Architecto sunt est dicta. Eveniet quae corporis beatae in et.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(46, 'Mrs. Aglae Hartmann', 'frami.jeanie@lang.info', '+1-559-685-7900', 'Et ut minima quam. Vel quidem consequatur assumenda consequatur ducimus mollitia. Labore aut laudantium ullam nihil excepturi. Saepe est ea omnis quidem.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(47, 'Rodger Beier', 'marcelina38@bednar.biz', '+1-252-581-5444', 'Et veniam vel illo id qui non. Quia vitae repellendus ab nihil.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(48, 'Halle Robel Jr.', 'ferry.guadalupe@satterfield.com', '+1-669-840-5094', 'Sint neque commodi magnam illum. Voluptatem accusantium in minima labore hic voluptate omnis velit. Repellat sit omnis quibusdam dolore. Iste expedita sunt modi natus harum architecto nihil.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(49, 'Dr. Marco Schuster', 'dibbert.johann@hamill.info', '443.328.1925', 'Dolores voluptatem officiis ut accusantium unde. Quo eum pariatur quo aut maiores corrupti aut. Qui dolores aut sapiente. Voluptas modi ea rerum aut ducimus quae eveniet.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(50, 'Mrs. Ruthe Berge MD', 'lyla88@pollich.com', '458-246-6623', 'Accusantium tempora corrupti aut maxime beatae unde itaque. Nemo ipsum quos qui impedit veniam. Molestiae sint qui cum necessitatibus quod ipsam ratione. Rerum qui excepturi consectetur facilis quod.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(51, 'Reggie Collins', 'crice@oconnell.com', '+1-617-426-3554', 'Doloribus a quae doloremque a. Totam aut ea odit. Pariatur et odit veritatis possimus eos quas sit voluptas.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(52, 'Adelia Rohan', 'maureen22@hotmail.com', '1-937-630-7408', 'Cupiditate earum consectetur ut animi. Doloremque ut odit sed facere. Provident voluptatem dolores et non nihil dolores.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(53, 'Samson Weissnat', 'brenden.kulas@hotmail.com', '+1 (336) 698-9436', 'Quia quam magnam et modi dignissimos dolore consequatur. Similique et aut eveniet aut minima. Sint laudantium quo consequatur qui veniam accusantium. Est quam hic voluptate consequatur enim dolor.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(54, 'Dr. Ansel Wintheiser DDS', 'burdette80@lubowitz.com', '+1-936-297-5540', 'Ut et aut officia fugit. Consequuntur delectus dolor cumque esse praesentium. Dolor perspiciatis velit perferendis commodi.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(55, 'Matt Predovic PhD', 'vhuel@yahoo.com', '(318) 785-5675', 'Vel cum soluta ipsum rerum culpa commodi. Fuga maxime quia placeat. Officiis possimus deleniti nihil.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(56, 'Colten Wisoky', 'aeffertz@gmail.com', '539.913.1527', 'Autem sunt beatae sed dolores provident accusamus et. Enim consequatur aut repellat nihil tenetur quod.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(57, 'Elliot Lebsack', 'mattie.hegmann@yahoo.com', '+15598585047', 'Occaecati mollitia voluptatem suscipit aut voluptate aut culpa. Aut velit repudiandae ut delectus maxime. Minus praesentium facilis sunt ad.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(58, 'Jennings Bergnaum', 'cody.carroll@weissnat.com', '740.986.8675', 'Laborum et autem distinctio sed cum dolor placeat. Explicabo laborum eos quo qui maxime omnis. Officia est deleniti suscipit labore autem veniam ex. Est qui inventore debitis.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(59, 'Queen Shanahan Jr.', 'sabina46@yahoo.com', '+1 (682) 940-9488', 'Et omnis vel ut suscipit magni nihil corrupti quia. Qui molestias amet aut ipsum. Et autem nemo temporibus recusandae labore est. Fugit asperiores nesciunt at quo ex voluptas.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(60, 'Mrs. Shea Adams PhD', 'minerva.wolff@hotmail.com', '414-394-2116', 'Qui dolorum et nam nihil magnam voluptatum. Et odio id optio deleniti expedita. Itaque perferendis eum occaecati quam occaecati. Ipsam enim tenetur incidunt labore modi aut voluptas.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(61, 'Beau Crooks IV', 'cathryn.crona@harvey.com', '234-574-0353', 'Voluptatibus sequi et ut dolorem itaque qui. Praesentium ut impedit autem. Quia delectus sunt numquam optio. Labore quia voluptatem ut ut. Assumenda eaque rerum enim nemo.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(62, 'Casimer Kuhic', 'mozell.connelly@adams.com', '1-904-221-5112', 'Nemo et sit tempora recusandae dolore. Eligendi facilis incidunt quae veritatis dicta. Perspiciatis quia qui qui deleniti officia aliquam ea.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(63, 'Orlo Funk', 'swaniawski.adelle@yahoo.com', '1-208-215-5798', 'Dolores et quia nostrum porro qui. Dignissimos ea sunt distinctio qui. Sunt maiores nam rerum. Consequatur quis illo soluta consequatur dignissimos et.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(64, 'Alanis Dickens', 'cruickshank.dewayne@yahoo.com', '540.254.1376', 'Error non eius eaque eveniet. Hic ratione omnis consectetur labore. Dolorem asperiores sit vel dolores doloremque aut et.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(65, 'Prof. Jermain Hickle', 'claire05@yahoo.com', '458-796-6929', 'Ut dolorum distinctio sed. Ex tempora doloribus perspiciatis et ipsam. Et architecto dolorum repudiandae eligendi.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(66, 'Dr. Danielle Kihn', 'schinner.jimmie@gmail.com', '740.225.9856', 'Corrupti aut quod est eveniet quam ipsum et. Sunt quod magnam est ut vitae qui. Est porro veniam ex minima eos. Enim odit omnis sed earum voluptas.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(67, 'Crystel Rippin', 'mitchell.dach@gulgowski.com', '425.727.8867', 'Mollitia eligendi aliquam ut veritatis non. Officia a quia quaerat esse nesciunt voluptatem minima. Nisi harum ducimus sit molestiae. Rerum autem doloremque dolorum iste nobis iusto voluptatem.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(68, 'Eulalia Kunze', 'jace.barton@yahoo.com', '+14109346201', 'Aut et sapiente aut vero expedita possimus doloribus. Reiciendis explicabo amet aut vero vel. Molestiae corporis nobis vel quaerat nihil expedita eveniet quas.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(69, 'Aubrey Fisher II', 'harber.eleanora@hilpert.com', '775-456-1151', 'Ipsa sed facere aut qui sed reprehenderit corporis. Repellendus aut dolore assumenda et. Praesentium quaerat odio ad ducimus voluptas perspiciatis possimus.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(70, 'Miss Justine Koepp Sr.', 'thea43@hettinger.com', '1-650-389-9128', 'Exercitationem dolorum aut praesentium quia amet. Et recusandae vel voluptas. Blanditiis saepe deleniti ipsam et deleniti harum. Fugiat est numquam velit asperiores iure similique.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(71, 'Selina Quitzon', 'dannie43@hotmail.com', '681.647.3454', 'Earum commodi ratione vero sint. Odit quam exercitationem et aperiam. Et error quidem sapiente vel earum. Qui ut nulla praesentium occaecati quis sunt provident.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(72, 'Derek Grimes', 'ofelia20@gmail.com', '+1 (703) 556-4316', 'Sed est et nulla assumenda delectus vitae quas. Qui atque voluptatum et dicta. Dolorum aut dolorum expedita reiciendis. Accusamus sint aut non ab iure.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(73, 'Aisha Keebler', 'agnes.fahey@yahoo.com', '+1.512.853.5858', 'Nostrum dignissimos inventore praesentium facere. Quae suscipit rerum officia eaque quasi aperiam voluptatem. Quia quos voluptatibus voluptatum velit.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(74, 'Dameon Cassin', 'nkemmer@yahoo.com', '+19473041726', 'Dolor occaecati neque eos voluptas. Odio nostrum molestiae et aspernatur atque. Ratione fugiat ea voluptatibus ipsum id. Rem corrupti consequuntur at blanditiis natus quisquam ut beatae.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(75, 'Mr. Reilly Connelly', 'helga67@dibbert.com', '+1-602-271-9527', 'Alias necessitatibus exercitationem ipsa voluptatibus et esse ducimus ut. Saepe eum quas voluptas. Impedit velit eos consectetur dolores nobis.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(76, 'Lennie Dickens', 'cecile96@yahoo.com', '1-361-652-2384', 'Porro unde minima qui veniam voluptas commodi explicabo. Harum quis ut voluptatem deserunt. Dolorem voluptatem excepturi non eos inventore est sapiente.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(77, 'Nellie Gutkowski', 'thompson.pearlie@stehr.com', '717.993.4091', 'Aut distinctio qui eos ut excepturi commodi quia. Dicta quos eaque sit ducimus nam et repellat. Et magnam fuga voluptatum consequuntur quaerat dolore recusandae.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(78, 'Mr. Arch Mayer', 'kessler.enola@bergnaum.net', '1-531-713-6824', 'Minima aliquid vel ut occaecati in quia aut. Excepturi rem dolor sed exercitationem hic ea et et. Maxime repudiandae culpa sequi corporis.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(79, 'Dr. Arvel Schuppe I', 'welch.ewell@gmail.com', '(520) 474-1060', 'Illo a perspiciatis perferendis laudantium et qui. Nesciunt alias maxime sint. Aut distinctio ut ducimus rem delectus quia. Esse aut quia ullam neque rem.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(80, 'Prof. Eulah Marquardt', 'psawayn@bergnaum.com', '(860) 855-1071', 'Ex delectus quaerat quia dolorem odio molestias autem. Quis impedit velit beatae eum nulla aliquam aliquam. Optio adipisci aliquid veritatis id. Est voluptatem porro quaerat maiores.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(81, 'Dr. Ignatius Brown', 'wreilly@gmail.com', '785.729.7924', 'Rerum nobis omnis qui ea. Et laboriosam ullam et officia.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(82, 'Vicenta Swaniawski', 'ngibson@gmail.com', '+1-626-852-5729', 'Ut assumenda tempora sed quo. Voluptas et rerum et molestiae eos dolorem esse. Et rerum dolorem voluptatibus.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(83, 'Camylle Weimann', 'rgerhold@gutmann.info', '201-582-9076', 'Qui blanditiis est aperiam ut repudiandae doloribus. Qui ut qui assumenda sequi. Vel quos est dolorum recusandae reprehenderit. Doloremque eos corrupti amet ipsum magnam.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(84, 'Prof. Madisyn Stehr IV', 'abshire.giovanny@bogan.com', '+1.640.722.2280', 'Qui deleniti deserunt iure dolorum eum voluptas. Ipsam suscipit excepturi perferendis ab laborum error. Enim magni tempore qui quidem est adipisci eaque repudiandae.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(85, 'Torrance Klein', 'johnston.lance@hotmail.com', '+1 (941) 936-5859', 'Dolorem praesentium eum sit. Omnis et sequi illum enim vel. Fuga et nam dolores cum consequatur repellat alias.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(86, 'Prof. Adam McCullough Jr.', 'tmorissette@yahoo.com', '857-204-0916', 'Tenetur voluptates quia enim. Rerum quos dolores et atque. Quos corporis voluptate et ut magnam.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(87, 'Leatha Carroll Sr.', 'shanelle73@von.net', '1-734-965-0728', 'Quam possimus consequuntur omnis voluptatibus temporibus. Et amet non vitae. Totam commodi qui minus qui est quia odio.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(88, 'Carrie McClure I', 'annabell.metz@trantow.com', '938-233-7149', 'Qui inventore molestias enim ducimus ut ut. Illo nemo iste sed aut vel nisi. Iure non fugit et architecto. Quas id ut asperiores magnam est ut dolores.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(89, 'Mrs. Lysanne Bartoletti II', 'velma04@ernser.net', '+1-810-756-0240', 'Magni vel saepe nobis et. Blanditiis nostrum rem adipisci sunt sed consequatur aut tenetur. Voluptas repellendus ex quia consectetur.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(90, 'Prof. Malcolm Ebert Jr.', 'waelchi.cameron@gmail.com', '1-580-313-7414', 'Vel cumque soluta asperiores ducimus molestiae iusto. Harum deserunt aliquam et sit sequi consequatur reprehenderit. Quo hic voluptas quia eos neque. Dolorem dolore iure fuga tenetur veniam quaerat.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(91, 'Dr. Marcos Hand Sr.', 'katelynn27@funk.com', '551.421.6460', 'Nihil ut vitae consequatur hic eligendi officia. Voluptatem adipisci consequuntur et rerum id. Quisquam aliquam voluptatem non ea aut.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(92, 'Prof. Laney Goldner', 'ozemlak@hotmail.com', '+1.267.297.0640', 'Expedita et asperiores non ratione nobis odit. Placeat nostrum ut fuga voluptas aut fugiat et odio. Molestiae cupiditate amet nihil voluptatum ratione.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(93, 'Miss Caitlyn Stark Jr.', 'hhaag@hotmail.com', '+1.605.865.8799', 'Laudantium totam ut est omnis earum. Occaecati ex est blanditiis nobis hic. Error dicta qui perspiciatis reprehenderit. Iste et consequatur quod fugit voluptatem sunt.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(94, 'Dr. Trent Lang Jr.', 'xbergstrom@murphy.com', '+1 (774) 662-1749', 'Magnam non laudantium quo beatae repellat. Iusto laborum excepturi culpa voluptas quis rerum. Qui officiis atque minima odit qui quis.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(95, 'Kamren Hartmann', 'genoveva.kilback@hoppe.net', '+1 (423) 379-7203', 'Possimus facilis aut optio et quo maiores libero. Id aut voluptatem qui sed molestias ratione. Debitis omnis corporis voluptas vel et.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(96, 'Donnie Olson', 'arely.gleichner@yahoo.com', '+1.843.584.9455', 'Qui quo voluptatem quaerat deserunt laudantium dolorum. Consequatur ipsum voluptatem corporis ex. Nihil dignissimos est quae molestiae aut molestias et et.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(97, 'Estelle Kovacek', 'aimee.damore@douglas.com', '1-754-741-8969', 'Qui tenetur ut qui omnis. Totam voluptatem dolor qui aut eaque. Necessitatibus sint qui atque necessitatibus quia voluptates vitae.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(98, 'Hunter Collins', 'jacobs.dock@yahoo.com', '872-338-5175', 'A ut autem non consequatur molestias a assumenda. Ipsum minus ratione sapiente ipsam sit non. Numquam ut nihil officia quia at voluptates fugiat.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(99, 'Tremayne Sporer', 'jevon46@feest.com', '(657) 457-5317', 'Adipisci omnis modi quaerat. Perspiciatis et voluptatem eligendi non natus. Consequatur qui doloribus qui.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(100, 'Ross Olson Sr.', 'domingo.aufderhar@gleichner.com', '409.638.4256', 'Labore adipisci consectetur quia sapiente rerum doloribus. Porro cum commodi vero recusandae non. Cupiditate sed amet aspernatur ut voluptatibus rerum.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(101, 'Ike Windler', 'karlee32@doyle.com', '+1.708.832.0547', 'Et sed voluptatem at dolor quo quo. Voluptatem nostrum nostrum aut corrupti sit vero qui. Exercitationem qui quidem voluptate reiciendis qui. Quia perspiciatis autem voluptates id.', NULL, '2022-07-15 09:23:09', '2022-07-15 09:23:09'),
(102, 'Trần Văn Long', 'mylightparadise@gmail.com', NULL, '12345 hello', NULL, '2022-07-22 11:25:26', '2022-07-22 11:25:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_11_000619_create_categories_posts_table', 1),
(6, '2022_07_11_000620_create_posts_table', 1),
(7, '2022_07_11_001012_create_contacts_table', 1),
(8, '2022_07_11_001039_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number_views` bigint(20) NOT NULL DEFAULT 0,
  `number_comments` bigint(20) NOT NULL DEFAULT 0,
  `number_likes` bigint(20) NOT NULL DEFAULT 0,
  `new_post` tinyint(4) DEFAULT NULL,
  `highlight` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `title`, `content`, `description`, `image`, `slug`, `number_views`, `number_comments`, `number_likes`, `new_post`, `highlight`, `created_at`, `updated_at`) VALUES
(19, 7, 9, 'Pariatur minima culpa nisi enim.', 'Dolores expedita id voluptatem maiores. Sunt quis dicta explicabo harum ullam consequatur. Possimus odio consequatur exercitationem sit. Mollitia nam est neque ad modi.', 'Vel doloribus ratione commodi corporis. Et molestiae qui voluptas voluptatum suscipit. Perferendis aut dolorum veritatis incidunt officia possimus sint.', 'https://via.placeholder.com/640x480.png/00aa00?text=error', 'est-porro-aut-et-quidem', 0, 0, 0, NULL, 0, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(20, 7, 8, 'Quasi et placeat blanditiis sunt ut sit.', 'Quisquam cumque voluptatibus hic rerum nihil illum sunt. Voluptatem placeat ducimus aut sed. Corrupti odio suscipit quasi id facere.', 'Maiores ducimus autem et accusantium quas. Adipisci libero culpa quidem. Et deserunt odit est magni fugiat maiores consequatur. Beatae cum inventore quaerat sequi.', 'https://via.placeholder.com/640x480.png/00cc77?text=nam', 'tempora-fuga-illo-expedita-expedita', 0, 0, 0, NULL, 0, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(21, 7, 8, 'Sit non officia dolores aut alias aut.', 'Officia ut occaecati et. Aut distinctio blanditiis tempora quod placeat eos. Illum nobis ab maxime dolor.', 'Perferendis repellat est et et quaerat et qui. Vel tenetur cumque eum corrupti eligendi omnis. Quam quia consectetur maiores et sunt aperiam. Consequatur laborum et dolores.', 'https://via.placeholder.com/640x480.png/00ee11?text=ea', 'quaerat-sit-qui-perspiciatis-culpa-soluta-corrupti-facilis-minus', 0, 0, 0, NULL, 0, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(22, 7, 9, 'Necessitatibus error ratione molestiae.', 'Quae beatae et et assumenda. Id suscipit perferendis et. Eius qui excepturi temporibus qui quae aspernatur totam voluptatum.', 'Eveniet dolor tenetur aliquid libero sed ex. Dolores aspernatur quia non culpa vero soluta ullam. Explicabo id ut odit ipsa dolor culpa omnis dignissimos. Et maiores sapiente quia ullam nostrum.', 'https://via.placeholder.com/640x480.png/00eedd?text=quia', 'doloremque-voluptatibus-aut-consequatur-provident-dolor-voluptatem-ut-cum', 24, 13, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-29 06:33:40'),
(23, 7, 8, 'Est est explicabo eos quia.', 'Repudiandae assumenda voluptates sunt quas accusamus alias. Quia iste repellendus voluptates. Unde non eligendi qui voluptas reiciendis optio.', 'Sit nihil omnis optio nulla quibusdam. Est voluptatem atque repellendus. Voluptate voluptas nesciunt rem aperiam.', 'https://via.placeholder.com/640x480.png/0044bb?text=ea', 'unde-qui-iste-laudantium', 29, 9, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-29 06:33:40'),
(24, 7, 8, 'Dignissimos porro optio eaque iste est saepe et laboriosam.', 'Qui adipisci voluptatum ratione qui occaecati qui sunt ut. Quia qui explicabo harum amet non. Aliquid provident eligendi veniam aspernatur suscipit ut et.', 'Voluptatum beatae rem aut consequatur placeat porro commodi. Reiciendis perferendis repellendus sed. Consectetur dolorem nemo est sint eum natus sint dicta.', 'https://via.placeholder.com/640x480.png/006699?text=qui', 'qui-sed-ea-officiis', 1, 0, 0, NULL, 0, '2022-07-15 10:17:34', '2022-07-20 09:12:53'),
(25, 7, 9, 'Corrupti autem numquam molestias.', 'Magni numquam architecto possimus. Velit cum velit omnis eius cumque aut neque. Tempora ut omnis rerum sed et quis id.', 'Nobis commodi aut facilis. Earum qui debitis nesciunt nulla quisquam illo eveniet. Vero sint et deserunt dolorem et. Consequuntur aut ipsum possimus voluptatem esse error.', 'https://via.placeholder.com/640x480.png/001166?text=et', 'at-esse-velit-voluptatem-eius-neque-facere-pariatur', 5, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-21 07:29:51'),
(26, 7, 10, 'Illo est illum laboriosam maxime voluptatem non ad harum.', 'Accusamus est autem rerum omnis. Iure ab voluptas et sequi mollitia blanditiis. Rerum quo illo nobis voluptas at autem nisi.', 'Explicabo odit voluptatem eum. Et quaerat nemo placeat sit et. Consectetur ullam expedita ullam possimus. Sed eveniet omnis atque vel neque facere.', 'https://via.placeholder.com/640x480.png/002222?text=sit', 'quaerat-expedita-et-et-tempore', 7, 1, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-21 18:01:51'),
(27, 7, 10, 'Quia odit sint dolores ut et.', 'Rerum corrupti laboriosam dolorum officiis eos sed tenetur. Tempore vitae voluptas enim repudiandae nam. Nemo omnis hic qui.', 'Et maiores accusantium odit sit. Aut quo qui ipsum unde suscipit. Voluptas voluptate rerum doloribus eum voluptas ullam. Libero omnis enim dolorum quod. Nobis et in saepe reiciendis maiores.', 'https://via.placeholder.com/640x480.png/00eeff?text=quibusdam', 'atque-dolorem-officia-quidem-quis-qui-eum', 0, 0, 0, NULL, 0, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(28, 7, 8, 'Hic aperiam eos temporibus ad consequatur commodi reiciendis.', 'Ratione nemo nam praesentium saepe sit iste aut. Aut dicta mollitia quia voluptatem provident repellat. Aut minima autem repudiandae eum sequi. Expedita recusandae ut fuga est sint.', 'Maiores beatae laudantium laboriosam atque qui aliquam ullam. Voluptatem consequuntur cumque dolor est. In quibusdam vel quo nisi reprehenderit explicabo. Aut beatae omnis quas deleniti.', 'https://via.placeholder.com/640x480.png/00cc55?text=pariatur', 'aut-dolores-architecto-est-doloribus-occaecati', 18, 7, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-21 18:01:51'),
(29, 7, 8, 'Itaque quis numquam explicabo hic pariatur maiores a.', 'Error explicabo maiores dolorem voluptas aut itaque. Nesciunt et quod dicta odio et sed est aut. Sint occaecati ratione vel assumenda eos non. Hic ab et perspiciatis beatae aut.', 'Asperiores sint fugiat quaerat explicabo. Necessitatibus sunt consectetur ipsum reprehenderit.', 'https://via.placeholder.com/640x480.png/004466?text=voluptatem', 'dolore-voluptatem-qui-voluptatem-consequatur-blanditiis', 0, 0, 0, NULL, 0, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(30, 7, 8, 'Ducimus ut qui beatae sunt minima.', 'Maxime consequatur non atque velit quibusdam eos illo. Qui qui nulla quos at sed consectetur ipsam. Et aliquam maiores laboriosam aut possimus necessitatibus.', 'Nisi omnis sed voluptatum voluptas. Consequatur quo neque aut consectetur aut quas. Ea sit maiores et maxime nihil assumenda eaque cumque.', 'https://via.placeholder.com/640x480.png/003355?text=quo', 'reiciendis-consequuntur-cumque-a-eveniet-sunt-beatae-officia', 1, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-21 08:27:14'),
(31, 7, 9, 'Fugit velit eius commodi omnis.', 'Eveniet amet dolorem deleniti et. In ipsa fugiat totam veritatis necessitatibus in. Nisi explicabo nihil ab consequatur laborum sequi aliquam. Dolorem nam perferendis eaque omnis molestiae.', 'Similique libero quidem sed voluptatum eum. Eius fuga nobis deleniti enim voluptas et. Dolorum ducimus ut voluptas et.', 'https://via.placeholder.com/640x480.png/00dd44?text=voluptatem', 'et-consectetur-culpa-et-placeat-architecto-sed-itaque', 0, 0, 0, NULL, 0, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(32, 7, 9, 'Fugiat minus quod mollitia saepe aut provident ut.', 'Amet totam perspiciatis voluptatem sapiente. Velit iure et omnis velit deleniti blanditiis. Doloremque dolor fuga aliquam placeat itaque aut.', 'Repudiandae quia qui necessitatibus iusto id quia. Vero dolorem voluptatum in eaque aut nulla sunt iusto. Excepturi reprehenderit quisquam quia. Magnam sunt aut numquam dolor at ut.', 'https://via.placeholder.com/640x480.png/00aaee?text=quod', 'molestiae-facere-sequi-est-illum-illo-minima-enim-et', 1, 0, 0, NULL, 0, '2022-07-15 10:17:34', '2022-07-21 08:36:58'),
(33, 7, 9, 'Possimus itaque optio iusto ut ut est vel.', 'Qui ut nulla aut facilis dolorem sint qui. Non earum placeat recusandae voluptas. Consequatur recusandae quam necessitatibus esse ipsa impedit. Dolores est quaerat cupiditate rerum eius aut fugiat.', 'Aut asperiores molestiae et consequuntur consequatur autem rerum. Repellendus delectus consequuntur labore et dolorem accusamus totam dolore. Qui error molestiae incidunt non et eius.', 'https://via.placeholder.com/640x480.png/00bb33?text=omnis', 'blanditiis-fugiat-voluptate-unde-unde-ut-minima', 0, 0, 0, NULL, 0, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(34, 7, 9, 'Minus quod eaque in.', 'Qui nesciunt soluta cupiditate excepturi non unde. Dolor quia labore libero et quaerat ea sit. Repellat nostrum dolor consequatur dolorum.', 'Et veniam deserunt natus exercitationem non ut. Modi dolorem nihil accusamus inventore distinctio repellat at. Cum id pariatur rerum.', 'https://via.placeholder.com/640x480.png/0011bb?text=natus', 'eligendi-iure-assumenda-eaque-et-neque-aperiam', 0, 0, 0, NULL, 0, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(35, 7, 8, 'Reiciendis voluptatem praesentium nemo aspernatur ipsum cupiditate.', 'Facilis eius quo doloribus similique. Voluptatem facilis rerum laborum aut repellendus aperiam qui. Facilis eius sunt iure qui repudiandae sequi doloremque.', 'Et nihil voluptatum aut necessitatibus commodi. Voluptatum rerum fuga ipsam sunt. Fugit aut pariatur nihil aut consequuntur et. Eos repellendus voluptatem ut unde exercitationem porro.', 'https://via.placeholder.com/640x480.png/00bbff?text=deserunt', 'aut-doloremque-sit-et-id-consequatur-consequuntur-et-laudantium', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(36, 7, 10, 'Mollitia inventore eum non voluptatem quas facere voluptas quisquam.', 'Placeat aut occaecati et aut velit enim eos est. Assumenda recusandae velit modi quidem. Voluptatem occaecati voluptas perferendis.', 'Sed enim beatae qui non sint sed. Exercitationem sed porro vel sint. Aut et nihil quia. Nesciunt deleniti quos nemo quo dolor modi saepe. Consequatur numquam deserunt voluptatibus laudantium aut.', 'https://via.placeholder.com/640x480.png/004400?text=veniam', 'ab-eaque-ea-facilis-consequatur', 0, 0, 0, NULL, 0, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(37, 7, 9, 'Et eum deserunt odit natus magnam assumenda libero error.', 'Qui ipsam rerum eos est nihil voluptas assumenda. Aspernatur vero aliquid quas voluptatem error itaque modi. Perspiciatis consectetur quas ad aperiam minima molestiae eveniet.', 'Voluptate nisi ex impedit. Ea voluptates ullam recusandae accusamus dolor dolorem maxime beatae. Incidunt dolores eligendi dolorum aperiam quia ad. Officia aut nobis accusantium aut.', 'https://via.placeholder.com/640x480.png/00bb00?text=aliquid', 'sit-et-sit-accusantium-voluptas-quidem-tempora', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(38, 7, 9, 'Eos corporis placeat omnis.', 'Et nulla harum qui qui eaque. Non at numquam aspernatur natus repellat dolorum ullam iste. Possimus quisquam earum officia dolores enim perferendis quia.', 'Vel et sapiente qui. Sit dignissimos nihil enim voluptatem. Quae sapiente aperiam sint incidunt quis similique tempore aperiam.', 'https://via.placeholder.com/640x480.png/00dd66?text=eos', 'quos-quas-aut-amet-sint-iure-eligendi-ut', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(39, 7, 10, 'Nesciunt corporis qui facere velit velit impedit.', 'Et quae ipsa harum. Repudiandae debitis temporibus molestiae unde voluptatum. Aliquam dolore et sunt. Amet ipsa aut dolore eos facere qui. Ipsum temporibus quae veritatis.', 'Illum laudantium recusandae in qui sunt. Qui iste qui blanditiis quis. Magni quisquam consequatur ex eos repellat ea est nesciunt. Rerum praesentium quidem placeat quos numquam.', 'https://via.placeholder.com/640x480.png/0033cc?text=harum', 'sequi-occaecati-quae-consequatur-quos-sapiente-recusandae-quia-et', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(40, 7, 8, 'Illum blanditiis numquam facere blanditiis commodi quaerat.', 'Hic consequatur vero doloribus accusantium molestiae ab dolores. Veritatis ex voluptatem quis explicabo quo. Et sit at amet architecto.', 'Impedit voluptates cum et. Non sed harum libero et unde blanditiis. Rem ad earum reprehenderit atque consequuntur aut eveniet.', 'https://via.placeholder.com/640x480.png/0044ee?text=quas', 'aliquam-maiores-et-rerum-architecto-similique-aspernatur-dolorum', 1, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-21 18:21:13'),
(41, 7, 8, 'Culpa aut porro blanditiis ipsa eum.', 'Et saepe dignissimos quo autem sed ducimus. Ducimus pariatur in quidem molestiae beatae. Sed doloremque a atque hic dolorem earum.', 'Ipsam aut laudantium non. Officia sed quasi iure quibusdam eveniet qui. Occaecati ut et accusantium quia incidunt.', 'https://via.placeholder.com/640x480.png/00bbff?text=eum', 'similique-rerum-id-excepturi-ipsa-qui-dolorem-quibusdam', 0, 0, 0, NULL, 0, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(42, 7, 9, 'Non ab ipsum odit dolor voluptatem.', 'Et a voluptates doloremque est vel nobis rerum. Magni ducimus ea est sapiente dolores et tenetur veritatis. Iste harum eum natus porro aut. Maiores magnam corporis id.', 'Explicabo culpa deserunt et magni. Laboriosam omnis incidunt eos non. Sapiente quam dolor eos sit voluptatum sed dignissimos.', 'https://via.placeholder.com/640x480.png/0066ee?text=quia', 'autem-reiciendis-numquam-asperiores-ut-cumque', 0, 0, 0, NULL, 0, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(43, 7, 10, 'Exercitationem tenetur recusandae quaerat dolorem.', 'Voluptatem sint quo ratione quia minima ut. Eum illum ut dolores perspiciatis quis. Est ad et non excepturi.', 'Dolores optio magnam enim. Minus fugiat nisi itaque et quo laborum maiores. Sed impedit eum officiis quia dolor et.', 'https://via.placeholder.com/640x480.png/0011bb?text=sit', 'repudiandae-inventore-nobis-dicta', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(44, 7, 8, 'Et veniam aut est rerum voluptatibus iure.', 'Qui sint quo quibusdam sint ut. Omnis ea alias aut. Cum dolorem provident qui eum dolorem. Ab dicta in est.', 'Ipsum dolore sunt aut voluptate non explicabo. Ullam voluptatum consequatur dolor. Non ipsum sapiente a et consequatur.', 'https://via.placeholder.com/640x480.png/003344?text=omnis', 'corrupti-rem-inventore-ea', 0, 0, 0, NULL, 0, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(45, 7, 9, 'Explicabo nulla officiis suscipit ratione magni eligendi et.', 'Illum dolorum aperiam provident molestiae. Voluptatem nesciunt eos sequi aut. Dolor provident quasi sint quod. Et tempora vel ut.', 'Voluptas cupiditate dolorum neque autem amet voluptas. Et numquam et maxime deleniti quisquam. Exercitationem laboriosam eveniet rerum omnis eveniet consequuntur. Velit rerum unde debitis veritatis.', 'https://via.placeholder.com/640x480.png/00bb22?text=dolorem', 'iusto-dicta-quo-beatae', 1, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-21 18:19:43'),
(46, 7, 10, 'Consequuntur at quos occaecati iusto deserunt.', 'Quia inventore voluptatem et aut quis praesentium. Reiciendis nobis sed vero vitae facere eum qui rerum. Ut placeat quasi saepe quo.', 'In et dolorem sunt maxime autem molestiae voluptates facere. Deleniti rerum incidunt earum soluta excepturi voluptatem. Ipsam quia voluptas doloribus. Quibusdam dolorem explicabo assumenda autem.', 'https://via.placeholder.com/640x480.png/001144?text=aspernatur', 'numquam-nobis-id-commodi-dolor-nulla', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(47, 7, 8, 'Dolorum consequuntur ut nisi omnis eos laudantium.', 'Facere nesciunt nihil vel. Ratione qui quaerat qui qui cupiditate minima. Necessitatibus ipsa quasi vel possimus. Tempore magnam aut voluptatem corporis eveniet voluptas.', 'Omnis sit consequatur expedita qui et reprehenderit sit. Qui numquam autem dolorem quo hic rerum accusantium soluta. Accusantium quia magnam aut fugiat fugiat.', 'https://via.placeholder.com/640x480.png/006622?text=earum', 'sit-ea-cupiditate-et-dolores-et', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(48, 7, 10, 'Qui sunt exercitationem maxime praesentium.', 'Occaecati ut et ducimus non mollitia quia corporis. Omnis et quos odio eos magnam quia. Est aliquam id est aut et eaque cupiditate. Voluptas id molestiae eius corrupti ipsum dignissimos.', 'Sed libero omnis doloremque quasi ut voluptas omnis. Impedit rerum odit sed. Neque sit ut sit ut beatae.', 'https://via.placeholder.com/640x480.png/00cccc?text=enim', 'ratione-quae-omnis-aut-non', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(49, 7, 9, 'Velit quia voluptatem maxime consectetur quisquam.', 'Totam vitae occaecati modi. Et aliquid molestiae officia enim vel nulla rerum cumque.', 'Saepe labore explicabo explicabo harum quo. Quo sit officiis illum sint laudantium quia. Nemo optio reprehenderit reiciendis ad.', 'https://via.placeholder.com/640x480.png/0011aa?text=laborum', 'itaque-qui-veritatis-eveniet-aut-ut-ad', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(50, 7, 9, 'Ut deserunt qui voluptas autem harum quae qui.', 'Molestiae dolor repellendus ullam asperiores veniam. Sit totam et qui adipisci labore. Sed enim magni minima temporibus sunt mollitia. Quisquam quam quas soluta vitae est et.', 'Illo eius et voluptatibus molestiae. Quia est exercitationem sed illo inventore veritatis. Ut nihil vel voluptatem libero.', 'https://via.placeholder.com/640x480.png/00aa11?text=dolorem', 'esse-beatae-provident-maxime-aut-laboriosam-iure', 0, 0, 0, NULL, 0, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(51, 7, 9, 'Quis dolorum voluptatem odit aut veniam.', 'Quia odit voluptatem quos omnis vitae quod eius alias. Incidunt voluptatem voluptatem et fuga omnis quaerat vel. Debitis aut voluptatum qui cupiditate cumque nostrum.', 'Sint quae cumque facere ea. Corrupti ab omnis reprehenderit quo. Qui recusandae velit impedit nobis sint fugit et laborum.', 'https://via.placeholder.com/640x480.png/00ccaa?text=accusantium', 'officiis-nam-cum-voluptatem-et-minima-possimus', 0, 0, 0, NULL, 0, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(52, 7, 10, 'Dolorem sed sunt modi cumque sit velit quasi.', 'Ad maxime esse veniam consequuntur harum voluptas. Reprehenderit iusto non facere ex nostrum vel at et. Vel et exercitationem vel nisi.', 'Quod accusamus quos inventore in. Aut minima vel ab cum aut. Earum nostrum in vero dicta dolor voluptate.', 'https://via.placeholder.com/640x480.png/006600?text=voluptatum', 'aut-dolore-rerum-sit-incidunt-a', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(53, 7, 10, 'Rerum rerum consectetur iusto laboriosam enim ut odit.', 'Et cum excepturi eos aut officiis occaecati tempora. Possimus dicta enim consequuntur voluptatum et delectus at. Est ducimus pariatur qui delectus et quibusdam.', 'Ducimus qui ipsa voluptatum eos unde. Voluptas aut et non et dolores facere possimus. Quo illo provident explicabo. Ipsa officiis est est odio nihil nesciunt molestias quisquam.', 'https://via.placeholder.com/640x480.png/003311?text=eum', 'voluptas-ut-cumque-delectus-eveniet-cum-repellat-vero', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(54, 7, 10, 'Sunt possimus libero doloremque fugit sed dicta.', 'Impedit qui consectetur aliquid ullam quia nisi odit. Molestias et iste sed quo adipisci quasi culpa. Quia et et ut enim dolores illum. Distinctio corporis exercitationem non qui.', 'Dolorum praesentium vero pariatur est ipsum doloribus ipsa. Vero labore consequatur assumenda consequatur delectus. Ipsam quis est voluptatem saepe. Ea est et reiciendis est soluta.', 'https://via.placeholder.com/640x480.png/002211?text=voluptatem', 'cumque-enim-magnam-minus-placeat-commodi-enim-sint', 0, 0, 0, NULL, 0, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(55, 7, 9, 'Et id temporibus quidem necessitatibus.', 'Eum aut itaque tempora ut et numquam veniam cum. Possimus atque voluptas repudiandae enim aut aliquam nostrum et. Nisi iure commodi culpa sed tempora voluptate.', 'Asperiores modi eligendi corporis et voluptatem. Dolores sint officiis impedit minima. Ex consequatur impedit debitis est voluptatem aut ut. Voluptatem aut adipisci quia earum aut quasi.', 'https://via.placeholder.com/640x480.png/009977?text=ut', 'culpa-repellat-quam-ducimus-est-qui-praesentium-dolorum', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(56, 7, 9, 'Minima quas aspernatur quae quibusdam.', 'Neque saepe consequatur deleniti nobis maiores laborum vel. Non voluptatibus sequi autem aut rem. Voluptatem natus ex temporibus sunt. Eaque cum autem ipsa.', 'Qui exercitationem iure dolorem fugiat itaque a error. Explicabo facere autem praesentium non velit. Reiciendis sit qui quaerat adipisci. Ipsa natus doloremque sed.', 'https://via.placeholder.com/640x480.png/002255?text=ex', 'vero-nihil-et-cupiditate-fuga-ea-sed-harum', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(57, 7, 10, 'Fugiat aut maxime necessitatibus voluptas omnis sed.', 'Nesciunt quis ad aut optio. Nobis laboriosam temporibus aliquid cum. Aut id modi consequuntur quos non recusandae ut praesentium. Nulla dolor blanditiis atque ex nisi quia esse.', 'Illum consequatur quo ipsum dolor. Autem cumque in cupiditate. Impedit repellat rerum perspiciatis exercitationem error quia hic. Eos aut ducimus voluptate minima voluptate molestiae at.', 'https://via.placeholder.com/640x480.png/002299?text=eaque', 'ea-quaerat-cupiditate-qui-dolorem-magnam-consequuntur', 0, 0, 0, NULL, 0, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(58, 7, 9, 'Placeat beatae pariatur ut qui ducimus hic.', 'Ea sed iusto enim in hic et. Explicabo voluptate dolore qui et dolore sit in voluptate. Quis quia quia quidem.', 'Adipisci voluptatum est beatae aspernatur aut tempore. In blanditiis et nemo in aperiam pariatur inventore. Sed nam hic facilis esse totam non aliquam et. Officiis at recusandae in molestiae cum ut.', 'https://via.placeholder.com/640x480.png/002200?text=sit', 'ut-facilis-delectus-odit-aspernatur-dolor-voluptatem-porro-voluptas', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(59, 7, 10, 'Neque vero optio eos minus.', 'Dicta ipsam voluptate dolores accusamus illo ut. Molestiae quaerat aperiam qui quia illo. Tempora totam et veritatis exercitationem omnis aspernatur id.', 'Natus aperiam quaerat omnis voluptas. Laudantium et rerum vel rerum. Atque perspiciatis consequuntur ullam et consequatur mollitia est. Vel quam sunt praesentium.', 'https://via.placeholder.com/640x480.png/0000ff?text=veritatis', 'sapiente-voluptas-est-praesentium-ipsa-perspiciatis-corporis-quia', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(60, 7, 9, 'Deserunt voluptatem suscipit cum et sequi iure ex.', 'Iusto tenetur magnam non maiores fugit ut et. Consequatur et ut recusandae libero. Facere explicabo architecto ex perferendis omnis mollitia amet aut. Ut temporibus quae qui provident saepe.', 'Iusto vel ad dolorem. Et sequi qui assumenda corporis. Repellendus sed dicta consequatur architecto cum.', 'https://via.placeholder.com/640x480.png/00ee88?text=laudantium', 'debitis-mollitia-autem-alias', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(61, 7, 9, 'Qui quo consequatur et officia velit velit.', 'Aspernatur aperiam numquam nobis provident deserunt quisquam. Aut incidunt accusantium nulla est ad ea. Quod minus animi velit dolorem. Sed eos quis provident dolorem sapiente sunt ipsam.', 'Porro sint quas voluptates aliquid. Esse optio accusantium consectetur dolores et laboriosam eveniet. Consequuntur amet soluta repellendus aliquid. Nostrum at in quibusdam a.', 'https://via.placeholder.com/640x480.png/00aaff?text=quis', 'non-voluptatem-odit-consectetur-enim-eius-fugit-quasi-dolorem', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(62, 7, 9, 'Vel omnis aliquid sed dicta dolores.', 'Voluptatem provident modi quaerat est. Qui et qui dicta quibusdam laborum mollitia. Occaecati nam quia itaque.', 'Fugiat tempora est sapiente qui adipisci quaerat. Totam natus voluptas odio autem ratione in. Veritatis qui nostrum et architecto adipisci. Ad voluptate tenetur nulla quaerat quae sit.', 'https://via.placeholder.com/640x480.png/006600?text=laboriosam', 'sed-aspernatur-fugiat-ea-facere-pariatur-aut-aut', 0, 0, 0, NULL, 0, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(63, 7, 9, 'Unde sit sed et incidunt eius qui.', 'Sapiente consequatur error aut quae. Suscipit asperiores quia tenetur dolorem ea fugiat. Cupiditate earum unde aut distinctio unde quia.', 'Earum hic ut quo accusamus quia. Modi quaerat beatae amet velit beatae aliquam. Porro earum vero velit consequatur eos sunt odio debitis. Repellendus sit et unde.', 'https://via.placeholder.com/640x480.png/004433?text=hic', 'est-est-quis-enim-nostrum-blanditiis', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(64, 7, 8, 'Et iusto impedit tempora consequatur.', 'Quia at temporibus ea in voluptatem. Mollitia cum voluptatum odit labore. Voluptatibus sint doloremque pariatur et nihil et sunt autem. Amet ab expedita minima eligendi.', 'Sunt sunt cumque sunt quia. Dolorum perspiciatis quasi temporibus eos reiciendis. At quod omnis et quisquam consequatur suscipit sunt. Eos cum impedit et et aperiam omnis.', 'https://via.placeholder.com/640x480.png/00cc11?text=ut', 'dolore-nihil-mollitia-enim-dolorem-eos', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(65, 7, 9, 'Veritatis et recusandae dicta laudantium velit aut autem.', 'Blanditiis est qui ut similique. Fugiat dolore vitae sed sed magnam vero dolore.', 'Aut magni nobis molestias veniam qui aut labore. Veniam repudiandae et laudantium est. Praesentium et ea et adipisci atque et maxime facilis.', 'https://via.placeholder.com/640x480.png/007777?text=totam', 'totam-esse-ipsam-aliquam-eum-aspernatur-ut-nemo-tenetur', 0, 0, 0, NULL, 0, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(66, 7, 10, 'Fugiat quia aut fugit ipsam in.', 'Doloremque consequatur cumque et quisquam provident quidem asperiores. Ut rerum aut perferendis pariatur dolorem sed. Dolor fuga animi eos velit repellat rem reiciendis.', 'Temporibus aut sint molestiae voluptatum maiores. Sapiente sit consectetur recusandae dolorem corporis autem temporibus. Ut amet in rerum molestias.', 'https://via.placeholder.com/640x480.png/00cc33?text=eius', 'inventore-qui-illum-aut-quo-labore-quaerat', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(67, 7, 9, 'Quaerat sequi dolores velit illo omnis.', 'Minus quo sapiente qui alias laborum molestias dolores necessitatibus. Ipsa et assumenda nam et laudantium vitae. Qui excepturi accusantium voluptate officiis labore voluptas.', 'Alias aspernatur omnis ex voluptatem magni. Sunt beatae ut consequatur qui similique cupiditate. Fugiat nisi sint fugiat quas ut.', 'https://via.placeholder.com/640x480.png/004466?text=recusandae', 'fugit-consequatur-tenetur-aspernatur-dolor', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(68, 7, 10, 'Voluptatum sed minus sed facilis quidem expedita quaerat.', 'Temporibus incidunt magni consequatur accusantium pariatur. Neque ab quia quis dolore quia. Enim et quos commodi incidunt sunt nisi ut. Quia deleniti vel doloribus commodi qui eligendi eos corporis.', 'Voluptatem ut in quis earum neque quod. Quis et sint corrupti totam debitis quod consequatur possimus. Odio eum voluptatem natus sit eveniet porro impedit.', 'https://via.placeholder.com/640x480.png/00cc99?text=praesentium', 'doloremque-quis-et-aperiam-delectus-eos', 0, 0, 0, NULL, 0, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(69, 7, 9, 'Rerum natus illum iusto magni quis distinctio explicabo laborum.', 'Animi velit dolores optio odit et. Delectus repellat dolores et non molestiae ut in. Consequatur ut recusandae reiciendis. Molestiae voluptate ullam totam voluptatem et aut incidunt omnis.', 'Tenetur quia facere enim neque dolorem quia. Et consectetur id est expedita ut dolores. Veniam et consequatur quo rem maiores commodi.', 'https://via.placeholder.com/640x480.png/00ee11?text=qui', 'laborum-culpa-delectus-sint-ut-et-itaque', 0, 0, 0, NULL, 0, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(70, 7, 8, 'Ut inventore quibusdam rerum rerum eaque nobis.', 'Id qui voluptatem aut id voluptatem. Hic aut occaecati velit et numquam. Dolore aperiam hic eligendi debitis eum et sint. Quod occaecati suscipit corrupti aut voluptatem accusantium incidunt.', 'Et molestiae maiores soluta dignissimos. Porro est quia quam neque voluptatem. Consectetur quis mollitia quia ad aut occaecati est. Eveniet et in ut.', 'https://via.placeholder.com/640x480.png/00eedd?text=aut', 'sit-adipisci-nisi-impedit-et-consequatur-iure-eligendi-tempora', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(71, 7, 8, 'Impedit qui aut accusamus delectus quos ut.', 'Vel et architecto omnis pariatur. Voluptatum voluptas id quis voluptas recusandae corporis excepturi. Alias odit est ut sapiente repellat quasi.', 'Corrupti delectus perferendis omnis voluptatem. Id voluptatem est sint natus totam eligendi. Aliquid itaque suscipit accusantium nesciunt dignissimos sapiente officia.', 'https://via.placeholder.com/640x480.png/007788?text=vitae', 'sapiente-esse-qui-beatae-assumenda', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(72, 7, 10, 'Commodi facere saepe officia tempora deleniti.', 'Ullam totam ea et aperiam. Voluptas porro dolorem molestiae. Sed at nesciunt recusandae vel eaque illo non. Ad temporibus quasi quis dolores aperiam ratione nobis sint.', 'Repellat debitis debitis harum rem itaque qui autem. Et eos omnis voluptatibus dolor molestiae. Et assumenda delectus in. Iure modi suscipit sed rem nam.', 'https://via.placeholder.com/640x480.png/000011?text=est', 'exercitationem-quam-perferendis-blanditiis-sunt-earum-commodi-autem-error', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(73, 7, 10, 'Corrupti nesciunt aliquid voluptas dignissimos enim sapiente rem.', 'Fugit ex sunt rerum sint iste ut. Quisquam enim provident asperiores nihil. Ullam deserunt dolorum aut sed distinctio velit. Rem rem ea nostrum recusandae ex illum fugit et.', 'Quibusdam esse consequatur facilis perspiciatis voluptatibus autem dolorem. Voluptate expedita qui atque. Excepturi et debitis sint autem et.', 'https://via.placeholder.com/640x480.png/00bbdd?text=id', 'officia-ipsa-est-velit', 0, 0, 0, NULL, 0, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(74, 7, 10, 'Sed earum laboriosam voluptas ut ab libero reiciendis.', 'In rerum et aliquid voluptas. Qui nihil quas tempora accusamus. Omnis nemo maxime commodi voluptatem molestias quidem. Aspernatur quia quo id occaecati iste eaque ut ratione.', 'Beatae numquam totam hic voluptatem sunt quasi unde. Velit quia quia corrupti sit. Expedita aliquam exercitationem accusamus est.', 'https://via.placeholder.com/640x480.png/0044ee?text=et', 'illum-tenetur-et-explicabo-quidem', 0, 0, 0, NULL, 0, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(75, 7, 10, 'Aut unde assumenda dolorem et rerum dolor voluptate ex.', 'Et delectus ducimus provident excepturi perspiciatis. Rerum vero nemo dolore cumque animi. Explicabo impedit qui aut doloribus minima.', 'Quisquam veniam esse libero hic suscipit praesentium eum sequi. Reiciendis ut qui temporibus rerum nulla impedit. Recusandae amet porro officia corporis dolor dicta veniam totam.', 'https://via.placeholder.com/640x480.png/008888?text=vel', 'illum-quis-ut-rem-quae', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(76, 7, 10, 'Tempora excepturi odit eveniet incidunt at porro ut.', 'Quo qui libero itaque enim. Laborum laboriosam vel dicta repudiandae nisi dolor. Explicabo illo hic adipisci ea voluptatem eveniet quisquam ipsa.', 'Pariatur adipisci velit cumque earum. Eum consequatur ratione tenetur praesentium qui voluptas aut laudantium. Mollitia non consequatur quia modi veritatis aut. Fugiat a numquam quidem nemo.', 'https://via.placeholder.com/640x480.png/00ddaa?text=debitis', 'est-facilis-placeat-et-rem', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(77, 7, 8, 'Exercitationem voluptatem quia perferendis ullam officia similique omnis.', 'Optio aut ex amet dolorum. Dignissimos consequatur rem voluptatem nihil. Voluptatem eveniet minus iusto officia et nam fuga dolores. Quis quibusdam sed nobis quisquam eum perspiciatis.', 'Consectetur voluptas rerum autem voluptate nobis et corrupti. Est voluptatem quod exercitationem dolorem nostrum est commodi. Eligendi hic nihil consectetur nemo rem occaecati repudiandae qui.', 'https://via.placeholder.com/640x480.png/0000aa?text=illum', 'dolorem-rerum-eos-ut-nemo-voluptatem', 0, 0, 0, NULL, 0, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(78, 7, 9, 'Suscipit quo culpa asperiores ducimus nesciunt iste et.', 'Voluptatem non nihil magni. Id labore alias non quasi. Autem et odit illo et culpa et. Inventore distinctio vitae illo aut iusto. Facere voluptatum non labore non libero. Qui quod ex nesciunt ab et.', 'Nemo adipisci iusto corporis ullam quisquam qui. Facere suscipit ea quaerat qui. Atque excepturi impedit qui doloribus.', 'https://via.placeholder.com/640x480.png/0033cc?text=ipsum', 'repellendus-voluptas-consequatur-nihil-aut-sint-itaque-praesentium', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(79, 7, 10, 'Magnam pariatur et rerum similique minima odit eaque placeat.', 'Et veritatis ut animi omnis nihil omnis. Minus molestiae debitis eum officiis et vel. In consequatur dolor optio ducimus asperiores quibusdam doloribus. Neque illo iure et ducimus qui totam maiores.', 'Aspernatur mollitia et dolor voluptatem. Molestias delectus velit iusto. Id cum in qui molestiae laudantium enim.', 'https://via.placeholder.com/640x480.png/00ff66?text=voluptate', 'quam-ut-totam-velit-consectetur-dignissimos', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(80, 7, 8, 'Sapiente sapiente beatae quasi accusantium praesentium rerum.', 'Aut ducimus nisi odit modi. Excepturi dolor facere ut tempore debitis. Iure doloribus exercitationem quam sunt.', 'Magnam pariatur nam et nobis sunt molestiae quia. Ut consectetur sapiente enim nam. Ea molestiae sit amet dicta eum voluptatibus nemo.', 'https://via.placeholder.com/640x480.png/0066ee?text=necessitatibus', 'in-perspiciatis-consequatur-aut-eum-a-corrupti', 0, 0, 0, NULL, 0, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(81, 7, 9, 'Necessitatibus ut quas nulla.', 'Nesciunt in assumenda vel iusto quia voluptatem. Dolor dolor quia aut. Fuga illo id minus distinctio alias neque. Esse et quos et in sit.', 'Sunt quo laborum qui et. Dolorem atque dolores quidem optio nulla. Fugiat magnam porro harum repellendus. Quis libero perspiciatis ad similique. Ullam repudiandae omnis vel sed magnam laborum.', 'https://via.placeholder.com/640x480.png/003399?text=nam', 'deserunt-cumque-consequatur-reprehenderit-voluptatum', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(82, 7, 8, 'Veniam similique soluta quasi ut at et magnam.', 'Dicta aut illo commodi quo totam ex debitis. Voluptates et voluptas accusamus ipsam facilis. Perferendis enim consequuntur provident et cupiditate sed.', 'Eius deleniti non non et et. Et minima deleniti quaerat nam.', 'https://via.placeholder.com/640x480.png/00dd00?text=non', 'aut-alias-autem-odit-vero', 1, 0, 0, NULL, 0, '2022-07-15 10:17:34', '2022-07-19 08:15:22'),
(83, 7, 10, 'Sed quis et asperiores est rerum vel velit.', 'Sed hic vel reiciendis ut. Ad culpa aspernatur quasi. Officiis facere laudantium voluptas veniam quia. Incidunt quibusdam consequuntur sint omnis.', 'Quis voluptatem natus quia. Culpa ut quam doloremque. Consectetur deserunt est atque adipisci aut corrupti deleniti.', 'https://via.placeholder.com/640x480.png/002222?text=quis', 'id-aspernatur-natus-incidunt-dolor-sequi-rerum', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(84, 7, 10, 'Veniam id ut est possimus aut atque voluptatum.', 'Quisquam voluptas minus labore doloribus in qui. Et corrupti id animi qui earum. Quasi et est ut omnis eum. Enim ut temporibus eveniet quas eos vero.', 'Est voluptatem consequatur distinctio fugiat velit reprehenderit. Et adipisci dolor sed amet qui officia. Voluptates dicta est necessitatibus repellat corrupti. Id et autem repellendus facere.', 'https://via.placeholder.com/640x480.png/00ccee?text=iste', 'praesentium-tempore-hic-quidem', 0, 0, 0, NULL, 0, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(85, 7, 9, 'Omnis dolores nisi autem doloribus omnis deserunt sapiente.', 'Vitae sapiente similique corporis quibusdam qui ut similique. Odit voluptates optio consequuntur animi. Ut voluptate fugiat adipisci fugiat est. Earum non labore odit quaerat magni dolor cum sint.', 'Nisi velit saepe accusantium eum laboriosam ipsam aperiam. Dolores aperiam voluptatem rerum rerum quia et. In vel quae molestias perspiciatis. Nesciunt placeat labore totam vel magnam.', 'https://via.placeholder.com/640x480.png/0055bb?text=eveniet', 'rerum-veniam-et-molestiae-debitis-aut-dolorum-voluptates-eum', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(86, 7, 9, 'Quaerat autem in non commodi voluptates.', 'Doloribus incidunt quis quia vero ab quam officia esse. Provident quia omnis veritatis similique. Facilis sunt voluptates in repellendus laudantium.', 'Aliquam nostrum sit et numquam architecto ut et. Animi similique sapiente autem dolore optio porro quos magni. Illum eum quis adipisci sint nam unde. Provident debitis non sit placeat.', 'https://via.placeholder.com/640x480.png/00cc22?text=omnis', 'sed-dolores-laudantium-harum-aut-quia-non', 0, 0, 0, NULL, 0, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(87, 7, 8, 'Inventore et ipsa reiciendis ipsa ut voluptas.', 'Non nulla blanditiis dolore libero et dolores dolores. Voluptas voluptatem neque occaecati. Voluptatem voluptatem neque sequi aut non rerum magnam.', 'Ullam illo quisquam at repellendus officiis ut fuga. Voluptas qui quia reprehenderit non non repellendus consequatur. Voluptas minima at delectus possimus tempora quia.', 'https://via.placeholder.com/640x480.png/00aabb?text=qui', 'omnis-animi-dolores-suscipit', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(88, 7, 8, 'Explicabo similique labore ut quia nisi.', 'Suscipit perspiciatis debitis qui consectetur veritatis. Quas quod doloremque tempore ut porro esse ipsam accusamus. Aut culpa non doloremque recusandae perspiciatis explicabo.', 'Facilis quia eos et nam id. Id voluptas et quis consequatur harum id sint. Molestiae dignissimos tenetur iste asperiores laudantium.', 'https://via.placeholder.com/640x480.png/00bb77?text=ducimus', 'omnis-aperiam-et-fugit-similique-temporibus-quia', 0, 0, 0, NULL, 0, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(89, 7, 9, 'Repudiandae rerum asperiores eveniet quidem.', 'Nisi aut eum eum quas debitis deserunt eveniet. Reprehenderit quae fuga eius eum magnam aut fugit. Sequi hic sapiente qui eligendi sit qui voluptas.', 'Optio est ad est impedit. Ex numquam necessitatibus commodi beatae et laboriosam deleniti. Est quisquam molestias quidem sed. Voluptas eaque fugit ut accusantium molestiae.', 'https://via.placeholder.com/640x480.png/00ccaa?text=expedita', 'ea-sit-autem-aut-ab-id', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(90, 7, 8, 'Aperiam animi omnis reprehenderit modi quod explicabo qui.', 'Iusto dignissimos minus non quas sunt nihil. Itaque necessitatibus omnis libero. Aut repellat aut velit deserunt nihil. Magnam ut labore non et soluta.', 'Qui tenetur rerum voluptates doloribus illo eos. Beatae eos dolore odit est aut. Sunt praesentium ut earum blanditiis.', 'https://via.placeholder.com/640x480.png/0022ff?text=incidunt', 'eum-beatae-ut-temporibus-tempore-sint-accusantium-tempore', 0, 0, 0, NULL, 0, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(91, 7, 10, 'Excepturi et adipisci eos sequi occaecati et.', 'Deserunt neque quod voluptates atque. Et quam esse in reprehenderit vel at.', 'Omnis rerum aut est quis soluta soluta. Rerum dolorum voluptatem voluptas ratione aut dolorem veritatis.', 'https://via.placeholder.com/640x480.png/009911?text=est', 'recusandae-exercitationem-facere-ut-eos-beatae-sit', 0, 0, 0, NULL, 0, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(92, 7, 9, 'Explicabo accusantium quia consequatur ratione architecto.', 'At culpa ut veniam. Fugiat pariatur doloremque ad illum nam dolor. Laborum ut odio ad iste sit nesciunt magni quis.', 'Sit sed dolores sed excepturi ut est. Iure perspiciatis maxime temporibus pariatur. Eligendi ea eos est nobis enim at quia.', 'https://via.placeholder.com/640x480.png/00ff00?text=natus', 'veniam-deserunt-adipisci-cumque-doloremque', 0, 0, 0, NULL, 0, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(93, 7, 10, 'Alias eos temporibus aut molestiae qui aliquam.', 'Quasi nesciunt odit aut molestias quis nemo. Molestiae dolore minima tempora voluptas atque sed odio. Rerum aliquam itaque earum id ratione ea. Architecto quisquam et ea et consectetur.', 'Aliquid nam et nesciunt et adipisci. Omnis quis repudiandae eaque praesentium. Qui perferendis voluptatem omnis qui velit. Unde et ut consectetur.', 'https://via.placeholder.com/640x480.png/0000cc?text=ut', 'odio-sunt-blanditiis-aut-fugiat-sed-modi-reprehenderit-incidunt', 0, 0, 0, NULL, 0, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(94, 7, 8, 'Dolores eos quas soluta quo ut.', 'Sed ab et cum id libero dolorum voluptates. Sit et autem dolores illo veniam quos.', 'Consequatur at porro dolorem quia. Sequi alias est voluptatem et nisi alias dicta. Ducimus ea sit nihil expedita rem vitae animi.', 'https://via.placeholder.com/640x480.png/00ff88?text=eius', 'odit-maxime-quaerat-facilis-modi-et-minus', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(95, 7, 9, 'Eos sunt velit harum neque rerum.', 'Voluptatem dolor culpa odio repellat veniam ut. Laborum repellat soluta rerum quibusdam.', 'Assumenda dicta culpa et mollitia officia. Dolorem impedit qui consectetur eos. Eaque sint ex quasi iste voluptatem ut. Voluptas quia quas dolorem temporibus eos quam illum libero.', 'https://via.placeholder.com/640x480.png/0011ff?text=sit', 'et-labore-corrupti-velit-labore-modi', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(96, 7, 10, 'Qui libero aliquid nostrum nulla nihil.', 'Unde distinctio vitae labore reiciendis soluta. Eos sint necessitatibus distinctio consequatur nihil vero ut. Odit qui id vitae officia suscipit.', 'Ipsam culpa aperiam voluptatum ratione rerum. Voluptates saepe animi possimus ut libero dolores. Repudiandae possimus recusandae non explicabo praesentium.', 'https://via.placeholder.com/640x480.png/005555?text=repellat', 'dolorum-qui-officiis-saepe-nobis-laudantium-vel-soluta', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(97, 7, 10, 'Asperiores possimus tempora omnis et qui et facere.', 'Quaerat ab consectetur laborum nam. Ducimus aut et nemo omnis sequi ad odio ipsum. Nulla aut consequatur in id eligendi aut.', 'Ea quo quia enim. Repellat rerum nam esse assumenda recusandae rerum maiores. Vel earum placeat magnam odio. Dicta ullam sunt nam ipsam.', 'https://via.placeholder.com/640x480.png/0011aa?text=qui', 'optio-placeat-ut-voluptates-molestiae', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(98, 7, 9, 'Ut ipsam sed consequatur quae minus deserunt laudantium quam.', 'Iusto ut soluta nesciunt laudantium amet rerum. Perferendis enim voluptatum hic voluptas ut. Sed quisquam neque minus earum corporis cum et. Aut dolor molestiae vero ratione quae.', 'Quae rerum sint a. In sit esse cum accusamus assumenda.', 'https://via.placeholder.com/640x480.png/0044aa?text=molestias', 'molestias-harum-ipsam-cumque-facere-fugiat-sed-enim-ipsam', 0, 0, 0, NULL, 1, '2022-07-15 10:17:34', '2022-07-15 10:17:34'),
(99, 7, 9, 'Impedit officiis unde hic ab in reprehenderit aliquid.', 'Quis vel sit quia. Nam voluptatem eum molestiae illum. Fugit doloribus exercitationem repudiandae modi officiis. Quod non quo rerum quidem.', 'Distinctio adipisci accusantium voluptate sed est. Quia doloremque id nemo eligendi veniam aliquid. Est voluptas qui est magni consequuntur totam consequatur nisi. Reiciendis deleniti dolor ipsa et.', 'https://via.placeholder.com/640x480.png/00aa66?text=dolorem', 'consequatur-consequatur-dolor-molestiae-deleniti-eaque-qui', 0, 0, 0, NULL, 0, '2022-07-15 10:17:35', '2022-07-15 10:17:35'),
(100, 7, 8, 'Maxime modi tempore impedit corrupti nihil vero laboriosam.', 'Magni officia quasi non facere numquam at qui. Animi minima molestiae fugiat maxime. Voluptatem quidem id quia aspernatur iusto modi.', 'Omnis autem nisi dicta. Sit possimus totam totam distinctio iure. Quisquam provident veritatis voluptatem et ad fugit eum occaecati.', 'https://via.placeholder.com/640x480.png/00cc99?text=aliquid', 'vel-veniam-dolores-praesentium-consequatur-dolorem-aut-sed', 0, 0, 0, NULL, 1, '2022-07-15 10:17:35', '2022-07-15 10:17:35'),
(101, 7, 9, 'Ipsum culpa facere debitis eius quidem sunt.', 'Quo inventore praesentium molestiae dolor vel tempore voluptates et. Nobis hic qui repellat est ullam sed eos. Rem repellendus est doloribus autem sequi quaerat.', 'Sit ipsam sed quia enim. Harum id iusto molestiae inventore nam. Voluptatem sed ipsam est tempora. Sequi ut non harum aliquid commodi.', 'https://via.placeholder.com/640x480.png/00ee77?text=repellat', 'consequatur-iusto-assumenda-voluptatem-ut-natus-ea', 0, 0, 0, NULL, 1, '2022-07-15 10:17:35', '2022-07-15 10:17:35'),
(102, 7, 9, 'Dolorum maiores ab sit excepturi.', 'Voluptatibus voluptatem quidem dolorem maxime esse maiores. Aut voluptatem vitae sint repellendus voluptatem expedita. Minus necessitatibus ullam corporis.', 'Saepe enim dolorem est dolor delectus. Enim rerum eos assumenda aperiam autem nostrum libero.', 'https://via.placeholder.com/640x480.png/006666?text=voluptatem', 'cupiditate-tempora-fugiat-aut', 0, 0, 0, NULL, 0, '2022-07-15 10:17:35', '2022-07-15 10:17:35'),
(103, 7, 9, 'Quaerat facilis nihil pariatur voluptatem suscipit.', 'Ullam ducimus ad ab culpa et praesentium dolorum. Inventore sint quod provident vel in nihil sunt. Consequatur vitae optio qui architecto aliquam. Fuga fuga sed corporis.', 'Labore in dicta quam ut modi. Non voluptatem mollitia dolorem debitis aspernatur odio. Possimus laudantium recusandae autem illo est sed. Incidunt voluptatem debitis autem non dignissimos aperiam.', 'https://via.placeholder.com/640x480.png/001188?text=et', 'eveniet-repudiandae-ad-qui-soluta', 0, 0, 0, NULL, 1, '2022-07-15 10:17:35', '2022-07-15 10:17:35'),
(104, 7, 9, 'Reprehenderit reiciendis est molestiae maiores unde.', 'Molestiae cupiditate voluptatem enim quia velit expedita ducimus quia. Beatae incidunt tenetur corrupti et quae ad. Quis et aut alias occaecati qui quis minima nulla. Aut ut ut asperiores autem.', 'Molestiae porro molestiae hic quia non quia. Nobis voluptas sint consequatur minima. Dolorem sed eveniet iure et provident. Magnam laboriosam dolorum et voluptatum eveniet vero qui doloremque.', 'https://via.placeholder.com/640x480.png/007700?text=delectus', 'accusamus-aperiam-molestias-illo-aut', 0, 0, 0, NULL, 1, '2022-07-15 10:17:35', '2022-07-15 10:17:35'),
(105, 7, 9, 'Exercitationem officiis sapiente aut dolor perspiciatis.', 'Nostrum modi et enim fuga deleniti. Maxime numquam et rerum in. Delectus sed vel rerum fugit sint est. Vel dolor fugiat architecto. Dolorem id sint magni voluptatum aut et.', 'Incidunt cupiditate est corporis quia consequuntur eius id. Dignissimos quisquam ipsa amet amet nobis est. A veritatis quis sapiente consectetur voluptatem.', 'https://via.placeholder.com/640x480.png/00cc00?text=dolores', 'id-accusantium-delectus-officiis', 0, 0, 0, NULL, 1, '2022-07-15 10:17:35', '2022-07-15 10:17:35'),
(106, 7, 8, 'Unde nemo dolore illum quia nostrum.', 'Et praesentium animi est aliquam. Corrupti atque ad quis delectus.', 'Perferendis atque excepturi voluptates cupiditate voluptatibus sunt. Et quasi perspiciatis natus rem aperiam. Est quia quia ipsum sapiente occaecati.', 'https://via.placeholder.com/640x480.png/00eeff?text=exercitationem', 'veritatis-asperiores-optio-sunt-vero', 0, 0, 0, NULL, 1, '2022-07-15 10:17:35', '2022-07-15 10:17:35'),
(107, 7, 9, 'Est voluptatum exercitationem ab aliquid doloremque ducimus quis.', 'Provident aut in distinctio et similique voluptatibus hic nam. Molestiae voluptatem velit nulla. Nesciunt reiciendis consequatur sapiente exercitationem.', 'Occaecati sed expedita eos reprehenderit nemo. Nemo quam nesciunt quis ut. Aut tempore harum sit error dolores voluptate quibusdam.', 'https://via.placeholder.com/640x480.png/006655?text=libero', 'inventore-numquam-voluptas-accusamus-commodi-ut-illum-nam', 0, 0, 0, NULL, 1, '2022-07-15 10:17:35', '2022-07-15 10:17:35'),
(108, 7, 9, 'Sint soluta consectetur quo.', 'Sit ut ut consequatur mollitia. Hic quia porro perferendis et qui ex animi. Rerum qui quia qui. Rerum incidunt et itaque aut officiis.', 'Nam eligendi modi impedit consequatur qui. Reprehenderit ut vitae error repellendus ea enim. Qui veritatis voluptas aut vel assumenda.', 'https://via.placeholder.com/640x480.png/00aaee?text=ab', 'provident-reiciendis-magnam-odit-saepe-cupiditate-nihil-dicta-ut', 0, 0, 0, NULL, 1, '2022-07-15 10:17:35', '2022-07-15 10:17:35'),
(109, 7, 9, 'Soluta distinctio sed nihil quasi molestiae sed vero.', 'Quia doloribus rerum doloribus earum nobis aut provident. Autem consequuntur mollitia atque debitis eum.', 'Laborum nesciunt tempora et. Totam ipsum ratione veniam repellat. Reiciendis illum sapiente saepe omnis magnam aperiam nihil. Commodi fugit voluptatem molestiae dolor qui distinctio ut consectetur.', 'https://via.placeholder.com/640x480.png/00ee11?text=voluptas', 'laudantium-est-sed-magnam-dolorem-dolores-reprehenderit-et-omnis', 0, 0, 0, NULL, 0, '2022-07-15 10:17:35', '2022-07-15 10:17:35');
INSERT INTO `posts` (`id`, `user_id`, `category_id`, `title`, `content`, `description`, `image`, `slug`, `number_views`, `number_comments`, `number_likes`, `new_post`, `highlight`, `created_at`, `updated_at`) VALUES
(110, 7, 10, 'Hic est laborum ipsa autem.', 'Enim eum nostrum nisi delectus esse laborum et. Aut autem consequatur neque et ipsam vero optio reiciendis. Necessitatibus quam unde occaecati qui commodi. Molestias non ut id facere qui quis.', 'Voluptatem aut aspernatur iste aspernatur dolorem neque repudiandae sint. Repellat nostrum neque et dolor quia iure animi. Rem fuga maiores voluptas molestiae corrupti odio.', 'https://via.placeholder.com/640x480.png/0044aa?text=cumque', 'ut-alias-qui-sint', 0, 0, 0, NULL, 1, '2022-07-15 10:17:35', '2022-07-15 10:17:35'),
(111, 7, 8, 'Fugiat numquam nulla laborum harum cumque fugit omnis quaerat.', 'Ut nostrum aperiam odit amet aut est. Voluptate eos nihil corporis et incidunt.', 'Ex error nulla temporibus perferendis quia. Et placeat et enim sit et voluptate. Vel illum odio impedit accusantium minus. Eius ab quia fugiat neque laboriosam fugit voluptatem sed.', 'https://via.placeholder.com/640x480.png/0099dd?text=labore', 'velit-velit-dicta-blanditiis-a', 0, 0, 0, NULL, 0, '2022-07-15 10:17:35', '2022-07-15 10:17:35'),
(112, 7, 8, 'Tempore est velit debitis velit aut.', 'Magnam in pariatur alias ducimus adipisci ab explicabo. Exercitationem modi nostrum quo expedita. Est doloremque voluptatibus voluptatem veritatis ratione accusamus.', 'Minus molestiae rerum cupiditate voluptates quasi voluptatem. Error commodi labore minima atque sed placeat. Eum totam est qui laborum.', 'https://via.placeholder.com/640x480.png/00dd00?text=tempore', 'sed-molestias-quod-nostrum-facere-dolor-ipsam-iusto', 0, 0, 0, NULL, 1, '2022-07-15 10:17:35', '2022-07-15 10:17:35'),
(113, 7, 8, 'Fugiat veniam ea expedita aut.', 'Sed repellendus qui fugiat enim. Ea tempora eum error vitae voluptatibus autem voluptas.', 'Sint et rem rerum consequuntur ipsum. Deserunt vitae itaque ipsum. Dolor mollitia nemo blanditiis in qui aut repudiandae.', 'https://via.placeholder.com/640x480.png/00aaff?text=enim', 'rerum-possimus-odit-perspiciatis-quis-temporibus-qui-provident', 0, 0, 0, NULL, 0, '2022-07-15 10:17:35', '2022-07-15 10:17:35'),
(114, 7, 10, 'Id qui voluptatem et deleniti.', 'Molestiae cumque voluptas et error sed est. Vel excepturi eos dolorem. Quae consequatur quasi perferendis mollitia ex quae. At sint repudiandae velit expedita ut.', 'Et exercitationem enim et consequatur. Atque voluptas ipsa quia non quas assumenda. Eum amet eos velit quis cupiditate deserunt.', 'https://via.placeholder.com/640x480.png/00bb88?text=incidunt', 'et-est-ullam-aliquam-eius-veritatis-ea-ipsa', 0, 0, 0, NULL, 0, '2022-07-15 10:17:35', '2022-07-15 10:17:35'),
(115, 7, 9, 'Amet autem quis officia qui enim labore natus.', 'Nam rem et magnam eos. Quas alias nam quos dolor reprehenderit. Nemo consectetur temporibus cum quos aut neque.', 'Voluptatem deleniti ut sequi commodi illo quasi corporis. Et deleniti praesentium fugiat laborum. Repellat exercitationem nemo qui sunt sequi nostrum ut.', 'https://via.placeholder.com/640x480.png/0000aa?text=quisquam', 'nobis-vero-eos-atque-aut-dolor-similique-velit', 0, 0, 0, NULL, 0, '2022-07-15 10:17:35', '2022-07-15 10:17:35'),
(116, 7, 9, 'Velit quo et sed qui dolorem.', 'Ab exercitationem commodi officia aperiam nemo. Et ea temporibus quas dolorem. Voluptatum fuga illo officia omnis quis ullam corporis. Autem expedita harum tempore similique autem ratione.', 'Totam minima aperiam aliquid. Accusamus facilis delectus nesciunt fuga minima. Vero et ullam facilis fuga. Nostrum optio incidunt quae cum odio aliquam quia mollitia.', 'https://via.placeholder.com/640x480.png/003344?text=tenetur', 'vel-laudantium-quam-sed-laudantium', 0, 0, 0, NULL, 1, '2022-07-15 10:17:35', '2022-07-15 10:17:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user',
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `role`, `avatar`, `created_at`, `updated_at`) VALUES
(7, 'Trần Văn Long', 'longtv97.cnt@gmail.com', NULL, '$2y$10$UamRb/lBGp42QhlIZAyXh.Vb3d1QVmz7O01JDQs/cIR97Hk4P5gJm', NULL, 'user', '3.jpg', '2022-07-12 04:06:47', '2022-07-22 02:19:12'),
(14, 'longtv', 'mylightparadise@gmail.com', NULL, '$2a$12$F6CdSE549z6wHfEu6vX0.enT9v2eTaDbk/EOmYsPl1sKyzedkFrPO', NULL, 'admin', NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories_posts`
--
ALTER TABLE `categories_posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories_posts`
--
ALTER TABLE `categories_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories_posts` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
