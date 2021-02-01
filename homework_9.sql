USE shop;

-- ТЕМА 1 : "Транзакции, переменные, представления"

/* ЗАДАНИЕ 1 : В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. 
Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.*/

START TRANSACTION;
INSERT INTO sample.users SELECT * FROM shop.users WHERE id = 1; -- Добаляем в таблицу sample.users строку с id 1
DELETE FROM shop.users WHERE id = 1; -- Удаляем из таблицы shop.users строку с id 1
COMMIT;

SELECT * FROM users;
SELECT * FROM sample.users;

/* ЗАДАНИЕ 2 : Создайте представление, которое выводит название name товарной позиции из таблицы products и 
 соответствующее название каталога name из таблицы catalogs.*/

-- Смотрим внешние ключи
SELECT * FROM products;
SELECT * FROM catalogs;

-- Создаем представления
CREATE VIEW name AS SELECT 
	products.name AS product,
	catalogs.name AS `catalog`
FROM products 
LEFT JOIN catalogs ON products.catalog_id = catalogs.id ;

-- Смотрим результат
SELECT * FROM name;

/* ЗАДАНИЕ 3 : (по желанию) Пусть имеется таблица с календарным полем created_at. В ней размещены разряженые
 календарные записи за август 2018 года '2018-08-01', '2016-08-04', '2018-08-16' и 2018-08-17. 
 Составьте запрос, который выводит полный список дат за август, выставляя в соседнем поле значение 1,
 если дата присутствует в исходном таблице и 0, если она отсутствует.*/

-- Создаю таблицу и напролняю её разряженными календарными записями
DROP TABLE IF EXISTS task_3;
CREATE TABLE IF NOT EXISTS task_3(	created_at DATE NOT NULL );
INSERT INTO task_3 VALUES
('2018-08-01'), ('2018-08-04'), 
('2018-08-16'), ('2018-08-17');

SELECT * FROM task_3;

-- Создаю временную таблицу августовских дат
DROP TEMPORARY TABLE IF EXISTS dates;
CREATE TEMPORARY TABLE IF NOT EXISTS dates( created_at DATE NOT NULL);
INSERT INTO dates VALUES
('2018-08-01'), ('2018-08-02'),('2018-08-03'),('2018-08-04'), ('2018-08-05'),('2018-08-06'),
('2018-08-07'),('2018-08-08'),('2018-08-09'),('2018-08-10'),
('2018-08-11'),('2018-08-12'),('2018-08-13'),('2018-08-14'),
('2018-08-15'),('2018-08-16'), ('2018-08-17'), ('2018-08-18'),('2018-08-19'),('2018-08-20'),
('2018-08-21'),('2018-08-22'),('2018-08-23'),('2018-08-24'),
('2018-08-25'),('2018-08-26'),('2018-08-27'),('2018-08-28'),
('2018-08-29'),('2018-08-30'),('2018-08-31');

-- Создаю запрос, используя конструкции UNION и условие IF 
SELECT 
	created_at AS `date`,
	IF (ISNULL(task_3.created_at), '0', '1') AS counter
FROM task_3
UNION 
SELECT 
	created_at AS `date`,
	IF (ISNULL(dates.created_at), '1', '0') AS counter
FROM dates
ORDER BY `date`; 

/*ЗАДАНИЕ 4: (по желанию) Пусть имеется любая таблица с календарным полем created_at. 
 Создайте запрос, который удаляет устаревшие записи из таблицы, оставляя только 5 самых свежих записей.*/

