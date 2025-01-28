-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 29 2022 г., 07:24
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bd_strim`
--

-- --------------------------------------------------------

--
-- Структура таблицы `account`
--

CREATE TABLE `account` (
  `email` varchar(150) CHARACTER SET utf8 NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 NOT NULL,
  `name` varchar(40) CHARACTER SET utf8 NOT NULL,
  `avatar` varchar(200) CHARACTER SET utf8 NOT NULL,
  `fon` varchar(300) CHARACTER SET utf8 NOT NULL,
  `ball` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `account`
--

INSERT INTO `account` (`email`, `password`, `name`, `avatar`, `fon`, `ball`) VALUES
('repeat@mail.ru', '123321', 'dark', '1.jpg', 'fon.jpg', 0),
('tuyol@mail.ru', '123321', 'tuyol', '3.jpg', 'fon.jpg', 0),
('vad229@mail.ru', '123321', 'vad', '2.jpg', 'fon.jpg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `magazine`
--

CREATE TABLE `magazine` (
  `id` int(11) NOT NULL,
  `img` varchar(300) CHARACTER SET utf8 NOT NULL,
  `name_tovar` varchar(300) CHARACTER SET utf8 NOT NULL,
  `opisanie_tovar` varchar(1200) CHARACTER SET utf8 DEFAULT NULL,
  `sum` int(11) NOT NULL,
  `id_accounta` varchar(500) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `magazine`
--

INSERT INTO `magazine` (`id`, `img`, `name_tovar`, `opisanie_tovar`, `sum`, `id_accounta`) VALUES
(1, 'donloads/img_yslugi/maxresdefault.jpg', 'Создать', 'Создание сайтов под ключ - от 20000 до 100000', 20000, 'vad229@mail.ru'),
(2, 'donloads/img_yslugi/opis.jpg', 'Оформление инстаграмма', 'Оформляю вид и добавляю искринку в ваш образ жизни!', 1200, 'vad229@mail.ru'),
(53, 'donloads/img_yslugi/570_screenshots_2013-05-09_00001.jpg', 'Буст Аккаунта', 'Изи +30', 1000, 'vad229@mail.ru');

-- --------------------------------------------------------

--
-- Структура таблицы `magazin_tovars`
--

CREATE TABLE `magazin_tovars` (
  `id` int(11) NOT NULL,
  `img_url` varchar(800) CHARACTER SET utf8 NOT NULL,
  `name_t` varchar(300) CHARACTER SET utf8 NOT NULL,
  `opis_t` varchar(800) CHARACTER SET utf8 NOT NULL,
  `sum` int(11) NOT NULL,
  `kol` int(11) NOT NULL,
  `id_account` varchar(500) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `magazin_tovars`
--

INSERT INTO `magazin_tovars` (`id`, `img_url`, `name_t`, `opis_t`, `sum`, `kol`, `id_account`) VALUES
(1, 'donloads/magazine/q66KKdEH3OQ.jpg', 'Сборка Японский стиль^_^', 'Сложное описание товара', 2000, 4, 'vad229@mail.ru');

-- --------------------------------------------------------

--
-- Структура таблицы `recomens`
--

CREATE TABLE `recomens` (
  `id` int(11) NOT NULL,
  `src` varchar(300) CHARACTER SET utf8 NOT NULL,
  `name_v` varchar(300) CHARACTER SET utf8 NOT NULL,
  `opisanie` varchar(3000) CHARACTER SET utf8 NOT NULL,
  `date` date NOT NULL,
  `sity` varchar(500) CHARACTER SET utf8 NOT NULL,
  `likes` int(15) NOT NULL,
  `id_ac` varchar(150) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `recomens`
--

INSERT INTO `recomens` (`id`, `src`, `name_v`, `opisanie`, `date`, `sity`, `likes`, `id_ac`) VALUES
(1, 'mvp1.mp4', 'Kizaru - Narcos (Prod.by YG Woods)', 'https://SonyMusicRussia.lnk.to/Narcos', '2022-04-12', 'Россия', 0, 'vad229@mail.ru'),
(2, 'mvp2.mp4', 'SODA LUV – COLE BENNETT (Премьера Клипа)', 'Слушать ROOMINATION на всех площадках:\r\nhttps://band.link/sodaluvroominnation\r\n\r\nКупить билеты на CPLUS TOUR:\r\nhttps://cplustour.com/\r\n\r\nSODA LUV:\r\nInstagram: https://www.instagram.com/soda_luv/\r\nVK: https://vk.com/sodaluv\r\nTikTok: https://www.tiktok.com/@soda_luv\r\n\r\ncreative director\r\nALYONA MOROZOVA\r\n\r\ndirected by\r\nDMITRIY MASEYKIN\r\n\r\nlabel\r\nCPLUS \r\n\r\ncreative producer: \r\nFILIPP TRAPEZNIKOV\r\nexecutive producer: \r\nALEXANDER RUDICH\r\nlegal and finance: \r\nMAXIM POPLAVSKIY\r\n\r\nproduced by\r\nFMT.JETLAG ', '2022-04-06', 'Москва', 0, 'vad229@mail.ru'),
(3, 'mvp3.mp4', 'FFM Freestyle: blago white | Фристайл под биты KIZARU, Pop Smoke, Gunna, Don Toliver, White Punk', 'По вопросам сотрудничества и рекламы — info@fastfoodmusic.com\r\n\r\nБиты:\r\n00:00 White Punk & NYOMBO — Unreleased\r\n02:27 KIZARU — «Plug»\r\n04:50 Internet Money — «Lemonade» (Feat. Don Toliver, Gunna & NAV)\r\n07:19 Pop Smoke — «Welcome To The Party»\r\n\r\nFast Food Music: \r\nhttps://vk.com/fastfoodmusic\r\nhttps://www.instagram.com/fast_food_m...\r\nhttps://t.me/fastfoodmusictg\r\n\r\nВыпуск снят в магазине виниловых пластинок Stoprobot Vinyl:\r\nhttps://stoprobotvinyl.ru\r\nhttps://www.instagram.com/stoprobotvi...', '2021-05-11', 'Россия', 0, 'vad229@mail.ru'),
(6, 'mvp4.mp4', 'LIL MORTY - НА КУРОРТЕ', 'LIL MORTY\r\nhttps://www.instagram.com/dirtymorty\r\nhttps://twitter.com/lil_morty\r\nhttps://vk.com/lilmorty\r\nhttps://soundcloud.com/mortymort\r\n\r\nDIRECTED BY:\r\ninstagram.com/nikitazamoyski\r\n\r\nPROD BY FROZENGANGBEATZ\r\nInstagram.com/fgbsalepacks', '2022-03-08', 'Россия', 0, 'vad229@mail.ru'),
(7, 'mvp5.mp4', 'SODA LUV – ДЫМ (Премьера Клипа)', 'Билеты: https://cplustour.com/\r\n\r\nSODA LUV:\r\nInstagram: https://www.instagram.com/soda_luv/\r\nVK: https://vk.com/sodaluv\r\nTikTok: https://www.tiktok.com/@soda_luv\r\n\r\ncreative director:\r\nALYONA MOROZOVA (@alyossssha)\r\n   \r\ndirected by:\r\nDMITRY MASEYKIN (@daltonizm_)\r\n\r\ncreative producer:\r\nVLADIMIR IVANOV (@mir.jetlag)\r\n      \r\nlabel CPLUS (@cplusmusic)     \r\ncreative producer: FILIPP TRAPEZNIKOV (@ftrapeznikov_)\r\nexecutive producer: ALEXANDER RUDICH (@champ7ooo)\r\nlegal and finance: MAXIM POPLAVSKIY (@maxpoplavsky)\r\n      \r\nproduced by FMT.JETLAG (@fmtjetlag)\r\nexecutive producer: ARSENIY ZYABBAROV (@arseniyz)\r\nline producer: ANNA PROTS (@prots__)', '2022-01-04', 'Россия', 0, 'vad229@mail.ru');

-- --------------------------------------------------------

--
-- Структура таблицы `video_host`
--

CREATE TABLE `video_host` (
  `id` int(11) NOT NULL,
  `url_video` varchar(500) CHARACTER SET utf8mb4 NOT NULL,
  `name_video` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `opisanie` varchar(3000) CHARACTER SET utf8 DEFAULT NULL,
  `likes_s` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `mesto` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `kategory` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `comment` int(1) DEFAULT NULL,
  `ogran` int(1) DEFAULT NULL,
  `report` int(11) DEFAULT NULL,
  `id_ac` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `video_host`
--

INSERT INTO `video_host` (`id`, `url_video`, `name_video`, `opisanie`, `likes_s`, `date`, `mesto`, `kategory`, `comment`, `ogran`, `report`, `id_ac`) VALUES
(1, 'FFM Freestyle_ SODA LUV _ Фристайл под биты Lil Yachty, OG Buda, Pretty Scream [QqZz-5-3jEU].mp4', 'FFM Freestyle_ SODA LUV _ Фристайл под биты Lil Yachty, OG Buda, Pretty Scream [QqZz-5-3jEU]', 'Рекомендуйте своим друзьям!', 0, '2022-01-01', 'Россия', 'Музыка', 0, 0, 0, 'vad229@mail.ru'),
(2, 'SODA LUV «ТЫСЯЧИ РУК» LIVE SPECIAL [H-WrfIEa3kQ].mp4', 'SODA LUV «ТЫСЯЧИ РУК»', 'Что не так!', 0, '2022-01-04', 'Москва', 'Музыка', 0, 0, 0, 'vad229@mail.ru'),
(3, 'Travis Scott and Fortnite Present_ Astronomical (Full Event Video) [wYeFAlVC8qU].mp4', 'Travis Scott and Fortnite Present_ Astronomical', NULL, 0, '2022-01-22', 'Германия', 'Музыка', 0, 0, 0, 'vad229@mail.ru'),
(4, 'XXXTENTACION - HOPE (Mother Of Gekyume in Music Video) [FAN MADE] [p_d1iNXis4c].mp4', 'XXXTENTACION - HOPE', NULL, 0, '2022-01-04', 'Россия', 'Музыка', 0, 0, 0, 'vad229@mail.ru'),
(5, 'Скриптонит - Чистый (OST «Псих») [dylyj3xObJo].mp4', 'Скриптонит - Чистый', NULL, 0, '2022-01-18', 'Казахстан', 'Музыка', 0, 0, 0, 'vad229@mail.ru'),
(10, 'matb.mp4', 'Мами', 'Создано при поддержке телекомпании ваниил', 0, '2022-04-18', 'Россия', 'Музыка', 1, 0, 0, 'vad229@mail.ru'),
(11, 'Untitled.mp4', 'Ильдар играет в доту 2', 'Лучший игрок на сф', 0, '2022-04-19', 'Москов', 'Музыка', 1, 0, 0, 'vad229@mail.ru'),
(14, '4f067b9aa6b39463fd4c90b5b95880c4.mp4', 'Я твоя инста', 'Тррекс лафй', 0, '2022-04-12', 'Россия', 'Музыка', 1, 0, 0, 'vad229@mail.ru'),
(15, 'VID_20220220_004854.mp4', 'Илюха фейк', 'Маневр лучший', 0, '2022-04-13', 'Россия', 'Музыка', 1, 0, 0, 'vad229@mail.ru'),
(16, '3cf4dc2a438152eee19f8917137aefe5.mp4', 'Вышиваю на одежде', 'Стиль', 0, '2021-10-12', 'Россия', 'Музыка', 1, 0, 0, 'repeat@mail.ru');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `account`
--
ALTER TABLE `account`
  ADD UNIQUE KEY `email` (`email`);

--
-- Индексы таблицы `magazine`
--
ALTER TABLE `magazine`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_accounta` (`id_accounta`);

