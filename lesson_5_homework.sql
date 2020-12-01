-- ТЕМА: Операторы, фильтрация, сортировка и ограничение
-- 1 Задание. Пусть в таблице users поля created_at и updated_at оказались незаполненными. 
-- Заполните их текущими датой и временем.


DROP DATABASE IF EXISTS lesson_5;
CREATE DATABASE IF NOT EXISTS lesson_5;
USE lesson_5;

DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Первичный ключ",
	name VARCHAR(255) NOT NULL COMMENT "Пользователь",
	birth_at DATE NOT NULL COMMENT "Дата рождения пользователя",
	created_at VARCHAR(255) NOT NULL COMMENT "Дата создания строки",
	updated_at VARCHAR(255) NOT NULL COMMENT "Дата обновления строки"
);


INSERT INTO users(name, birth_at, created_at, updated_at) VALUES
('Леонид', '1998-3-15', '20.10.2017 8:10', '20.10.2017 8:10'),
('Анна', '1998-8.15', '20.10.2018 8:10', '20.10.2018 8:10'),
('Иван', '1987-6-20', '20.10.2019 8:10', '20.10.2019 8:10'),
('Гомер', '2001-4-8', '20.10.2020 8:10', '20.10.2020 8:10'),
('Фукидит', '2010-5-8', '20.10.2020 8:10', '20.10.2020 8:10'),
('Птоломей', '1967-2-8', '20.10.2020 8:10', '20.10.2020 8:10'),
('Ахиллес', '1997-1-9', '20.10.2020 8:10', '20.10.2020 8:10'),
('Фарисей', '1950-3-6', '20.10.2020 8:10', '20.10.2020 8:10')
;

-- 2 Задание.Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы типом VARCHAR
-- и в них долгое время помещались значения в формате 20.10.2017 8:10. Необходимо преобразовать поля к типу DATETIME,
-- сохранив введённые ранее значения.
SHOW FIELDS FROM users;
SELECT created_at FROM  users;
/*ALTER TABLE users MODIFY created_at STR_TO_DATE(created_at,'%d.%m.%Y %h:%i'); Пытался модифицировать строку в таблице, 
 * потратил на это много времени но так и не получилось */

-- Изменение created_at
SELECT 
	STR_TO_DATE(created_at,'%d.%m.%Y %h:%ii') AS new_time
FROM users;
-- Изменение updated_at
SELECT 
	STR_TO_DATE(updated_at,'%d.%m.%Y %h:%ii') AS new_time
FROM users;

/*Задание 3. В таблице складских запасов storehouses_products в поле value могут встречаться самые разные 
цифры: 0, если товар закончился и выше нуля, если на складе имеются запасы. Необходимо отсортировать записи 
таким образом, чтобы они выводились в порядке увеличения значения value. Однако нулевые запасы должны выводиться
в конце, после всех записей.*/
DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE IF NOT EXISTS storehouses_products(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Первичный ключ",
	name VARCHAR(255) NOT NULL COMMENT "Название товара",
	value INT UNSIGNED NOT NULL COMMENT "Колличество товара",
	created_at DATETIME DEFAULT NOW() NOT NULL COMMENT "Дата создания строки",
	updated_at DATETIME DEFAULT NOW() NOT NULL COMMENT "Дата обновления строки"
);

-- Заполнение таблицы данными 
INSERT INTO storehouses_products(name, value) VALUES 
('Процессоры', 0), ('Мониторы', 200),
('Материнские платы', 50), ('Блоки питания', 100),
('Видеокарты', 0), ('Системы охлаждения', 0);

-- Сортировка сперва по IF  отсеивает те строки где значение  value = false(0) а затем групирует от меньшего к большему. 
SELECT * FROM storehouses_products
ORDER BY IF(value = 0,1,0), value; 


-- ТЕМА: Агрегация данных
-- 1 Задание. Подсчитайте средний возраст пользователей в таблице users.

-- Приведение данных о дня рождения в более удобный формат
SELECT  DATE_FORMAT(birth_at, '%d.%m.%Y') AS birth_at FROM users; 

-- Вычисления возраста пользователей
SELECT 
	 name,
	 FLOOR( (TO_DAYS(NOW()) - TO_DAYS(birth_at)) /365.25) AS age
FROM users; 

-- Подсчет среднего возраста
SELECT AVG(FLOOR( (TO_DAYS(NOW()) - TO_DAYS(birth_at)) /365.25)) AS averege_age
FROM users; 

/*Задание 2. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
Следует учесть, что необходимы дни недели текущего года, а не года рождения.*/
SELECT DISTINCT 
	DAYNAME(DATE_FORMAT(birth_at, '%d.%m.2020')) AS birthday,
	COUNT(*)
FROM users
GROUP BY birthday; 