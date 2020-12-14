-- ЗАДАНИЕ 1 Составьте список пользователей users, которые осуществили хотя бы один заказ orders 
-- в интернет магазине
USE shop;

SELECT * FROM users;
SELECT * FROM orders;

-- Заполняем таблицу orders
INSERT INTO orders(user_id) VALUES
(1), (2), (3), (213), (23), (313), (322), (2), (6), (444), (23), (13), (14), (17), (1);

-- Создаем внешний ключ к таблице users
ALTER TABLE  orders 
	ADD CONSTRAINT orders_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE SET NULL;

-- Выводим пользователей ,которые хоть раз сделали заказ
SELECT 
id,name 
FROM users 
WHERE id IN (SELECT user_id FROM orders);

-- ЗАДАНИЕ 2 Выведите список товаров products и разделов catalogs, который соответствует товару
SELECT * FROM products;
SELECT * FROM catalogs;

SELECT 
	id,
	name AS product,
	(SELECT name FROM catalogs WHERE id = catalog_id) AS category 
FROM products;

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
	id,
	(SELECT name FROM cities WHERE label = flights.flights  ) AS from_,
	(SELECT name FROM cities WHERE label = flights.to_  ) AS to_
FROM flights;