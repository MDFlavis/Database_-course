-- Скрипты группировки
-- Группировка акции с целью узнать самую популярную по количеству держателей акцию в базе данных
SELECT 
	securities.securities_name AS company,
	COUNT(*) AS holder
FROM securities
LEFT JOIN user_assets ON securities.id = user_assets.securities_id 
GROUP BY company 
ORDER BY holder DESC;

-- Группировка акций с целью найти 10 пользователей - у которых во владении
-- наибольшее количество разнообразных бумаг
SELECT 
	users.id AS id,
	CONCAT(users.first_name, users.last_name) AS `user`,
	COUNT(*) AS securities
FROM users 
LEFT JOIN user_assets ON users.id= user_assets.user_id 
GROUP BY id 
ORDER BY securities DESC, id ASC
LIMIT 10;
	


-- JOIN скрипты
/*Выборка данных из 3 таблиц о названии компании, тикере, её капитализации,результате за последние 
6 месяцев и цене за 1 акцию , отсортированная в порядке снижения финансового результата*/
SELECT 
	securities.securities_ticker  AS ticker,
	securities.securities_name AS comany,
	financial_indicators.market_cap,
	financial_indicators.last_six_mounth_result,
	securities_price.price 
FROM securities
LEFT JOIN financial_indicators 
ON securities.id = financial_indicators.securities_id
LEFT JOIN securities_price
ON financial_indicators.securities_id= securities_price.securities_id
ORDER BY last_six_mounth_result DESC 
LIMIT 10;

/*Выборка сведений из 4 таблиц о пользователях, ценных бумагах которыми они владеют, 
 * стоимости 1 бумаги, общей стоимости актива и валюте, в которой он торгуется*/
SELECT 
	user_assets.user_id  AS `user`,
	securities.securities_name AS company,
	user_assets.amount,
	securities_price.price AS price_per_one,
	user_assets.amount * securities_price.price AS money,
	currencies.name AS currency
FROM user_assets 
LEFT JOIN securities 
ON user_assets.securities_id = securities.id 
LEFT JOIN securities_price
ON securities.id = securities_price.securities_id 
LEFT JOIN currencies 
ON securities.securities_current_id= currencies.id 
LIMIT 10;

/* Выборка данных из 5 таблиц для опредения самой крупной ЕВРОвой инвестиции среди пользователей,
 *  сгруппированна по валюте EUR и отсортирована в убывающем порядке*/
SELECT 
	users.id AS `user`,
	user_assets.amount * securities_price.price AS securities_money,
	currencies.name AS currency
FROM users 
RIGHT JOIN user_assets ON users.id = user_assets.user_id 
RIGHT JOIN securities_price ON user_assets.securities_id = securities_price.securities_id 
RIGHT JOIN securities ON  user_assets.securities_id = securities.id 
RIGHT JOIN currencies ON securities.securities_current_id= currencies.id and currencies.id = 3
ORDER BY securities_money DESC 
LIMIT 10;
	


-- Вложенные запросы
/* С помощью вложенного запроса находим топ 5 компаний с прибылью за последние 6 месяцев выше 30% и, при этом,
самой маленькой капитализацией*/
SELECT 
	securities_id,
	market_cap,
	last_six_mounth_result 
FROM financial_indicators
WHERE securities_id IN (SELECT securities_id  FROM financial_indicators WHERE last_six_mounth_result > 30)
ORDER BY market_cap  
LIMIT 5;

/*Вложенный запрос для копирования всех пользоватеей, зарегистрировавшихся ранее 2000 года*/
SELECT * FROM users;
DROP TABLE IF EXISTS users_after_2015;
CREATE TABLE IF NOT EXISTS users_after_2015(	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор пользователя", 
	first_name VARCHAR(20) NOT NULL COMMENT "Имя пользователя",
	last_name VARCHAR(30) NOT NULL COMMENT "Фамилия пользователя",
	fathers_name VARCHAR(25) DEFAULT NULL COMMENT "Отчетво пользователя(при наличи)",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Дата создания строки" ,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Дата обновления строки"
) COMMENT = 'Таблица пользователей банка';
INSERT INTO users_after_2015
SELECT * FROM users 
WHERE  id NOT IN (SELECT id FROM users WHERE created_at > '2000-12-31 00:00:00');

