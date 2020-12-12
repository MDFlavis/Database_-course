USE vk;

-- ЗАДААНИЕ 1 Создать и заполнить таблицы лайков и постов.

-- Создание таблицы лайков
DROP TABLE IF EXISTS likes;
CREATE TABLE IF NOT EXISTS likes(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
	user_id INT UNSIGNED NOT NULL COMMENT "Идентификатор пользователя",
	target_id INT UNSIGNED NOT NULL COMMENT "Идентификатор лайка",
	target_type_id INT UNSIGNED NOT NULL COMMENT "Иденификатор типа лайка",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Дата создания строки"
);


-- Создание таблицы типов лайков
DROP TABLE IF EXISTS target_types;
CREATE TABLE IF NOT EXISTS target_types(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
	name VARCHAR(255) NOT NULL UNIQUE COMMENT "Название типа лайка",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Дата создания строки"
);

-- Заполнение таблицы типов лайков
INSERT INTO target_types (name) VALUES 
  ('messages'),
  ('users'),
  ('media'),
  ('posts');

 -- Заполнение таблицы лайков
 INSERT INTO likes 
 	SELECT
 		id,
 		FLOOR(1+ RAND() * 100),
 		FLOOR(1+ RAND() * 100),
 		FLOOR(1+ RAND() * 4),
 		CURRENT_TIMESTAMP()
 	FROM messages;
 
 SELECT * FROM likes;

-- Создание таблицы постов
DROP TABLE IF EXISTS posts;
CREATE TABLE IF NOT EXISTS posts(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
	user_id INT UNSIGNED NOT NULL COMMENT "Идентификатор пользователя",
	communiti_id INT UNSIGNED COMMENT "Идентификатор группы",
	head VARCHAR(255) COMMENT "Заголовок поста",
	body TEXT NOT NULL COMMENT "Текст поста",
	media_id INT UNSIGNED COMMENT "Идентификатор медиафайла",
	is_public BOOLEAN DEFAULT TRUE COMMENT "Публичный ли пост",
	is_archived BOOLEAN DEFAULT FALSE COMMENT "Заархивированный ли пост",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Дата создания строки",
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Дата обновления строки"
);
 