-- Создание и заполнение таблицы с данными
DROP TABLE IF EXISTS task_4;
CREATE TABLE IF NOT EXISTS task_4( created_at DATE NOT NULL);
INSERT INTO task_4 VALUES
('2018-08-01'), ('2018-08-02'),('2018-08-03'),('2018-08-04'), ('2018-08-05'),('2018-08-06'),
('2018-08-07'),('2018-08-08'),('2018-08-09'),('2018-08-10'),
('2018-08-11'),('2018-08-12'),('2018-08-13'),('2018-08-14'),
('2018-08-15'),('2018-08-16'), ('2018-08-17'), ('2018-08-18'),('2018-08-19'),('2018-08-20'),
('2018-08-21'),('2018-08-22'),('2018-08-23'),('2018-08-24'),
('2018-08-25'),('2018-08-26'),('2018-08-27'),('2018-08-28'),
('2018-08-29'),('2018-08-30'),('2018-08-31');

SELECT * FROM task_4;

--  Delete-запрос с join'ом вложенного запроса, сохраняющего 5 последних записей и обьединением условием <=, 
-- удаляющим все строки, которые меньше нужного значения
DELETE 
	task_4 
FROM task_4
JOIN 
	(SELECT 
		created_at
	FROM task_4
	ORDER BY created_at DESC
	LIMIT 5, 1) AS del
ON task_4.created_at <= del.created_at;

-- ТЕМА 2 : "Администрирование MySQL"
/* ЗАДАНИЕ 1 Создайте двух пользователей которые имеют доступ к базе данных shop. 
 * Первому пользователю shop_read должны быть доступны только запросы на чтение данных,
 *  второму пользователю shop — любые операции в пределах базы данных shop. */

-- Создаем пользователя shop_read и наделяем его правами делать выборку данных из БД shop
CREATE USER 'shop_read'@'localhost';
GRANT SELECT ON shop.* TO 'shop_read'@'localhost';

-- Создаем пользователя shop и наделяем его правами на любые операции в БД shop
CREATE USER 'shop'@'localhost';
GRANT ALL ON shop.* TO 'shop'@'localhost';

/*ЗАДАНИЕ 2 : (по желанию) Пусть имеется таблица accounts содержащая три столбца id, name, password,
 содержащие первичный ключ, имя пользователя и его пароль. Создайте представление username таблицы accounts,
 предоставляющий доступ к столбца id и name. Создайте пользователя user_read, который бы не имел доступа
 к таблице accounts, однако, мог бы извлекать записи из представления username.*/

-- Создаем и заполняем таблицу с данными accounts
DROP TABLE IF EXISTS accounts;
CREATE TABLE IF NOT EXISTS accounts (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Идентификатор пользователя',
	name VARCHAR(255) NOT NULL COMMENT 'Логин пользователя',
	`password` VARCHAR(255) NOT NULL COMMENT 'Пароль пользователя'
);

INSERT INTO accounts(name, `password`) VALUES
('iVAN229', 'LKJADHFK431'),
('NA9IBA70R', 'AJSHKD23'),
('pOL-LEGA', 'QWERTY123'),
('MINECRAFT-LOWER', '228JKJASHD'),
('HOLOLIVE5THGEN', 'PEKOPEKOPEKO');

-- Создаем представление username
CREATE OR REPLACE VIEW username AS
	SELECT 
		id,
		name
	FROM accounts;

SELECT * FROM username;

-- Создаем пользователя 'user_read'@'localhost' и даем ему права на выборку данных из представления username
DROP USER 'user_read'@'localhost';
CREATE USER 'user_read'@'localhost';
GRANT SELECT(id, name) ON shop.username TO 'user_read'@'localhost';

-- ТЕМА 3 : "Хранимые процедуры и функции, триггеры"
/*ЗАДАНИЕ 1 : Создайте хранимую функцию hello(), которая будет возвращать приветствие, 
 * в зависимости от текущего времени суток. С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро",
 *  с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", с 18:00 до 00:00 — "Добрый вечер",
 *  с 00:00 до 6:00 — "Доброй ночи".*/


-- Создание функции используя конструкцию IF (Через CASE  было бы лучше, но не хотелось повторять пройденное решение)
DROP FUNCTION IF EXISTS hello;

DELIMITER //

