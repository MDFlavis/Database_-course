USE course_project;

-- НАЧАЛО БЛОКА:Индексы
-- Создание индексов для таблицы users
CREATE INDEX first_name ON users(first_name);
CREATE INDEX last_name ON users(last_name);

-- Создание индексов для таблицы securities
CREATE INDEX ticker ON securities(securities_ticker);
CREATE INDEX securities_name ON securities(securities_name);

-- Создание индексов для таблицы financial_indicators
CREATE INDEX market_cap ON financial_indicators(market_cap);
CREATE INDEX ebitda ON financial_indicators(ebitda);
CREATE INDEX m_trading_volume ON financial_indicators(m_trading_volume);
CREATE INDEX beta ON financial_indicators(beta);
CREATE INDEX last_mounth_result ON financial_indicators(last_mounth_result);
CREATE INDEX last_six_mounth_result ON financial_indicators(last_six_mounth_result);

-- Создание индексов для таблицы market
CREATE INDEX securities_id ON market(securities_id);

-- Создание индексов для таблицы posts
CREATE INDEX user_id ON posts(user_id);
CREATE INDEX securities_id ON posts(securities_id);

-- Создание индексов для таблицы comments
CREATE INDEX user_id ON comments(user_id);
CREATE INDEX post_id ON comments(post_id);

-- Создание индексов для таблицы likes
CREATE INDEX user_id ON likes(user_id);
CREATE INDEX target_id ON likes(target_id);
-- КОНЕЦ БЛОКА: Индексы


-- НАЧАЛО БЛОКА: Внешние ключи
-- Добавляем внешние ключи таблице securities
ALTER TABLE securities 
	ADD CONSTRAINT securities_securities_type_id_fk
		FOREIGN KEY (securities_type_id) REFERENCES securities_types(id)
			ON DELETE RESTRICT
			ON UPDATE CASCADE,
	ADD CONSTRAINT securities_current_id_fk
		FOREIGN KEY (securities_current_id) REFERENCES currencies(id)
			ON DELETE RESTRICT 
			ON UPDATE CASCADE;

-- Добавляем внешние ключи таблице user_currencies
ALTER TABLE user_currencies 
	ADD CONSTRAINT user_currencies_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE RESTRICT
			ON UPDATE RESTRICT,
	ADD CONSTRAINT user_currencies_currency_id_fk
		FOREIGN KEY (currency_id) REFERENCES currencies(id)
			ON DELETE RESTRICT
			ON UPDATE CASCADE;
		
-- Добавляем внешние ключи таблице financial_indicators
ALTER TABLE financial_indicators 
	ADD CONSTRAINT financial_indiacators_securities_id_fk
		FOREIGN KEY (securities_id) REFERENCES securities(id)
			ON DELETE CASCADE
			ON UPDATE CASCADE;
		
/*Добавляем внешние ключи таблице user_assets, я установил везде RESTRICT т.к. данная таблица 
является хранилищем всех активов пользователей, если что-то удалится неправильно - это станет катастрофой для банка.*/
ALTER TABLE user_assets 
	ADD CONSTRAINT user_assets_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE RESTRICT
			ON UPDATE RESTRICT,
	ADD CONSTRAINT user_assets_securities_id_fk
		FOREIGN KEY (securities_id) REFERENCES securities(id)
			ON DELETE RESTRICT
			ON UPDATE RESTRICT;

-- Добавляем внешние ключи таблице market
ALTER TABLE market 
	ADD CONSTRAINT market_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE RESTRICT
			ON UPDATE RESTRICT,
	ADD CONSTRAINT market_securities_id_fk
		FOREIGN KEY (securities_id) REFERENCES securities(id)
			ON DELETE RESTRICT
			ON UPDATE RESTRICT,
	ADD CONSTRAINT market_buy_sell_status_id_fk
		FOREIGN KEY (buy_sell_status_id) REFERENCES buy_sell_statuses(id)
			ON DELETE RESTRICT
			ON UPDATE RESTRICT;

-- Добавляем внешние ключи таблице securities_price
ALTER TABLE securities_price 
	ADD CONSTRAINT securities_price_securities_id_fk
		FOREIGN KEY (securities_id) REFERENCES securities(id)
			ON DELETE CASCADE
			ON UPDATE CASCADE;

--  Добавлям внешние ключи таблице posts	
ALTER TABLE posts 
	ADD CONSTRAINT posts_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE NO ACTION
			ON UPDATE CASCADE,
	ADD CONSTRAINT posts_securities_id_fk
		FOREIGN KEY (securities_id) REFERENCES securities(id)
			ON DELETE CASCADE
			ON UPDATE CASCADE;

-- Добавляем внешние ключи таблице comments
ALTER TABLE comments 
	ADD CONSTRAINT comments_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE NO ACTION
			ON UPDATE CASCADE,
	ADD CONSTRAINT comments_securities_id_fk
		FOREIGN KEY (securities_id) REFERENCES securities(id)
			ON DELETE CASCADE
			ON UPDATE CASCADE,
	ADD CONSTRAINT comments_post_id_fk
		FOREIGN KEY (post_id) REFERENCES posts(id)
			ON DELETE CASCADE
			ON UPDATE NO ACTION;
		
-- Добавляем внешние ключи таблице likes
ALTER TABLE likes
	ADD CONSTRAINT likes_target_type_id_fk
		FOREIGN KEY (target_type_id) REFERENCES target_types(id)
			ON DELETE RESTRICT
			ON UPDATE RESTRICT,
	ADD CONSTRAINT likes_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE NO ACTION
			ON UPDATE CASCADE,	
	ADD CONSTRAINT likes_target_id_posts_fk
		FOREIGN KEY (target_id) REFERENCES posts(id)
			ON DELETE CASCADE
			ON UPDATE CASCADE,
	ADD CONSTRAINT likes_target_id_comments_fk
		FOREIGN KEY (target_id) REFERENCES comments(id)
			ON DELETE CASCADE
			ON UPDATE CASCADE;	
-- КОНЕЦ БЛОКА: Внешние ключи		
		
		
		