-- Заполнениие и доработка таблицы постов 
 
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (1, 8, 9, 'voluptas', 'Illum cum voluptatibus rem ad placeat dignissimos. Nulla rem deleniti delectus dolorum aspernatur voluptatem. Vero aut ut optio itaque autem. Aspernatur assumenda et voluptatibus similique magnam.', 4, 0, 1, '1980-10-18 23:16:00', '1980-09-05 12:36:04');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (2, 0, 8, 'adipisci', 'Est quia id omnis ut. Perspiciatis et dolor in autem. Accusantium suscipit facere libero fugiat sed accusantium. Non maxime porro a quo.', 9, 1, 1, '1973-05-19 20:54:06', '1976-11-06 21:08:08');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (3, 2, 5, 'illo', 'Molestias quia sit ullam doloremque. Velit consequatur dolores quae quia. Doloremque et aut minima voluptas quo. Quae asperiores repellat quos deleniti tempore voluptatem.', 7, 1, 0, '2016-06-25 09:53:09', '1997-06-16 20:33:18');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (4, 0, 9, 'est', 'Impedit eos aperiam facere voluptatem dolor perspiciatis. Assumenda id sed ratione consequuntur laborum. Consequuntur dolores magnam id sed ut ipsa.', 7, 1, 0, '1980-08-04 08:43:30', '1972-01-03 23:04:01');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (5, 5, 5, 'eaque', 'Sint molestiae ad ipsum. Sed atque iure est neque repellat blanditiis. Et quia quia autem temporibus. Temporibus eum nostrum quaerat nam eos.', 1, 0, 0, '1988-11-07 07:45:05', '1986-06-14 01:14:00');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (6, 6, 2, 'blanditiis', 'Deleniti accusantium voluptas expedita animi velit. Sunt laborum eum sunt provident omnis.', 6, 1, 0, '1974-01-20 04:20:06', '1998-10-27 11:01:13');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (7, 8, 3, 'eos', 'Quisquam exercitationem est deleniti cum. Non minus magni vero sed dicta. Ut iste sed est id.', 3, 1, 1, '2006-07-09 16:15:28', '1984-03-17 16:46:42');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (8, 6, 8, 'sed', 'Sequi et ullam qui consequatur voluptate. Asperiores autem deleniti et minima. Non distinctio quia et deserunt quas consequatur.', 9, 0, 1, '2011-05-26 06:27:37', '2003-07-09 19:44:20');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (9, 0, 1, 'officiis', 'Quia quisquam odit autem officiis. Velit non non eos officia aspernatur voluptatem est. Officiis vel quidem voluptatum dolore. Corporis facere harum aut occaecati id qui veritatis.', 8, 0, 1, '1996-12-12 10:03:42', '1995-04-08 17:00:33');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (10, 3, 3, 'cum', 'Magnam ut non quasi accusantium ut beatae quis aut. Autem assumenda omnis quibusdam. Ad beatae necessitatibus consequuntur eos.', 6, 1, 0, '2006-12-02 02:51:29', '2005-02-27 15:56:48');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (11, 7, 9, 'natus', 'Tempore at iusto quia adipisci. Quaerat cum sit voluptas in odio quia. Omnis facere consectetur vel. Adipisci veritatis cupiditate nihil assumenda amet rem et.', 9, 0, 1, '2020-02-06 17:11:14', '1972-10-29 04:44:14');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (12, 2, 2, 'quidem', 'Corporis facilis a cum nesciunt maxime omnis ratione. Explicabo aut aliquid cupiditate qui. Ut doloribus nam aut optio inventore voluptatem eius. Sit pariatur accusantium molestiae tenetur eos error.', 3, 1, 1, '1983-09-01 13:40:35', '2018-10-24 05:21:16');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (13, 0, 2, 'corrupti', 'Consectetur harum saepe provident minus fugiat. Sed iste est ut est nihil. Est dolores ab voluptatem harum. Ullam ex illo reprehenderit nisi ut.', 4, 1, 0, '1999-01-17 15:12:22', '2011-05-15 07:07:58');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (14, 0, 2, 'adipisci', 'Ullam quod ex distinctio deserunt ratione. Adipisci eveniet sint voluptas suscipit et assumenda neque. Aspernatur sapiente quo suscipit velit.', 0, 0, 1, '2007-12-27 03:56:01', '2014-09-05 07:48:41');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (15, 4, 3, 'illum', 'Tenetur dolore repellat aut. Aliquid laborum vel est perferendis cupiditate mollitia dolores tempore. Eos unde eum mollitia provident quibusdam aperiam. Voluptate sequi suscipit laudantium voluptatem ut.', 9, 1, 0, '1977-04-14 03:28:06', '1991-02-20 06:31:35');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (16, 2, 9, 'omnis', 'Accusantium delectus eius et. Sapiente autem eos magnam quo ullam. Accusantium alias nisi facilis ducimus qui non. Aut blanditiis voluptate odit minima fuga.', 1, 1, 0, '1973-02-15 03:43:06', '2007-12-15 08:53:56');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (17, 1, 7, 'dolores', 'Qui rerum veniam consectetur voluptas minus at sapiente. Voluptatem quia sequi illo vel amet dolores. Dolorem illo rerum perferendis est ipsum quia voluptate dolores.', 8, 1, 1, '1986-09-06 19:27:59', '1975-05-26 00:53:15');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (18, 5, 1, 'cupiditate', 'Fuga voluptatibus aut ut. Saepe cum in blanditiis sint sed non. Harum ad repudiandae provident. Deleniti explicabo ea repudiandae et ullam quasi. Optio placeat deleniti aspernatur expedita corporis officia.', 0, 0, 1, '1994-12-20 11:43:24', '1981-08-12 11:05:01');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (19, 9, 7, 'numquam', 'Est omnis cumque quia dicta. Similique in sed possimus minus sed aut. Saepe et dolorum sunt magni sed expedita.', 8, 0, 0, '2003-01-12 09:22:44', '1994-08-22 17:02:41');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (20, 6, 2, 'sit', 'Nobis odio qui deleniti deserunt laboriosam nisi corrupti. Corrupti odio cum consequatur perferendis et quo. Quia dolor aut labore sed sed natus nisi quo. Aperiam aut quia est provident.', 8, 0, 0, '2018-08-18 15:26:35', '2010-11-12 11:03:23');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (21, 9, 9, 'sapiente', 'Vitae iusto omnis sapiente a velit molestiae. Neque aut voluptatem modi.', 8, 0, 1, '1994-01-28 06:18:07', '1981-01-08 03:19:32');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (22, 3, 8, 'ut', 'Quae quam aut accusantium sit asperiores aspernatur. Quos sint voluptate fugiat accusamus ducimus quod. Officia expedita et quos veniam. Beatae occaecati est repellendus qui quia fugiat.', 0, 1, 0, '2006-01-09 03:29:42', '1972-11-14 15:11:05');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (23, 8, 5, 'praesentium', 'Quasi quis ducimus totam natus voluptatem et eum. Magni maxime aut ut ea sed ullam. Explicabo sapiente id architecto et ex id aliquam nisi. Amet et autem rerum minus. Illum laudantium deleniti laborum voluptates et.', 7, 0, 0, '2001-02-13 03:30:07', '2004-12-23 23:03:05');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (24, 5, 1, 'porro', 'Nemo id sed eius odio consequuntur eum. Cum quod ut dicta dolorem. Minima consequatur nihil tempora nam et quos.', 4, 1, 0, '1984-04-11 20:10:59', '1972-11-29 23:30:45');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (25, 2, 7, 'corrupti', 'Praesentium delectus porro officiis omnis sit placeat deserunt. Temporibus et quidem eum voluptatibus. Porro tempore illum quia saepe architecto.', 0, 1, 1, '1973-08-31 23:14:53', '1983-06-05 03:50:15');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (26, 0, 5, 'et', 'Animi aliquam vitae rerum consectetur iure voluptatem. Voluptatem occaecati sed voluptatem rerum dicta sint. Voluptatibus consequuntur sint consequatur asperiores sequi quam voluptatem.', 7, 1, 0, '2019-03-18 04:47:19', '2009-08-15 10:17:31');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (27, 2, 8, 'et', 'Quisquam delectus ratione et debitis et nostrum. Sed aut incidunt repellendus autem possimus non. Voluptatum nisi ab dolores rerum.', 7, 0, 0, '1985-11-29 07:34:57', '1976-05-05 08:24:44');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (28, 1, 3, 'sunt', 'Enim similique nisi vitae quia fugiat dolore modi. Quae temporibus optio sed. Voluptatem sed quidem qui inventore.', 1, 0, 0, '1975-09-08 15:30:51', '2012-10-23 07:19:16');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (29, 1, 9, 'cumque', 'Nostrum impedit maxime quae et. Sunt expedita error rerum sapiente omnis. Ullam tempora laborum ea ut sit molestiae. Voluptas dolore optio est magni quae doloribus fugiat commodi. Qui voluptates labore quas blanditiis rerum et a maiores.', 2, 0, 1, '2014-04-06 04:58:02', '2012-04-28 20:25:50');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (30, 5, 8, 'velit', 'Tenetur quia sapiente autem quis. Sint est odit inventore itaque error. Sunt consequatur est enim id. Quo quibusdam officia neque sunt aut est.', 1, 0, 1, '1995-02-23 15:22:01', '1978-06-28 18:04:28');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (31, 2, 4, 'reiciendis', 'Non eaque ut cumque ipsam. Culpa ut dolores omnis est. Omnis optio error soluta laudantium.', 8, 0, 0, '1985-07-20 15:12:09', '1977-02-13 13:08:29');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (32, 4, 4, 'molestiae', 'Unde molestias nam tempora fugiat natus quasi debitis. Eius sint non sit. Odio quibusdam officia fugit aut molestiae natus assumenda. Commodi officiis aut aut dolorem quasi architecto sunt.', 9, 0, 1, '2019-07-08 22:32:56', '2010-02-23 01:59:48');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (33, 4, 3, 'sed', 'Vitae aperiam labore placeat. Quisquam aliquid ut sit quisquam explicabo recusandae qui qui. Voluptatum omnis reiciendis aspernatur eum odio officiis. Id vel unde sapiente sit quia.', 6, 0, 0, '1980-06-09 06:20:19', '2010-04-16 21:47:11');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (34, 0, 3, 'non', 'Placeat qui debitis numquam quae amet optio ut. Consequuntur voluptas soluta molestiae aut quo. Et voluptatem libero odit.', 0, 1, 0, '1987-01-08 04:12:24', '1975-01-05 23:25:03');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (35, 7, 5, 'sint', 'Modi magni ea odit totam tempora laboriosam voluptas totam. Est sit ut est ut explicabo earum voluptate architecto. Illo et labore rerum expedita dicta aut rerum.', 2, 1, 0, '2009-12-18 03:33:11', '2003-11-29 04:39:39');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (36, 3, 2, 'illum', 'Vel molestiae optio nihil. Minus a dignissimos sunt at. Autem cum architecto quasi accusantium. Sed nemo quia quibusdam sunt.', 6, 0, 1, '1986-05-02 12:59:05', '1990-10-20 14:30:38');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (37, 3, 6, 'voluptatibus', 'Ut reiciendis harum ad sed minus eum quis et. Dolores molestiae omnis sit molestiae. Sint fugit eius suscipit tempora repellendus ducimus. Nihil quae qui deleniti dolorem numquam et non sit.', 3, 0, 0, '2003-05-21 20:13:58', '2000-04-02 01:15:57');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (38, 4, 5, 'ratione', 'Accusamus voluptates ipsum quo labore ut. Cumque accusantium culpa id voluptas et placeat voluptatibus aut. Quo possimus rerum sunt modi impedit.', 3, 0, 0, '1977-05-09 07:01:15', '1990-09-23 05:03:03');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (39, 4, 3, 'repudiandae', 'Facere reprehenderit nostrum non aperiam. Pariatur id voluptas perferendis qui ut. Perferendis non minus nisi id enim odio.', 7, 0, 1, '1975-04-10 09:13:44', '1975-12-22 11:33:46');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (40, 5, 0, 'et', 'Est aut suscipit hic sapiente dolores. Commodi et mollitia et et et. Maiores enim laudantium libero odit dicta ipsam. Unde tempora impedit sit a sit dolor.', 6, 0, 1, '1975-10-27 18:41:08', '1984-02-19 00:31:30');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (41, 8, 1, 'sunt', 'Autem dolor voluptatem vero quam autem modi impedit. Porro ab ut eos mollitia eius qui vel inventore. Quia blanditiis ut enim facere consequatur error cum quidem. Culpa architecto harum animi necessitatibus rerum ut. Quo fugiat accusamus quod in dignissimos.', 1, 0, 1, '1991-03-14 03:18:09', '1972-03-29 22:21:57');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (42, 6, 4, 'voluptatem', 'Aut rerum exercitationem cum atque. Quae ratione similique nisi. Autem soluta molestiae et est quod voluptatem.', 4, 0, 0, '2018-12-01 13:17:09', '2004-04-01 23:38:41');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (43, 8, 6, 'occaecati', 'Porro explicabo in quia atque. Est nihil officia mollitia. Impedit repellat non provident sequi error. Sed est consequatur dignissimos esse totam. Corporis tenetur consequatur quam reprehenderit quidem id.', 2, 0, 0, '1995-05-03 04:00:16', '2014-11-23 05:10:04');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (44, 0, 7, 'quia', 'Rerum placeat ex et molestiae qui aut. Mollitia ipsum et nihil. Illum dolore quod et voluptas.', 8, 1, 0, '2016-09-06 10:05:37', '1998-06-21 23:43:32');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (45, 6, 7, 'quia', 'Quia quae deserunt eveniet qui repellendus recusandae occaecati et. Qui voluptatem veritatis architecto dolorem sapiente ut. Qui et voluptatem ex rerum sit laboriosam. Quaerat est sit aut rem aut aspernatur eum. Deleniti ut at ab sed.', 5, 0, 1, '2001-08-03 18:54:34', '1972-01-25 15:09:51');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (46, 1, 7, 'facere', 'A iure saepe iste et sit. Ea delectus et non. Impedit temporibus corporis dolores dolorem expedita vel error. Nisi cum ipsum voluptas consequuntur.', 7, 1, 1, '1983-02-10 07:22:41', '1996-04-03 09:22:36');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (47, 6, 3, 'repellat', 'Facere dolor exercitationem dolores praesentium. Vel ab officia sit ad quo. Ducimus pariatur non velit quas et quae.', 6, 0, 0, '2000-12-16 05:03:39', '1972-10-03 14:57:46');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (48, 6, 1, 'consequatur', 'Sequi aliquid architecto inventore omnis officia ut. Expedita quas eveniet quasi eaque ut. Vero deserunt fugiat voluptate doloribus dolore vel. Eius necessitatibus soluta velit ea dicta.', 5, 0, 1, '2020-02-11 14:41:14', '1974-08-10 13:40:05');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (49, 9, 9, 'eum', 'Quo illum aspernatur praesentium velit tenetur ut nulla est. Neque facere ex sed at dolore voluptatibus. Amet ad commodi illum ea. Ad enim numquam odio commodi.', 1, 0, 1, '2011-04-22 22:14:40', '1991-10-21 08:16:43');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (50, 7, 3, 'saepe', 'Velit quam quasi est veniam ad. Eum necessitatibus quis qui ducimus quo odit consequuntur.', 9, 0, 0, '2008-04-19 05:52:14', '1977-06-20 15:24:51');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (51, 5, 0, 'tempore', 'Sed culpa velit eos eveniet ut assumenda quo. Laboriosam corporis modi tempore maxime distinctio ex. Iure exercitationem ut cumque et. Necessitatibus labore porro impedit porro laudantium.', 8, 0, 0, '2015-10-30 08:37:14', '2018-08-08 07:39:10');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (52, 5, 4, 'non', 'Odio hic vel quia sapiente accusamus et ut. Aut ea velit consequuntur maxime autem. Architecto officiis nihil quod illum voluptate doloremque facilis natus.', 9, 1, 0, '1973-03-29 09:41:45', '2014-05-24 17:10:15');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (53, 7, 8, 'sed', 'Vitae cupiditate accusamus quia et ea inventore. Recusandae et hic doloribus praesentium occaecati sit molestiae maxime. Similique quidem dolorum qui fuga. Consequatur perspiciatis dolores et nam. Molestias nobis sit velit harum.', 8, 1, 0, '1981-07-15 08:05:43', '1976-03-13 09:10:08');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (54, 0, 9, 'rerum', 'Quisquam perferendis dolore non vero iste. Asperiores laborum incidunt aut rem.', 7, 1, 0, '1998-04-20 22:12:55', '2014-04-17 13:23:47');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (55, 0, 1, 'quod', 'Doloribus eligendi eveniet molestiae voluptatibus perspiciatis qui consequatur quos. Vitae minus sed minima vitae est enim. Et error similique incidunt inventore.', 0, 0, 1, '1999-01-05 09:06:13', '2011-07-24 08:06:09');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (56, 5, 1, 'dolorum', 'Consequatur velit error ullam suscipit et in aut. Quis ut est facilis perferendis deleniti velit eius. Libero rem minus accusantium officia soluta id tempora. Cumque velit expedita aspernatur sint et aut. Nostrum distinctio et error voluptatem officia voluptas.', 1, 0, 0, '1988-07-29 00:24:33', '1981-08-16 02:04:06');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (57, 8, 0, 'facere', 'Perferendis exercitationem aut corrupti rerum quis aut consequuntur sunt. Accusantium et soluta a ipsam quia non.', 0, 1, 1, '2010-01-07 01:56:35', '1997-08-22 19:23:48');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (58, 9, 8, 'ea', 'Placeat laboriosam assumenda dolorem. Fuga aut ipsam ab similique. Ut omnis repudiandae rerum sint possimus illum sit. Et nemo sit dolore.', 9, 1, 1, '2019-11-01 12:05:27', '1980-12-11 22:35:01');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (59, 6, 2, 'quos', 'Dicta quod saepe qui natus. Labore facilis eveniet molestiae quam et eveniet. Eum sit debitis consequatur repellendus.', 9, 0, 0, '2019-08-05 21:01:10', '2013-12-12 19:59:08');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (60, 8, 8, 'asperiores', 'Cum est sunt modi omnis velit excepturi nulla asperiores. Illo et dolore nihil quisquam occaecati. In voluptas velit inventore dignissimos saepe deserunt.', 3, 1, 1, '1989-10-10 00:50:07', '2011-11-04 13:59:12');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (61, 1, 9, 'maxime', 'Voluptatem dolores sequi nulla itaque. Ducimus quo nihil laboriosam quas omnis doloremque. Quidem quia maxime qui omnis.', 2, 1, 0, '1972-04-21 04:19:40', '2017-06-19 19:25:37');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (62, 0, 6, 'placeat', 'Qui voluptatum enim labore quia minima dolore repellendus inventore. Voluptatibus molestiae enim facilis est. Quo quis similique similique voluptas dolorum qui atque. Magni sed nostrum beatae eveniet voluptas dicta.', 7, 1, 0, '1998-09-11 15:38:53', '1978-06-25 13:35:48');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (63, 3, 3, 'reiciendis', 'Est nostrum id animi nobis et. Ea voluptatem deleniti in autem aut in necessitatibus. Vel molestiae corporis quod sequi repudiandae assumenda. Ut voluptates asperiores voluptas autem ipsum quam mollitia.', 1, 0, 0, '2005-09-28 23:21:44', '1999-12-23 22:54:55');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (64, 2, 2, 'optio', 'Ut quo ut qui rerum architecto. Repellendus ullam quas ut ea animi et et. Eius voluptatem amet voluptates illo officia autem consequatur voluptatibus. Consequuntur quia dolores quisquam vitae. Dolorem et aut saepe nihil.', 4, 0, 1, '1981-01-08 10:45:48', '2009-02-05 18:36:00');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (65, 8, 2, 'eligendi', 'Necessitatibus temporibus tempora minus qui nam. Pariatur nam consequatur sunt sed eum. Quae vitae velit distinctio praesentium est. Totam et quisquam quas itaque ut.', 1, 1, 0, '2014-08-26 06:39:01', '1991-12-05 05:43:19');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (66, 9, 0, 'dolore', 'Est sed iure eaque laboriosam beatae ab esse. Eveniet ab cumque laudantium quas asperiores aut est. Dolor saepe quia ullam officia molestiae.', 2, 0, 0, '2016-05-14 22:22:38', '1982-09-28 22:55:36');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (67, 8, 6, 'magni', 'Enim necessitatibus dolore cumque. Dolore cumque illum accusamus earum quia. Voluptatem sit recusandae est nam explicabo suscipit. Labore tempore neque tempore in ipsa ducimus.', 9, 0, 1, '1970-10-17 20:31:11', '2020-11-27 19:06:41');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (68, 4, 2, 'vel', 'Tenetur iusto ullam labore. Consectetur saepe unde perspiciatis ut dolor sed. Est assumenda laboriosam eos ipsa sunt sint. Reprehenderit necessitatibus perferendis labore.', 9, 0, 0, '2020-08-20 11:38:01', '2005-11-10 06:56:36');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (69, 6, 4, 'temporibus', 'Amet nostrum earum aliquid nam nostrum eligendi sequi fuga. Ut soluta quo sit explicabo quasi aperiam. Maxime dolorum fuga quia est soluta laborum voluptate. Iste et expedita incidunt fugiat est aspernatur.', 6, 1, 1, '2005-07-27 16:31:35', '2007-07-18 16:34:14');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (70, 0, 8, 'ex', 'Nisi cupiditate non aut ut soluta et suscipit. Voluptatem doloremque dolore corrupti. Quo vitae reiciendis perferendis quia harum. Nulla illo omnis culpa inventore.', 9, 1, 0, '1981-04-30 16:11:45', '2016-11-11 18:07:53');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (71, 3, 4, 'corporis', 'Id architecto et porro veniam quidem aspernatur. Ut earum quisquam autem quos. Quo voluptas est vel ex eum debitis deleniti.', 5, 1, 1, '1987-12-25 08:11:36', '1989-02-18 04:20:00');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (72, 5, 7, 'fugiat', 'Libero at mollitia est et voluptatem. Quia nostrum et aut ipsum nemo. Officiis fugit aut sit necessitatibus non dicta quia. Voluptatem eos fuga qui labore illum dolor.', 9, 1, 1, '1972-04-07 07:18:15', '2013-10-25 03:01:03');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (73, 8, 0, 'rerum', 'Inventore magni quia perspiciatis et. Molestias nobis temporibus quos perspiciatis accusamus error. Quibusdam dolor dolorem vitae eaque eum fuga. Corrupti consequatur est perspiciatis vel. Eum dignissimos rerum quisquam deleniti.', 6, 1, 0, '1994-02-27 15:37:53', '2017-04-18 23:50:53');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (74, 2, 7, 'dignissimos', 'Iure molestiae voluptatum harum et. Voluptatem et tempore dolore recusandae animi beatae tempore dolor. Error et ut eveniet aut debitis. Tempora culpa deserunt et explicabo suscipit fuga qui.', 1, 1, 1, '1992-07-20 05:45:11', '1999-02-12 22:57:28');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (75, 5, 0, 'dolorem', 'Est dolorem blanditiis impedit deserunt. Officiis quibusdam fugit placeat quia voluptatibus. Sapiente doloribus omnis ratione esse omnis.', 9, 0, 0, '1985-07-26 04:03:20', '2018-03-20 23:31:29');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (76, 0, 1, 'quia', 'Et harum veniam perferendis mollitia accusamus. Unde harum et fuga veritatis provident est. Vel quis rerum et minus vero.', 7, 1, 0, '2001-07-09 15:55:30', '2014-09-16 00:58:03');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (77, 9, 5, 'voluptatem', 'Ut architecto quia ipsam voluptas. Odio enim deleniti pariatur aspernatur eum quo quia. Voluptate rem sint ut earum nesciunt facilis ut. Non qui possimus quibusdam praesentium.', 3, 1, 0, '2002-05-17 06:30:14', '2019-11-30 20:27:24');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (78, 7, 9, 'velit', 'Nam impedit sed et repudiandae voluptas sint. Dolor et totam distinctio incidunt voluptatem. Eum ad consectetur veritatis eligendi.', 8, 1, 1, '1993-08-26 10:41:59', '1979-09-27 17:16:21');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (79, 4, 5, 'enim', 'Et doloremque aut dolor asperiores atque soluta quia. Voluptatem est sint delectus autem architecto omnis similique. Qui sint quo non. Dolores repellat perferendis necessitatibus ipsum ad. Eius ex cumque iusto libero deleniti et.', 0, 0, 1, '2012-08-21 02:14:17', '2004-11-22 23:29:07');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (80, 3, 2, 'occaecati', 'Et fugit debitis dicta libero inventore ipsam. Reprehenderit ea in necessitatibus in illo. Ut est maxime sed dolor nisi quo autem unde.', 5, 0, 1, '2015-09-18 00:00:33', '1973-06-27 11:28:43');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (81, 3, 8, 'quia', 'Maxime et voluptate ea nostrum. Iste mollitia ullam ut saepe voluptatum ut rem. Exercitationem ullam saepe aut quo rerum. Vel facere voluptatem qui minima molestiae.', 0, 1, 0, '2006-03-13 18:30:39', '2018-01-07 20:29:36');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (82, 2, 1, 'nulla', 'Voluptas aspernatur error itaque aspernatur veniam ut magni. Dolorem dolores delectus explicabo ut ab dolorem. Reprehenderit eos fugit ut est deserunt distinctio quidem.', 1, 1, 0, '2005-07-12 01:18:37', '1978-04-13 04:36:57');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (83, 2, 6, 'facere', 'Est maiores nihil tenetur molestiae reprehenderit qui ut. Qui ut libero est libero id ut voluptas. Debitis eligendi saepe in sunt quis asperiores recusandae.', 3, 0, 1, '1993-07-27 22:23:28', '1981-06-07 06:54:08');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (84, 1, 6, 'sit', 'Quia architecto ea eius sequi modi qui. Et qui eveniet officiis dolores nobis. Omnis ut ea officia sunt et a molestiae.', 5, 1, 0, '2016-06-14 17:52:01', '2003-12-26 11:09:44');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (85, 6, 0, 'in', 'Eum at ipsam exercitationem et. Recusandae incidunt ratione harum ratione. Voluptates autem provident quis nihil aut accusamus corporis qui. Sit sit consequatur in sit.', 9, 0, 1, '1995-04-05 00:00:14', '1990-02-19 16:21:39');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (86, 9, 2, 'esse', 'Expedita aperiam aliquam nam animi animi. Illo voluptas explicabo est minima temporibus sunt odit. Omnis atque aliquam quibusdam. Sed dolore quis vel qui voluptas et quasi.', 7, 1, 1, '2005-07-06 06:01:41', '1970-08-06 09:56:37');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (87, 1, 8, 'voluptatem', 'Temporibus non nihil officia maiores. Quia magnam molestiae dolores sed. Nobis dolores sed repudiandae consectetur et ullam.', 8, 0, 0, '2008-10-08 10:59:55', '1998-10-07 21:31:00');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (88, 0, 2, 'dolorum', 'Tempore ut eos a iste odit eius. Quo in illo voluptatem dolores quasi illo. Aspernatur qui non animi sunt eum quis. Optio consectetur amet magnam voluptates.', 5, 1, 0, '1984-11-06 04:46:27', '1970-03-16 08:23:02');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (89, 1, 4, 'et', 'Quisquam non voluptatibus harum. Ut quae magni expedita molestiae tempora officia ut laboriosam. Harum cumque sit reiciendis dolores enim odio. Aperiam in tenetur et.', 1, 1, 0, '2013-10-15 22:55:15', '2020-11-24 23:44:50');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (90, 1, 8, 'voluptates', 'Enim dolorem illum tempore consequatur voluptatem molestias eaque. Mollitia soluta exercitationem eos. Totam accusamus quae aperiam voluptate culpa error numquam nihil. Necessitatibus tempora ut voluptatum facilis reprehenderit consequatur.', 6, 0, 0, '1976-10-23 20:00:31', '2004-10-14 04:55:59');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (91, 6, 4, 'quia', 'Maxime est omnis harum fugit quaerat. Quibusdam quaerat iusto quia maiores aperiam tenetur atque omnis. Sunt autem quae animi est omnis. Nam asperiores dolor sunt a sint.', 5, 0, 1, '2016-06-15 18:38:54', '2006-07-01 18:13:22');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (92, 3, 6, 'necessitatibus', 'Placeat possimus nam animi. Ut aut optio quisquam et nemo porro. Voluptas aliquam hic consequatur eum reiciendis nam. Nobis quia ex veritatis voluptas occaecati et et quod.', 0, 0, 0, '1984-02-17 08:37:13', '2011-08-18 04:46:22');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (93, 5, 6, 'nobis', 'Inventore et voluptatem earum soluta. Dicta at rerum odio modi tempora iure ea. Sint corporis sit consequuntur eius tenetur iste consequatur et.', 0, 0, 1, '2008-01-31 20:12:43', '1983-11-24 03:34:27');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (94, 6, 0, 'voluptatem', 'Et assumenda ab dolor reiciendis deserunt quo alias. Ea maiores nulla veritatis eum. Et eaque optio dignissimos at omnis et fugit. Sunt similique nulla voluptas.', 2, 1, 1, '2010-08-13 19:57:32', '2004-09-21 03:28:39');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (95, 4, 8, 'similique', 'Animi iusto non odio ullam in tempore. Qui consequatur qui tenetur molestiae nobis. Et alias consequatur sed voluptas. Aut praesentium voluptatum eum repellendus.', 4, 0, 0, '1990-06-06 07:23:09', '2008-04-18 16:21:28');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (96, 9, 3, 'omnis', 'Assumenda perferendis sit autem voluptas recusandae labore. Ab eos sit et qui rem dolores. Delectus tenetur non ratione doloribus non.', 3, 0, 0, '2018-01-17 01:03:43', '1974-12-31 08:31:57');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (97, 7, 6, 'earum', 'Cupiditate tenetur eos dolore rem aut aut sit saepe. Rerum eos eveniet corrupti ipsa dolor. Vitae provident suscipit consequuntur ea.', 6, 0, 0, '2011-11-24 00:49:21', '1996-02-28 17:37:07');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (98, 2, 8, 'ipsum', 'Quidem saepe dolore voluptatem. Aut excepturi dolores quod quo aut cum a. Voluptatem dolorem sint occaecati sed non officiis. Quia aut ipsa quisquam repellat.', 6, 0, 1, '1991-05-10 13:20:10', '2018-02-24 20:44:54');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (99, 7, 0, 'autem', 'Totam rerum eius corrupti autem. Adipisci non eius sit qui. Nihil asperiores officia tenetur est aut est dolorem. Soluta quia magnam corrupti blanditiis rerum quis.', 6, 1, 0, '2000-05-12 16:52:14', '1974-03-07 12:03:05');
INSERT INTO `posts` (`id`, `user_id`, `communiti_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (100, 4, 1, 'quas', 'Sed laboriosam quos voluptatem beatae. Perferendis omnis similique et ipsum nemo. Illo deserunt consequatur labore totam reiciendis.', 3, 1, 0, '2011-08-11 22:58:19', '2020-02-29 01:44:24');

SELECT * FROM posts;
UPDATE posts 
	SET user_id  = FLOOR(1+ RAND() * 100),
		communiti_id = FLOOR(1+ RAND() * 20),
		media_id = FLOOR(1+ RAND() * 100) ;
UPDATE posts SET updated_at  = NOW() WHERE updated_at < created_at;

-- ЗАДАНИЕ 2 Создать все необходимые внешние ключи и диаграмму отношений.

-- Добавляем внешние ключи таблице profiles
DESC profiles;

ALTER TABLE profiles 
	ADD CONSTRAINT profiles_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE RESTRICT, -- Я думаю что RESTRICT здесь уместен чтобы не позаолить удалить первичные данные пользователя
	ADD CONSTRAINT profiles_photo_id_fk
		FOREIGN KEY (photo_id) REFERENCES media(id)
			ON DELETE SET NULL;
ALTER TABLE profiles 		
	ADD CONSTRAINT profiles_user_status_id_fk
		FOREIGN KEY (user_status_id) REFERENCES user_statuses(id)
			ON DELETE RESTRICT;

-- Добавляем внешние ключи таблице media
DESC media;

ALTER TABLE media 
	ADD CONSTRAINT media_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE RESTRICT,
	ADD CONSTRAINT media_mediafile_type_fk
		FOREIGN KEY (mediafile_type) REFERENCES media_types(id)
			ON DELETE RESTRICT;

-- Добавляем внешние ключи таблице posts
DESC posts;

ALTER TABLE posts
	ADD CONSTRAINT posts_user_id_fk
			FOREIGN KEY (user_id) REFERENCES users(id)
				ON DELETE RESTRICT,
	ADD CONSTRAINT posts_community_id_fk
		FOREIGN KEY (communiti_id) REFERENCES communities(id)
			ON DELETE SET NULL,
	ADD CONSTRAINT posts_media_id_fk
		FOREIGN KEY (media_id) REFERENCES media(id)
			ON DELETE SET NULL; -- SET NULL позволит избежать удаления поста при удалении фото, если оно было загружено на какой-нибудь сторонний ресурс 

-- Добавляем внешние ключи таблице messages
DESC messages;

ALTER TABLE messages
	ADD CONSTRAINT messages_from_user_id_fk
			FOREIGN KEY (from_user_id) REFERENCES users(id)
				ON DELETE RESTRICT,
	ADD CONSTRAINT messages_to_user_id_fk
			FOREIGN KEY (to_user_id) REFERENCES users(id)
				ON DELETE RESTRICT;

-- Добавляем внешние ключи таблице likes
DESC likes;		
			
ALTER TABLE likes
	ADD CONSTRAINT likes_user_id_fk
			FOREIGN KEY (user_id) REFERENCES users(id)
				ON DELETE RESTRICT,
	ADD CONSTRAINT likes_target_id_fk
			FOREIGN KEY (target_id) REFERENCES users(id)
				ON DELETE RESTRICT,
	ADD CONSTRAINT likes_target_type_id_fk
			FOREIGN KEY (target_type_id) REFERENCES target_types(id)
				ON DELETE RESTRICT;
			
-- Добавляем внешние ключи в таблицу friendships
DESC friendships;

ALTER TABLE friendships 
	ADD CONSTRAINT friendships_user_id_fk
				FOREIGN KEY (user_id) REFERENCES users(id)
					ON DELETE RESTRICT,
	ADD CONSTRAINT friendships_friend_id_fk
				FOREIGN KEY (friend_id) REFERENCES users(id)
					ON DELETE RESTRICT,
	ADD CONSTRAINT friendships_status_id_fk
				FOREIGN KEY (status_id) REFERENCES friendship_statuses(id)
					ON DELETE RESTRICT;
					
-- Добавляем внешние ключи в таблицу communities_users
DESC communities_users ;

ALTER TABLE communities_users 
	ADD CONSTRAINT communities_users_user_id_fk
					FOREIGN KEY (user_id) REFERENCES users(id)
						ON DELETE RESTRICT,
	ADD CONSTRAINT communities_users_community_id_fk
					FOREIGN KEY (community_id) REFERENCES communities(id)
						ON DELETE RESTRICT;				
					
-- ЗАДАНИЕ 3 Определить кто больше поставил лайков (всего) - мужчины или женщины?
SELECT * from profiles;
SELECT * FROM likes;

SELECT 
	(SELECT gender FROM profiles WHERE user_id = likes.user_id) AS gender FROM likes;
SELECT 
	(SELECT gender FROM profiles WHERE user_id = likes.user_id) AS gender,
	COUNT(*) as total
FROM likes
GROUP BY gender
ORDER BY total DESC 
LIMIT 1;

-- ЗАДАНИЕ 4 Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.

SELECT DISTINCT
	(SELECT user_id FROM profiles WHERE user_id = likes.user_id) AS user_id,
	(SELECT birthday FROM profiles WHERE user_id = likes.user_id) AS birthday,
	COUNT(*) AS per_one
FROM likes
GROUP BY user_id
ORDER BY birthday DESC
LIMIT 10;

SELECT SUM(per_one) FROM 
(
SELECT DISTINCT
	(SELECT user_id FROM profiles WHERE user_id = likes.user_id) AS user_id,
	(SELECT birthday FROM profiles WHERE user_id = likes.user_id) AS birthday,
	COUNT(*) AS per_one
FROM likes
GROUP BY user_id
ORDER BY birthday DESC
LIMIT 10
) as total;

-- ЗАДАНИЕ 5. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной 
-- сети: Рейтинг антиактивности = ( меньше сообщений + меньше постов)
SELECT  * FROM users;
SELECT * FROM messages;
SELECT * FROM likes;
SELECT * FROM posts;

SELECT 
	CONCAT(first_name, ' ', last_name) AS user,
	id 
FROM users WHERE users.id NOT IN
(SELECT user_id FROM posts -- Пользователи что не пишут постов
UNION 
SELECT from_user_id FROM messages -- Пользователи что не пишут сообщений
)
ORDER BY id  
LIMIT 10;

-- Скрипт для поиска самых неактивных пользователей
SELECT 
CONCAT(first_name, ' ', last_name) AS user,
	id 
FROM users 
WHERE users.id NOT IN 
(SELECT user_id FROM posts -- Пользователи что не пишут постов
UNION 
SELECT user_id FROM likes -- Пользователи что не ставят лайков
UNION 
SELECT from_user_id FROM messages -- Пользователи что не пишут сообщений
UNION
SELECT user_id FROM friendships -- пользователи что не кидают запрос дружбы
);