CREATE FUNCTION hello()
RETURNS TINYTEXT NO SQL
BEGIN
	DECLARE `hour` INT;
	DECLARE welcome TINYTEXT;
	SET `hour` = HOUR(NOW());

	IF	`hour` = 0 THEN SET welcome =  'Доброй ночи';
	ELSEIF `hour` = 1 THEN SET welcome =  'Доброй ночи';
	ELSEIF `hour` = 2 THEN SET welcome =  'Доброй ночи';
	ELSEIF `hour` = 3 THEN SET welcome =  'Доброй ночи';
	ELSEIF `hour` = 4 THEN SET welcome =  'Доброй ночи';
	ELSEIF `hour` = 5 THEN SET welcome =  'Доброй ночи';
	ELSEIF `hour` = 6 THEN SET welcome =  'Доброе утро';
	ELSEIF `hour` = 7 THEN SET welcome =  'Доброе утро';
	ELSEIF `hour` = 8 THEN SET welcome =  'Доброе утро';
	ELSEIF `hour` = 9 THEN SET welcome =  'Доброе утро';
	ELSEIF `hour` = 10 THEN SET welcome =  'Доброе утро';
	ELSEIF `hour` = 11 THEN SET welcome =  'Доброе утро';
	ELSEIF `hour` = 12 THEN SET welcome =  'Доброе утро';
	ELSEIF `hour` = 13 THEN SET welcome =  'Добрый день';
	ELSEIF `hour` = 14 THEN SET welcome =  'Добрый день';
	ELSEIF `hour` = 15 THEN SET welcome =  'Добрый день';
	ELSEIF `hour` = 16 THEN SET welcome =  'Добрый день';
	ELSEIF `hour` = 17 THEN SET welcome =  'Добрый день';
	ELSEIF `hour` = 18 THEN SET welcome =  'Добрый день';
	ELSEIF `hour` = 19 THEN SET welcome =  'Добрый вечер';	
	ELSEIF `hour` = 20 THEN SET welcome =  'Добрый вечер';	
	ELSEIF `hour` = 21 THEN SET welcome =  'Добрый вечер';	
	ELSEIF `hour` = 22 THEN SET welcome =  'Добрый вечер';	
	ELSE SET welcome =  'Добрый вечер';	
	END IF;
	
	RETURN welcome;
END //

DELIMITER ;

SELECT NOW(), hello();

/*ЗАДАНИЕ 2 : В таблице products есть два текстовых поля: name с названием товара и description с его описанием.
 *  Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают
 *  неопределенное значение NULL неприемлема. Используя триггеры, добейтесь того, 
 * чтобы одно из этих полей или оба поля были заполнены. 
 * При попытке присвоить полям NULL-значение необходимо отменить операцию. */

-- Создаем триггер 
DROP TRIGGER IF EXISTS my_trigger;

DELIMITER //

CREATE TRIGGER product_insert_null_check BEFORE INSERT ON products
FOR EACH ROW 
BEGIN 
	IF NEW.name IS NULL AND NEW.description IS NULL THEN 
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'Both values are not entered, recheck the entry';
	END IF;
END //

DELIMITER ;

-- Проверяем работу созданного триггера
INSERT INTO products(name, description) VALUES (NULL, NULL);

/*ЗАДАНИЕ 3: (по желанию) Напишите хранимую функцию для вычисления произвольного числа Фибоначчи. 
 * Числами Фибоначчи называется последовательность в которой число равно сумме двух предыдущих чисел. 
 * Вызов функции FIBONACCI(10) должен возвращать число 55. */

-- Создаем функцию FIBBONACI 
DELIMITER //

CREATE FUNCTION FIBONACCI(num INT)
RETURNS INT DETERMINISTIC 
BEGIN
	DECLARE fs DOUBLE;
	SET fs = SQRT(5);
	
	RETURN ( POW((1 + fs) / 2.0, num) +  POW((1 - fs) / 2.0, num)) / fs;
END //

DELIMITER ;

-- Проверяем результат
SELECT FIBONACCI(10);
