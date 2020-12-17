-- ЗАДАНИЕ 1 Составьте список пользователей users, которые осуществили хотя бы один заказ orders 
-- в интернет магазине
USE shop;

SELECT * FROM users;
SELECT * FROM orders;

-- Заполняем таблицу orders
INSERT INTO orders(user_id) VALUES
(1), (2), (3), (213), (23), (313), (322), (2), (6), (444), (23), (13), (14), (17), (1);


-- Выводим пользователей ,которые делали заказы и убираем повторения
SELECT DISTINCT 
	u.id AS user_id,
	u.name AS user_name
FROM 
	users AS u
JOIN 
	orders AS o
ON u.id = o.user_id;	
		
-- ЗАДАНИЕ 2 Выведите список товаров products и разделов catalogs, который соответствует товару
SELECT * FROM products;
SELECT * FROM catalogs;

SELECT 
	p.name AS product,
	c.name AS category
FROM 
	products AS p
JOIN
	catalogs AS c
ON
	p.catalog_id = c.id;

-- ЗАДАНИЕ 3 (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и 
-- таблица городов cities (label, name). Поля from, to и label содержат английские названия городов,
--  поле name — русское. Выведите список рейсов flights с русскими названиями городов.

-- Создадим базу данных homework_7_task_3, таблицы flights и cities, и заполним их
DROP DATABASE IF EXISTS homework_7_task_3;
CREATE DATABASE IF NOT EXISTS homework_7_task_3;
USE homework_7_task_3;

DROP TABLE IF EXISTS flights;
CREATE TABLE IF NOT EXISTS flights (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	flights VARCHAR(255) NOT NULL,
	to_ VARCHAR(255) NOT NULL 
);

DROP TABLE IF EXISTS cities;
CREATE TABLE IF NOT EXISTS cities(
	label VARCHAR(255) NOT NULL,
	name VARCHAR(255) NOT NULL
);


INSERT INTO flights(flights, to_) VALUES 
('moscow', 'omsk'), 
('novgorod', 'kazan'), 
('irkutsk', 'moscow'),
('omsk', 'irkutsk'), 
('moscow', 'kazan');


INSERT cities (label, name) VALUES
('moscow', 'Москва'),
('irkutsk', 'Иркутск'),
('novgorod', 'Новгород'),
('kazan', 'Казань'),
('omsk', 'Омск');

-- Выведение список рейсов flights с русскими названиями городов.

SELECT * FROM flights;
SELECT * FROM cities;

SELECT
	f.id AS id, 
	c.name AS flights,
	ci.name AS to_
FROM 
	flights AS f
LEFT JOIN 
	cities AS c
ON f.flights = c.label
LEFT JOIN 
	cities AS ci
ON f.to_ = ci.label ;