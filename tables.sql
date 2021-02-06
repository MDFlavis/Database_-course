DROP DATABASE IF EXISTS course_project;
CREATE DATABASE IF NOT EXISTS course_project;
USE course_project;

-- Таблица, хранящая данные о пользователях
DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users
(	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор пользователя", 
	first_name VARCHAR(20) NOT NULL COMMENT "Имя пользователя",
	last_name VARCHAR(30) NOT NULL COMMENT "Фамилия пользователя",
	fathers_name VARCHAR(25) DEFAULT NULL COMMENT "Отчетво пользователя(при наличи)",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Дата создания строки" ,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Дата обновления строки"
) COMMENT = 'Таблица пользователей банка';

-- Создание таблиц для функции БД:  "Хранение, купля и продажа ценных бумаг".
DROP TABLE IF EXISTS securities;
CREATE TABLE IF NOT EXISTS securities
(	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор ценной бумаги",
	securities_ticker VARCHAR(15) NOT NULL COMMENT "Тикер ценной бумаги, её цифро-буквенное обозначение на рынке",
	securities_name VARCHAR(255) NOT NULL COMMENT "Название компании, выпускающей ценную бумагу",
	securities_current_id INT UNSIGNED NOT NULL COMMENT "Идентификатор валюты, за которую торгуется бумага",
	securities_type_id INT UNSIGNED NOT NULL COMMENT "идентификатор типа ценной бумаги"
)COMMENT = 'Таблица ценных бумаг на рынке';

DROP TABLE IF EXISTS financial_indicators;
CREATE TABLE IF NOT EXISTS financial_indicators
(	securities_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор Ценной бумаги",
	market_cap DECIMAL(10,2) UNSIGNED NOT NULL COMMENT "Рыночная стоимость компании, млн $",
	ebitda DECIMAL(10,2) NOT NULL COMMENT "Прибыль до вычета налогов, млн $",
	m_trading_volume DECIMAL(10,2) UNSIGNED NOT NULL COMMENT "Среднемесячный обьем торгов, млн $",
	beta DECIMAL(4,2) NOT NULL COMMENT "Волатильность к рынку, коэффициент",
	last_mounth_result DECIMAL(6,2) NOT NULL COMMENT "Доходность компании за последний месяц, %",
	last_six_mounth_result DECIMAL(7,2) NOT NULL COMMENT "Доходность компании за последние пол года, %",
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Дата обновления строки"
) COMMENT='Некоторые финансовые показатели по компаняим-эмитентам, для дальнейшей аналити';

DROP TABLE IF EXISTS currencies;
CREATE TABLE IF NOT EXISTS currencies
(	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор валюты",
	name CHAR(3) NOT NULL COMMENT "Международный код валюты",
	rub_per_one DECIMAL (6,2) NOT NULL COMMENT "Стоимость 1 у.е. в рублях"
) COMMENT='Таблица, хранящая валюты';


DROP TABLE IF EXISTS securities_types;
CREATE TABLE IF NOT EXISTS securities_types
(	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор типа ценной бумаги",
	name VARCHAR(50) NOT NULL COMMENT "Название типа ценной бумаги"
) COMMENT = 'Таблица типов ценных бумаг, находящихся в обращении';

DROP TABLE IF EXISTS securities_price;
CREATE TABLE IF NOT EXISTS securities_price
(	securities_id INT UNSIGNED NOT NULL PRIMARY KEY COMMENT "Идентификатор ценной бумаги",
	price DECIMAL(19,2) UNSIGNED NOT NULL COMMENT "Цена ценной бумаги"
) COMMENT = 'Таблица цен на предлагаемые ценные бумаги';

DROP TABLE IF EXISTS user_assets;
CREATE TABLE IF NOT EXISTS user_assets
(	user_id INT UNSIGNED NOT NULL  COMMENT "Идентификатор пользователя",
	securities_id INT UNSIGNED NOT NULL COMMENT "Идентификатор ценной бумаги, находящейся у на счету пользователя",
	amount INT UNSIGNED NOT NULL COMMENT "Количество ценых бумаг или валюты у пользователя",
	PRIMARY KEY(user_id, securities_id)
) COMMENT = 'Таблица, содержащая данные о имеющихся у пользователя ценных бумагах и их количестве';

DROP TABLE IF EXISTS user_currencies;
CREATE TABLE IF NOT EXISTS user_currencies
(	user_id INT UNSIGNED NOT NULL PRIMARY KEY  COMMENT "Идентификатор пользователя",
	currency_id INT UNSIGNED NOT NULL COMMENT "Идентификатор валюты",
	amount DECIMAL (19,2) UNSIGNED NOT NULL COMMENT "Колличество денежных знаков у пользователя"
)	COMMENT='Таблица с данными по хранимым пользователем валютам и их количеству';

