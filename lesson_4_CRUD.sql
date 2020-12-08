USE vk;

SHOW TABLES;

-- Доработка таблицы users
SELECT * FROM users;

UPDATE users SET updated_at = NOW() WHERE updated_at < created_at ;

-- Доработка таблицы profiles
SELECT * FROM profiles;

UPDATE profiles 
	SET photo_id = FLOOR(1 + RAND() * 100),
	    user_status_id = FLOOR(1+ RAND() * 2);
	   
DROP TABLE IF EXISTS genders;
CREATE TEMPORARY TABLE genders (name CHAR(1));
INSERT INTO genders VALUES ('m'), ('f');
SELECT * FROM genders;

UPDATE profiles SET gender = (SELECT name FROM genders ORDER BY RAND() LIMIT 1);

-- Доработка таблицы messages
SELECT * FROM messages;

UPDATE messages 
	SET from_user_id  = FLOOR(1+RAND() * 100),
		to_user_id  = FLOOR(1+RAND() * 100);

	-- Редактируем media_types
SELECT * FROM media_types;
TRUNCATE media_types; 
INSERT INTO media_types(name) VALUES
	('photo'),
  	('video'),
  	('audio');
  
-- Доработка таблицы media
SELECT * FROM 	media;

UPDATE media 
	SET user_id = FLOOR(1+ RAND() * 100),
		mediafile_type = FLOOR(1+ RAND() * 3);
-- Создание временной таблицы форматов
DROP TABLE IF EXISTS extentions;
CREATE TEMPORARY TABLE extentions(name VARCHAR(10));
INSERT INTO extentions(name) VALUES ('jpeg'), ('avi'), ('mpeg'), ('png');
SELECT * FROM extentions;

UPDATE media SET filename = CONCAT( 
	'http://dropbox.net/vk/',
	filename,
	(SELECT last_name FROM users ORDER BY RAND() LIMIT 1),
	'.',
	(SELECT name FROM extentions ORDER BY RAND() LIMIT 1)
);

UPDATE media SET size = FLOOR(10000 + RAND() * 1000000) WHERE size < 1000;
UPDATE media SET metadata = CONCAT('{"owner":"',
(SELECT CONCAT(first_name, ' ', last_name) from users WHERE id = user_id),
'"}'
); 

ALTER TABLE media MODIFY COLUMN metadata JSON;

-- Доработка таблицы friendships
SELECT * FROM friendships;

UPDATE friendships 
	SET user_id = FLOOR(1+ RAND() *100),
		friend_id = FLOOR(1+ RAND() *100),
		confirmed_at = NOW() WHERE confirmed_at < requested_at ;
UPDATE friendships 
	SET user_id = user_id + 1 WHERE user_id = friend_id ;

-- Дорабатываем таблицу friendships_statuses
SELECT * FROM friendship_statuses;

TRUNCATE friendship_statuses ;

INSERT INTO friendship_statuses(name) VALUES 
  ('Requested'),
  ('Confirmed'),
  ('Rejected');

UPDATE friendships SET status_id = FLOOR(1+ RAND() * 3);

-- Дорабатываем таблицы communities и communities_users
SELECT * FROM communities;
DELETE FROM communities WHERE id > 20;

SELECT * FROM communities_users;

UPDATE communities_users  SET community_id = FLOOR(1+ RAND() * 20);
