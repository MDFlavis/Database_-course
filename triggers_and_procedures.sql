
USE course_project;



-- Триггер для добавления совершенных транзакций в архив

DROP TRIGGER IF EXISTS success_transactions

DELIMITER //

CREATE TRIGGER success_transactions BEFORE DELETE ON market
FOR EACH ROW
BEGIN 
	INSERT INTO archive_transactions(user_id, securities_id, buy_sell_status_id, amount, price, created_at) VALUES 
		(OLD.user_id, OLD.securities_id, OLD.buy_sell_status_id, OLD.amount, OLD.price, DEFAULT);
END//


DELIMITER ;

-- Проверяем работу триггера
SELECT * FROM archive_transactions ;

SELECT * FROM market WHERE securities_id =1;
DELETE FROM market WHERE securities_id = 1;



/*Триггер, заполняющий цены за 1 акцию в таблице market в случаях,если пользователь не указал свою цену
-- Понимаю что решение неоптимальное и медленное в масштабе больших данных.  По хорошему, 
эту функцию, как мне представляется, стоит реализовывать на низкоуровневых языках 
программирования на стороне приложения, но я так долго бился над правильной работой этого триггера
(С моим знанием синтаксиса мне потребовалось написать около десятка вариаций что бы все работало корректно)
что решил вставить его в финальную версию работы*/

DROP TRIGGER IF EXISTS price_check;

DELIMITER //

CREATE TRIGGER price_check BEFORE INSERT ON market
FOR EACH ROW 
	BEGIN  
		IF NEW.price IS NULL THEN  
			SET NEW.price = (SELECT price FROM securities_price WHERE securities_price.securities_id = NEW.securities_id);
		END IF;
	END // 
DELIMITER ;



-- Процедура, заполняющая цены за 1 акцию в таблице market в случаях,если пользователь не указал свою цену, 
-- реализация прошлого триггера только в хранимой процедуре(Создание этой процедуры было ключевым шагом после 
-- многих неудачных попыток, 
-- который в итоге привел меня к написанию триггреа который работает так как я хотел, а потому как процедура
--  попадает под критерии работы, просто выкидывать её мне стало жалко)

DROP PROCEDURE IF EXISTS price_from_securities_price;

DELIMITER //

CREATE PROCEDURE price_from_securities_price()
	BEGIN
		UPDATE market 
		SET price = (SELECT price FROM securities_price WHERE securities_id = market.securities_id)
		WHERE price IS NULL;
	END //

DELIMITER ;

-- Проверяем работу процедуры
call price_from_securities_price;


