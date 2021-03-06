-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 23 2018 г., 16:23
-- Версия сервера: 5.6.38
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `recipies`
--

-- --------------------------------------------------------

--
-- Структура таблицы `ingredients`
--

CREATE TABLE `ingredients` (
  `id` int(4) NOT NULL,
  `recipe_id` int(4) NOT NULL,
  `ingredient` varchar(40) NOT NULL,
  `amount` varchar(10) DEFAULT NULL,
  `measurement` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ingredients`
--

INSERT INTO `ingredients` (`id`, `recipe_id`, `ingredient`, `amount`, `measurement`) VALUES
(1, 1, 'Сухие дрожжи', '1', 'ст/л'),
(2, 1, 'Сахар', '2', 'ст/л'),
(9, 2, 'Чеснок', '6', 'зубчиков'),
(4, 1, 'Вода', '300', 'мл'),
(5, 1, 'Соль', '1', 'ч/л'),
(6, 1, 'Растительное масло', '1/3', 'ст'),
(8, 1, 'Мука', '3', 'ст'),
(10, 2, 'Морковь', '1', 'кг'),
(11, 2, 'Сыр', '200', 'г'),
(12, 2, 'Майонез', '400', 'г'),
(13, 3, 'Картофель', '6', 'шт'),
(14, 3, 'Вода', '3-4', 'л'),
(15, 5, 'Свекла', '1', 'шт'),
(16, 5, 'Морковь', '2', 'шт'),
(17, 5, 'Чеснок', '2', 'зубчика'),
(18, 5, 'Майонез', '200', 'г'),
(19, 6, 'Сливочное масло', '50', 'г'),
(20, 6, 'Подсолнечное масло', '2', 'ст/л'),
(21, 6, 'Мука', '2', 'ст/л'),
(22, 6, 'Молоко', '750', 'мл'),
(23, 6, 'Соль', '1', 'щепотка'),
(24, 7, 'Зеленый салат', '1', 'пучок'),
(25, 7, 'Помидор', '1', 'штука'),
(26, 7, 'Куриное филе', '300', 'г'),
(27, 7, 'Хлеб', '6', 'кусков'),
(28, 7, 'Соус «Цезарь»', '3', 'ст/л'),
(29, 7, 'Сливочное масло', '2', 'ст/л'),
(30, 7, 'Чеснок', '2', 'зубчика'),
(31, 7, 'Сыр &#34;Пармезан&#34;', '100', 'г');

-- --------------------------------------------------------

--
-- Структура таблицы `recipe`
--

CREATE TABLE `recipe` (
  `recipe_id` int(4) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `cook_time` varchar(10) NOT NULL,
  `img_src` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `recipe`
--

INSERT INTO `recipe` (`recipe_id`, `title`, `description`, `cook_time`, `img_src`) VALUES
(1, 'Дрожжевое тесто (быстрое)', '\r\n1 этап:\r\n1 ст.л. дрожжей сухих (лучше всего получается из активных или простых быстродействущих, без добавок для сдобы или пиццы)\r\n2 ст.л. сахара\r\n3 ст.л. муки\r\n300 мл теплой воды или молока (я делаю на воде)\r\nВсе ингредиенты первого этапа смешиваем в миске, хорошо перемешиваем и оставляем на 15 минут в теплом месте (35-40 градусов. У нас можно поставить в духовку в режиме размораживания - 32).\r\n\r\n2 этап:\r\n1 ч.л. соли\r\n1/3 ст растительного масла (ст объемом 250 мл)\r\nмука (у меня уходит 2-2,5-3 стакана)\r\nДобавляем ингредиенты второго этапа. Постепенно, небольшими порциями добавляем просеянную муку и замешиваем тесто до такого состояния, когда оно перестанет приставать к рукам. Снова ставим в теплое место на 15 минут.<br>Тесто поднимется где-то в 1,5 раза.\r\nИзделия смазать взболтанным яйцом и выпекать при 180 градусах до красивой корочки. Но можно и при 200 градусах до красивой корочки, в среднем 10 минут.', '~ 40 мин', '/images/testo_drozzhi.jpg'),
(2, 'Салат из моркови и сыра', '\r\n1. Потереть морковь и сыр на терке.\r\n2. Добавить чеснок и майонез.\r\n3. Все перемешать!', '40 мин', '/images/salat_morkov_syr.jpg'),
(6, 'Соус Бешамель', '\r\n1. Растопите сливочное масло с растительным в ковше и вмешайте муку. Постепенно вливайте молоко, тщательно размешивая смесь, и доведите до кипения при постоянном помешивании.\r\n\r\n2. Добавьте соль по вкусу и варите на медленном огне, помешивая, 8–10 минут. Если нужен не очень густой соус, добавьте молока. Если густой  — то варите дольше, пока он не станет нужной консистенции.\r\n \r\n3. Подавайте сразу. Хранить соус можно в холодильнике или в морозильнике: размораживать его можно на водяной бане.\r\n', '20 минут', '/images/sous_beshamel.jpg'),
(3, 'Вареная картошка', '\r\nОчистить картошку.\r\nПоложить в холодную воду так, чтобы вода доходила хотя бы до середины верхней картофелины, как закипит - посолить. \r\nВарить, пока не станет мягкой.', '~ 30 мин', 'NULL'),
(5, 'Салат из свежей моркови и свеклы', '1. Потереть на крупной терке морковь и свеклу, \r\n2. Добавить тертый чеснок и заправить майонезом, лучше брать Московский провансаль.\r\n3. Можно посыпать размельченными грецкими орешками', '5 мин', '/images/salat_morkov_svekla.jpg'),
(7, 'Салат «Цезарь»', '1. Промыть, просушить и нарвать на небольшие кусочки листья салата, отложить в холодильник.\r\n\r\n2. В горячую сковородку положить 1 столовую ложку сливочного масла. После того, как оно полностью расплавится и начнет шипеть, кинуть нарезанный на пластины зубчик чеснока.\r\n\r\n3. Куриную грудку нарезать на кусочки приблизительно 1х3 см. Положить в сковороду к чесноку и маслу. Обжаривать на сильном огне приблизительно 10 минут до румяной корочки. Снять с огня.\r\n\r\n4. В ту же сковородку добавить еще одну столовую ложку сливочного масла и второй зубчик чеснока. В это время нарезать на небольшие кубики хлеб. Положить в сковороду и обжаривать до румяной корочки. Желательно непрерывно помешивать, чтобы не подгорело.\r\n\r\n5. Достать листья салата, туда же положить обжаренную куриную грудку, помидоры, нарезанные тонкой соломкой. Заправить соусом «Цезарь». Перемешать. Сверху положить получившиеся сухарики и натереть сыр.', '30 минут', '/images/salat_cesar.jpg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`recipe_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `recipe`
--
ALTER TABLE `recipe`
  MODIFY `recipe_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