--
-- Индексы таблицы `magazin_tovars`
--
ALTER TABLE `magazin_tovars`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_account` (`id_account`);

--
-- Индексы таблицы `recomens`
--
ALTER TABLE `recomens`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_ac` (`id_ac`);

--
-- Индексы таблицы `video_host`
--
ALTER TABLE `video_host`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_ac` (`id_ac`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `magazine`
--
ALTER TABLE `magazine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT для таблицы `magazin_tovars`
--
ALTER TABLE `magazin_tovars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `recomens`
--
ALTER TABLE `recomens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `video_host`
--
ALTER TABLE `video_host`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `magazine`
--
ALTER TABLE `magazine`
  ADD CONSTRAINT `magazine_ibfk_1` FOREIGN KEY (`id_accounta`) REFERENCES `account` (`email`);

--
-- Ограничения внешнего ключа таблицы `magazin_tovars`
--
ALTER TABLE `magazin_tovars`
  ADD CONSTRAINT `magazin_tovars_ibfk_1` FOREIGN KEY (`id_account`) REFERENCES `account` (`email`);

--
-- Ограничения внешнего ключа таблицы `recomens`
--
ALTER TABLE `recomens`
  ADD CONSTRAINT `recomens_ibfk_1` FOREIGN KEY (`id_ac`) REFERENCES `account` (`email`);

--
-- Ограничения внешнего ключа таблицы `video_host`
--
ALTER TABLE `video_host`
  ADD CONSTRAINT `video_host_ibfk_1` FOREIGN KEY (`id_ac`) REFERENCES `account` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
