-- ТЕМА : "Оптимизация запросов"
/*ЗАДАНИЕ 1 : Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, 
 * catalogs и products в таблицу logs помещается время и дата создания записи, название таблицы,
 *  идентификатор первичного ключа и содержимое поля name.*/

USE shop;

DROP TABLE IF EXISTS logs;
CREATE TABLE IF NOT EXISTS logs (
	created_at DATETIME  NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Дата и время создания строки",
	table_name VARCHAR(40) NOT NULL COMMENT "Название таблицы ",
	primary_key_id INT UNSIGNED NOT NULL COMMENT "Идентификатор первичного ключа",
	name VARCHAR(255) NOT NULL COMMENT "Содержимое поля name логгируемых таблиц"
) ENGINE=ARCHIVE COMMENT='Таблица, хранящая логи о новых записях в таблиах users, catalogs и products'; 


DROP TRIGGER IF EXISTS users_logs;
DROP TRIGGER IF EXISTS products_logs;
DROP TRIGGER IF EXISTS catalogs_logs;

DELIMITER //

-- Тригеры для добавления новых строк в logs из таблиц logs, products, catalogs
CREATE TRIGGER users_logs AFTER INSERT ON users
FOR EACH ROW 
BEGIN 
	INSERT INTO shop.logs VALUES (DEFAULT, "users", NEW.id, NEW.name);
END//

CREATE TRIGGER products_logs AFTER INSERT ON products
FOR EACH ROW 
BEGIN 
	INSERT INTO shop.logs VALUES (DEFAULT, "products", NEW.id, NEW.name);
END//

CREATE TRIGGER catalogs_logs AFTER INSERT ON catalogs
FOR EACH ROW 
BEGIN 
	INSERT INTO shop.logs VALUES (DEFAULT, "catalogs", NEW.id, NEW.name);
END//

DELIMITER ;

-- Проверяем работу триггеров на примере триггера users_logs
select * from users;
INSERT INTO users(name, birthday_at) VALUES ('IVAN', '1999-12-28');
SELECT * FROM logs;


/*ЗАДАНИЕ 2: (по желанию) Создайте SQL-запрос, который помещает в таблицу users миллион записей.*/
DROP PROCEDURE IF EXISTS  million_rows;

DELIMITER //

-- Создание процедуры с циклом while
CREATE PROCEDURE million_rows()
	BEGIN
		DECLARE i INT ;
		SET i = 0;
		WHILE i < 1000000 DO 
			INSERT INTO users(name, birthday_at) VALUES (
			char(round(rand()*25)+97),
			FROM_UNIXTIME(UNIX_TIMESTAMP('1999-01-01')+FLOOR(RAND()*30000000))
			);
		SET i = i + 1;
		END WHILE;
	END //

DELIMITER ;

-- Запуск процедуры и проверка результата
CALL million_rows(); 
SELECT * FROM users
ORDER BY id DESC
LIMIT 10;

-- ТЕМА : “NoSQL”
> redis-cli

/*ЗАДАНИЕ 1: В базе данных Redis подберите коллекцию для подсчета посещений с определенных IP-адресов.*/

-- Создание коллекции adresses с парами ключ-значение в виде IP-адреса и количество его посещений
HSET adresses '127.0.0.1' 1
HINCRBY adresses '127.0.0.1' 1
HGETALL adresses 

HSET adresses '127.0.0.2' 1
HINCRBY adresses '127.0.0.2' 1
HGETALL adresses '127.0.0.2'

-- Поис количества посещений с определенного IP-адреса 
HGET adresses '127.0.0.2'


/*ЗАДАНИЕ 2 : При помощи базы данных Redis решите задачу поиска имени пользователя 
 * по электронному адресу и наоборот, поиск электронного адреса пользователя по его имени.*/

-- Создание хэш-таблиц с именем коллекции emails и поиск по ключу имени 'serafim'
HSET email 'velfegor' 'velf666@hell.ad'
HSET email 'serafim' 'seraf333@heaven.god'

HGET 'serafim' 

-- Создание хэш таблиц с именем коллекции users и поиск по ключу электронного адреса seraf333@heaven.god'
HSET users 'seraf333@heaven.god' 'serafim' 
HSET users 'velf666@hell.ad' 'velfegor' 

HGET 'velf666@hell.ad'


/*ЗАДАНИЕ 3 : Организуйте хранение категорий и товарных позиций учебной базы данных shop в СУБД MongoDB.*/
DESCRIBE products;
DESCRIBE catalogs ;

SELECT * FROM products ;
SELECT * FROM catalogs ;

show dbs

use shop 

-- Создание необходимых коллекций и их заполнение
db.createCollection('catalogs')
db.createCollection('products')

db.catalogs.insert({id: 1, name: 'Процессоры'})
db.catalogs.insert({id: 2, name: 'Материнские платы'})
db.catalogs.insert({id: 3, name: 'Видеокарты'})
db.catalogs.insert({id: 4, name: 'Жесткие диски'})
db.catalogs.insert({id: 5, name: 'Оперативная память'})

db.products.insert (
	{
		name: 'Intel Core i3-8100',
		description: 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.',
		price: 7890.00,
		catalog_id: 1,
	}
);

db.products.insert (
	{
		name: 'Intel Core i5-7400',
		description: 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.',
		price: 12700.00,
		catalog_id: 1,
	}
);

db.products.insert (
	{
		name: 'ASUS ROG MAXIMUS X HERO',
		description: 'Материнская плата ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX',
		price: 19310.00,
		catalog_id: 2,
	}
);

db.products.insert (
	{
		name: 'Gigabyte H310M S2H',
		description: 'Материнская плата Gigabyte H310M S2H, H310, Socket 1151-V2, DDR4, mATX',
		price: 4790.00,
		catalog_id: 2,
	}
);

-- Смотрим работает ли это 
db.products.find()


P.S. Дамп БД не прикладываю потому что из за 2 задания 1 темы файл весит сравнительно много, не хочет корректно отображаться на моей машине.