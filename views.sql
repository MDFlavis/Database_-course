-- ПРЕДСТАВЛЕНИЯ

USE course_project;

/*Представление таблицы, где собрана информация о названии, 
 * капитализации и цене за 1 акцию каждой компании российской юрисдикции в списке*/
CREATE OR REPLACE VIEW rus_securities AS 
	SELECT
		securities.securities_name AS company,
		financial_indicators.market_cap,
		securities_price.price  AS price_per_one,
		currencies.name AS currency
	FROM securities
	LEFT JOIN currencies ON securities.securities_current_id = currencies.id 
	LEFT JOIN financial_indicators ON securities.id = financial_indicators.securities_id 
	LEFT JOIN securities_price ON financial_indicators.securities_id = securities_price.securities_id 
	HAVING currency = 'RUB'
	ORDER BY market_cap DESC;

SELECT * FROM rus_securities;

/*Педставление всех строк-запросов на рынке, сожержащих информацию о торгующихся в рублях компаниях ,
 * скрывая информацию о том, кто выставил торговый запрос(user_id)*/
CREATE OR REPLACE VIEW russian_market AS 
	SELECT 
		securities.securities_ticker AS company,
		buy_sell_statuses.name AS status,
		market.amount  AS amount,
		securities_price.price  AS cost_per_one,
		currencies.name AS currency
	FROM securities
	LEFT JOIN market ON securities.id = market.securities_id 
	LEFT JOIN buy_sell_statuses ON market.buy_sell_status_id = buy_sell_statuses.id 
	LEFT JOIN securities_price ON securities.id = securities_price.securities_id 
	LEFT JOIN currencies ON securities.securities_current_id = currencies.id 
	HAVING currency = 'RUB'
	ORDER BY company ;

SELECT * FROM russian_market;

/*Представление, хранящее информацию о 10 самых акивных пользователях*/
CREATE OR REPLACE VIEW most_active_users AS
	SELECT
		users.id AS id,
		CONCAT(users.first_name, ' ', users.last_name) AS `user`,
		COUNT(posts.id) + COUNT(comments.id) + COUNT(likes.id) AS activity
	FROM users
	LEFT JOIN posts ON users.id = posts.user_id 
	LEFT JOIN comments ON users.id = comments.id 
	LEFT JOIN likes ON users.id = likes.user_id 
	GROUP BY id
	ORDER BY activity DESC 
	LIMIT 10;

SELECT * FROM most_active_users;

/*Представление, выводящее список компаний тогрующихся за доллары, с их статистикой и ценой за 1 акцию*/
CREATE OR REPLACE VIEW usd_companies_stats AS
	SELECT 
		securities.securities_name  AS company,
		financial_indicators.market_cap,
		financial_indicators.ebitda ,
		financial_indicators.m_trading_volume,
		financial_indicators.beta,
		financial_indicators.last_mounth_result,
		financial_indicators.last_six_mounth_result,
		securities_price.price  AS price_per_one,
		currencies.name  AS currency
	FROM securities 
	LEFT JOIN currencies ON securities.securities_current_id = currencies.id 
	LEFT JOIN financial_indicators ON securities.id = financial_indicators.securities_id 
	LEFT JOIN securities_price ON financial_indicators.securities_id = securities_price.securities_id 
	HAVING currency = 'USD';

SELECT * FROM usd_companies_stats;