DROP TABLE IF EXISTS market;
CREATE TABLE IF NOT EXISTS market 
(	user_id INT UNSIGNED NOT NULL COMMENT "Идентификатор пользователя",
	securities_id INT UNSIGNED NOT NULL COMMENT "Идентификатор ценной бумаги",
	buy_sell_status_id INT UNSIGNED NOT NULL COMMENT "",
	amount INT UNSIGNED NOT NULL COMMENT "Колличество акций",
	price DECIMAL(19,2) UNSIGNED DEFAULT NULL COMMENT "Цена 1 ценной бумаги",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Дата создания строки" ,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Дата обновления строки",
	PRIMARY KEY(user_id, securities_id, buy_sell_status_id, amount)
) COMMENT = 'Таблица, содержащая информацию о заявках пользователей на покупку или продажу ценных бумаг. 
Принцип такой, что сюда попадают все заявки пользователей на покупку и продажу ценных бумаг с возможностью
указания пользователем своей собственной цены. Система должна постоянно сравнивать строки между собой и если 
встречает строки где 1 и таже акция продается и покупается, высчитывает колличество акции, сумму покупки и продажи,
после чего проводит транзакцию, вычитая у покупателя валюту, а у продавца n-ое колличество акции. В процессе 
если заявки полностью удовлетворены - строки удаляются. НО так как скорость должна быть очень высокой а обьем данных -
коллосальным, я не уверен что реализацию таких функций целесообразно делать на стороне БД, если я правильно 
все понимаю';

DROP TABLE IF EXISTS buy_sell_statuses;
CREATE TABLE IF NOT EXISTS buy_sell_statuses
(	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор статуса купли/продажи",
	name VARCHAR(4) NOT NULL COMMENT "Статус предложения : купля или продажа"
) COMMENT = 'Таблица статусов заявок на рынке, покупаются бумаги или продаются';

DROP TABLE IF EXISTS archive_transactions;
CREATE TABLE IF NOT EXISTS archive_transactions
(	transaction_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор транзакции",
	user_id INT UNSIGNED NOT NULL COMMENT "Идентификатор пользователя, совершившего транзакцию",
	securities_id INT UNSIGNED NOT NULL COMMENT "Идентификатор ценной бумаги",
	buy_sell_status_id INT UNSIGNED NOT NULL COMMENT "Идентификатор статуса совершенной транзакции ",
	amount INT UNSIGNED NOT NULL COMMENT "Колличество ценных бумаг",
	price DECIMAL(19,2) UNSIGNED NOT NULL COMMENT "Цена за 1 бумагу",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Дата создания строки"
) ENGINE = ARCHIVE COMMENT='Таблица-архив, содержащая сведения о совершенных транзакциях';


/*Создание таблиц для реализации функции: "Возможность для пользователей оставлять посты под интересующими 
ценными бумагами, комментировать их и лайкать" */

DROP TABLE IF EXISTS posts;
CREATE TABLE IF NOT EXISTS posts
(	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор поста",
	user_id INT UNSIGNED NOT NULL COMMENT "Идентификатор пользователя",
	securities_id INT UNSIGNED NOT NULL COMMENT "Идентификатор ценной бумаги",
	post VARCHAR(255) NOT NULL COMMENT "Пост, написанный пользователем, имеет ограничение по символам",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Дата создания строки" ,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Дата обновления строки"
) COMMENT='Таблица, хранящая посты пользователей';

DROP TABLE IF EXISTS comments;
CREATE TABLE IF NOT EXISTS comments
(	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор комментария",
	user_id INT UNSIGNED NOT NULL COMMENT "Идентификатор пользователя",
	securities_id INT UNSIGNED NOT NULL COMMENT "Идентификатор ценной бумаги",
	post_id INT UNSIGNED NOT NULL COMMENT "Идентификатор поста, который коментирует пользователь",
	comment VARCHAR(255) NOT NULL COMMENT "Коментарий, написанный пользователем, имеет ограничение по символам",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Дата создания строки" ,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Дата обновления строки"
) COMMENT='Таблица, хранящая коментарии пользователей к постам';


DROP TABLE IF EXISTS likes;
CREATE TABLE IF NOT EXISTS likes 
(	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор лайка",
	user_id INT UNSIGNED NOT NULL COMMENT "Идентификатор пользователя",
	target_id INT UNSIGNED NOT NULL COMMENT "Идентификатор поста или комментария",
	target_type_id INT UNSIGNED NOT NULL COMMENT "Идентификатор типа лайка, пост это или комментарий",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Дата создания строки"
) COMMENT='Таблица, хранящая лайки пользователей к постам и комментариям';

DROP TABLE IF EXISTS target_types;
CREATE TABLE IF NOT EXISTS target_types
(	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор типа лайка", 
	name VARCHAR(7) NOT NULL COMMENT "Название типа лайка"
) COMMENT='Таблица, хранящая названия типов лайков';

