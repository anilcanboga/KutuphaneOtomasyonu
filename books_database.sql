-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 24 Oca 2021, 11:42:04
-- Sunucu sürümü: 10.4.17-MariaDB
-- PHP Sürümü: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `books_library`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `books_database`
--

CREATE TABLE `books_database` (
  `id` int(11) NOT NULL,
  `book_name` text COLLATE utf8_turkish_ci NOT NULL,
  `book_writer` text COLLATE utf8_turkish_ci NOT NULL,
  `book_type` text COLLATE utf8_turkish_ci NOT NULL,
  `book_publisher` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `books_database`
--

INSERT INTO `books_database` (`id`, `book_name`, `book_writer`, `book_type`, `book_publisher`) VALUES
(1, 'Beyaz Zambaklar Ülkesinde', 'Grigori Petrov', 'Seyahatname', 'Koridor Yayıncılık '),
(2, 'Küçük Prens', 'Antoine de Saint-Exupéry', 'Masal', 'Can Çocuk Yayınları'),
(3, 'Simyacı', 'Paulo Coelho', 'Roman', 'Can Yayınları'),
(4, 'Yüzyıllık Yalnızlık', 'Gabriel García Márquez', 'Roman', 'Can Yayınları'),
(5, 'Suç ve Ceza', 'Fyodor Dostoyevski', 'Roman', 'İş Bankası Kültür Yayınları'),
(6, 'Hayvan Çiftliği', 'George Orwell', 'Roman', 'Can Yayınları '),
(7, 'Şeker Portakalı', 'José Mauro De Vasconcelos', 'Roman', 'Can Çocuk Yayınları '),
(8, 'Dönüşüm', 'Franz Kafka', 'Hikaye', 'Can Yayınları'),
(9, 'Bülbülü Öldürmek', 'Harper Lee', 'Roman', 'Epsilon Yayınevi'),
(10, 'Dinle Küçük Adam', 'Wilhelm Reich', 'Psikoloji', 'Cem Yayınevi'),
(11, 'İlahi Komedya', 'Dante Alighieri', 'Epik Şiir', 'Oğlak Yayıncılık'),
(12, 'Kürk Mantolu Madonna', 'Sabahattin Ali', 'Roman', 'Yapı Kredi Yayınları'),
(13, 'Yeraltından Notlar', 'Fyodor Dostoyevski', 'Roman', 'Can Yayınları'),
(14, 'Nutuk', 'Mustafa Kemal Atatürk', 'Söylev', 'İş Bankası Kültür Yayınları'),
(15, 'Sefiller', 'Victor Hugo', 'Roman', 'Sis Yayıncılık'),
(16, 'Anna Karenina', 'Lev Tolstoy', 'Roman', 'İletişim Yayıncılık'),
(17, 'Vadideki Zambak', 'Honoré de Balzac', 'Kurgu', 'İş Bankası Kültür Yayınları'),
(18, 'Notre Dame’ın Kamburu', 'Victor Hugo', 'Roman', 'Can Yayınları '),
(19, 'Aşk ve Gurur', 'Jane Austen', 'Drama', 'Can Yayınları'),
(20, 'Romeo ve Juliet', 'William Shakespeare', 'Trajedi', 'İş Bankası Kültür Yayınları'),
(21, 'Genç Werther’in Acıları', 'Johann Wolfgang Von Goethe', 'Mektup Roman', 'Can Yayınları'),
(22, 'Gazap Üzümleri', 'John Steinbeck', 'Roman', 'Sel Yayıncılık'),
(23, 'Babalar ve Oğullar', 'Ivan Turgenyev', 'Roman', 'Can Yayınları'),
(24, 'Ana', 'Maksim Gorki', 'Roman', 'Sis Yayıncılık'),
(25, 'Madame Bovary', 'Gustave Flaubert', 'Roman', 'İletişim Yayıncılık'),
(26, 'İki Şehrin Hikayesi', 'Charles Dickens', 'Roman', 'Can Yayınları'),
(27, 'Savaş ve Barış', 'Lev Tolstoy', 'Roman', 'İletişim Yayıncılık'),
(28, 'Uğultulu Tepeler', 'Emily Brontë', 'Roman', 'Can Yayınları'),
(29, 'Ölü Canlar', 'Nikolay Vasilyeviç Gogol', 'Roman', 'Doğan Kitap'),
(30, 'Kırmızı ve Siyah', 'Stendhal', 'Roman', 'İletişim Yayıncılık'),
(31, 'Üç Silahşörler', 'Alexandre Dumas', 'Tarihî Kurgu', 'Bilgi Yayınevi'),
(32, 'Yaşlı Adam ve Deniz', 'Ernest Hemingway', 'Roman', 'Bilgi Yayınevi'),
(33, 'Diriliş', 'Lev Tolstoy', 'Roman', 'Timaş Yayınları'),
(34, 'Karamazov Kardeşler', 'Fyodor Dostoyevski', 'Roman', 'İş Bankası Kültür Yayınları'),
(35, 'Oblomov', 'Ivan Gonçarov', 'Roman', 'İletişim Yayıncılık'),
(36, 'Dublinliler', 'James Joyce', 'Hikâye', 'İletişim Yayıncılık'),
(37, 'Germinal', 'Emile Zola', 'Roman', 'Can Yayınları'),
(38, 'Faust', 'Johann Wolfgang Von Goethe', 'Roman', 'Oda Yayınları'),
(39, 'Yüzbaşının Kızı', 'Aleksandr Sergenyeviç Puşkin', 'Roman', 'İletişim Yayıncılık'),
(41, 'Satranç', 'Stefan Zweig', 'Kurgu', 'İş Bankası Kültür Yayınları');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `books_database`
--
ALTER TABLE `books_database`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `books_database`
--
ALTER TABLE `books_database`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
