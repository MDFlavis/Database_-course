DROP DATABASE IF EXISTS vk;
CREATE DATABASE IF NOT EXISTS vk;
USE vk;

-- Таблица пользователей
DROP TABLE IF EXISTS users; 
CREATE TABLE IF NOT EXISTS users(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "",
	first_name VARCHAR(64) NOT NULL COMMENT "Имя пользователя", 
	last_name VARCHAR(100) NOT NULL COMMENT "Фамилия пользователя",
	email VARCHAR(100) NOT NULL UNIQUE COMMENT "Электронная почта пользователя",
	phone VARCHAR(20) NOT NULL UNIQUE COMMENT "Телефон пользователя",
	created_at DATETIME DEFAULT NOW() COMMENT "Время создания строки",
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
);

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Eino', 'O\'Conner', 'opfeffer@example.net', '08176048929', '2010-06-21 15:51:03', '2012-04-13 18:39:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Garfield', 'Bauch', 'aboehm@example.com', '1-479-984-8423x3210', '1988-04-15 07:05:44', '2010-01-28 01:18:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Graciela', 'Harris', 'nikko.upton@example.org', '(787)449-1384x470', '2012-05-24 18:02:38', '1989-07-18 23:11:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Marco', 'Emmerich', 'jonas.frami@example.org', '(603)149-7287x730', '2008-05-12 18:34:20', '1991-11-01 15:53:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Theresia', 'Kautzer', 'dooley.marquis@example.net', '06091297934', '2013-02-02 16:56:08', '1978-09-10 01:25:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Danielle', 'Lebsack', 'chadd.renner@example.net', '1-951-726-3096x26555', '1993-06-24 10:33:47', '2000-02-14 01:17:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Elias', 'Bogan', 'rjaskolski@example.net', '846.685.7398', '1993-06-30 11:23:09', '2007-12-01 01:59:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Ramiro', 'Wunsch', 'nitzsche.lauriane@example.com', '384.733.3051x38356', '2001-05-19 18:52:57', '1982-08-21 19:25:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Jodie', 'Kub', 'osborne.christiansen@example.com', '(435)334-1043x672', '1978-10-15 02:28:24', '2019-10-24 15:09:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Carole', 'Schmeler', 'pauline64@example.com', '1-870-515-8099x93888', '2014-01-18 08:15:16', '2000-12-08 16:23:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Abigale', 'Crona', 'fadel.cathrine@example.net', '841-751-0282', '1978-08-14 21:02:04', '1997-01-18 19:36:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Chandler', 'Fisher', 'prosacco.tomasa@example.com', '993-953-2523x406', '2003-08-05 23:51:22', '1989-06-16 21:54:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Greta', 'Lind', 'eloisa.mayer@example.net', '546.324.8223x857', '1982-02-15 18:48:35', '1971-02-01 16:25:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Albin', 'Roberts', 'lora.johns@example.com', '+27(5)8728383970', '1992-12-03 14:03:15', '2018-02-22 15:12:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Diego', 'Brakus', 'tyrel.gaylord@example.net', '1-437-667-6387', '1991-11-14 02:11:23', '1991-07-02 19:30:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Amalia', 'Herman', 'raven90@example.com', '+65(1)5846711960', '1973-07-09 01:02:37', '1981-03-26 02:10:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Ellie', 'Armstrong', 'rosalind.krajcik@example.net', '705-619-7866', '2001-12-28 10:38:55', '2003-07-18 20:14:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Russ', 'Rutherford', 'kboehm@example.com', '+13(7)2360506155', '1976-01-02 06:59:44', '1986-06-07 17:23:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Thomas', 'Schulist', 'nadia08@example.net', '181.046.9927x189', '2016-07-12 15:57:58', '1982-05-20 02:22:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Hank', 'Wyman', 'lane.cronin@example.com', '211.176.6198x06501', '1983-07-11 20:47:01', '1988-05-14 14:23:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Vladimir', 'Mann', 'ari67@example.org', '378-412-5448', '2000-12-03 12:47:51', '2018-03-23 12:30:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Jesus', 'Hirthe', 'sboyle@example.org', '(172)989-4210', '2002-08-15 01:33:57', '2012-02-04 10:06:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Lafayette', 'Walsh', 'will.andres@example.org', '591-097-5142x60944', '1995-01-15 07:06:22', '1976-08-10 06:31:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Orpha', 'Turcotte', 'o\'connell.tyra@example.net', '101-010-0670', '1987-06-19 08:34:38', '2009-06-06 17:40:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Ozella', 'Hilll', 'nova83@example.org', '(253)771-0743', '2019-04-12 08:06:23', '1974-09-01 09:27:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Veronica', 'Doyle', 'murray.alan@example.org', '(707)307-5190x73657', '1984-08-15 16:53:21', '1981-08-21 19:10:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Rafaela', 'Romaguera', 'rice.kianna@example.com', '1-987-928-1614x49151', '2007-10-25 05:22:48', '1996-12-29 17:15:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Ozella', 'Walsh', 'layne73@example.org', '1-944-187-1573x43704', '2009-10-13 13:34:20', '1999-06-29 15:53:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Alysha', 'Leannon', 'hchristiansen@example.org', '1-692-596-2221x4968', '1974-10-10 15:28:43', '1987-04-18 20:33:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Rupert', 'Reichert', 'anderson.wava@example.org', '(807)155-6196x82972', '1971-03-25 01:19:19', '2008-09-04 01:54:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Wilhelmine', 'Brakus', 'mhilpert@example.org', '05324319278', '2012-08-25 04:32:38', '1977-03-15 05:45:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Dell', 'Reichel', 'abigale57@example.org', '05453798203', '1999-06-11 14:34:36', '1977-12-25 23:56:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Laurianne', 'Davis', 'elena10@example.com', '651.538.5771', '1999-04-18 13:07:48', '1999-08-31 04:41:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Alana', 'Corwin', 'leuschke.mckayla@example.net', '1-065-279-8677', '2001-04-18 22:28:01', '1972-04-14 02:25:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Cody', 'Satterfield', 'jenifer99@example.com', '(949)417-5524x55899', '1984-10-27 07:36:43', '2005-12-28 18:21:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Sean', 'Hagenes', 'elarkin@example.org', '671.752.7173', '2007-01-26 23:56:14', '1994-02-02 09:42:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Renee', 'Purdy', 'cyrus.mosciski@example.net', '372.208.6312', '1972-06-04 00:21:08', '1988-01-03 12:39:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Tito', 'Purdy', 'tillman.joan@example.com', '528-598-7067x97374', '2012-01-23 05:18:09', '1998-07-11 20:58:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Kirsten', 'Bahringer', 'francis49@example.net', '+55(2)5834145540', '1970-05-25 14:11:39', '2006-11-20 08:34:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Elise', 'Connelly', 'co\'connell@example.net', '+12(9)2992520190', '2003-04-08 13:25:50', '2011-12-14 10:08:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Helmer', 'Ryan', 'major90@example.net', '1-787-216-8020x991', '1978-06-02 12:19:39', '1979-09-16 00:30:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Annalise', 'Hessel', 'casper.aletha@example.com', '1-876-502-8348x64788', '2012-03-11 03:03:43', '2004-10-07 13:10:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Edwin', 'Klocko', 'twila.bednar@example.com', '(951)733-0994', '2010-05-08 13:53:43', '2006-08-25 07:47:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Dante', 'Trantow', 'juwan.reilly@example.com', '362.128.2908x9638', '2011-01-19 06:05:12', '2007-10-11 17:15:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Arianna', 'Leannon', 'leonora.murphy@example.org', '381-255-4601', '1999-08-05 23:16:37', '1985-01-27 03:32:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Alivia', 'Frami', 'kole.raynor@example.com', '948-344-5753x6628', '1988-10-24 17:53:33', '1992-04-20 19:19:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Mariela', 'Batz', 'eloy22@example.org', '+83(9)0473862971', '1996-02-19 04:35:09', '2020-04-18 03:20:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Columbus', 'Lesch', 'pharber@example.org', '+01(1)7095305211', '1983-10-31 08:49:24', '2010-10-29 04:28:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Adolphus', 'Medhurst', 'qschamberger@example.com', '(349)314-7874', '1992-03-03 02:09:24', '2007-10-16 00:49:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Hobart', 'Fritsch', 'ramon.okuneva@example.com', '1-503-422-5136x09954', '1982-03-21 10:00:01', '2018-10-24 19:30:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Louvenia', 'Hettinger', 'becker.lenora@example.net', '1-702-197-6695x93165', '2014-06-01 18:42:43', '1972-03-18 02:20:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Charlotte', 'Hirthe', 'shane.bergnaum@example.org', '+21(7)0570722106', '1993-08-02 14:59:50', '1998-07-13 04:46:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Eloy', 'Bahringer', 'kaci00@example.net', '244-127-5505x781', '2017-11-06 04:30:18', '1980-02-20 12:55:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Mauricio', 'Friesen', 'hpfannerstill@example.net', '226-955-4502x616', '1974-11-11 22:21:52', '2006-12-18 13:30:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Deshaun', 'Treutel', 'erling.blanda@example.org', '694.156.4439', '1970-11-13 21:59:02', '2009-01-22 16:51:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Maybelle', 'Daniel', 'meagan66@example.net', '+41(6)8233211109', '2002-12-05 20:15:34', '2016-12-02 20:44:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Wilton', 'Murphy', 'tcasper@example.net', '338-620-0021', '1991-11-28 21:13:10', '1993-12-03 08:46:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Adrien', 'Schuppe', 'o\'kon.august@example.net', '178-181-0279', '1982-12-04 03:11:34', '2009-05-08 21:23:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Roberto', 'Yundt', 'zhauck@example.net', '+98(0)8235300678', '2020-09-28 04:57:37', '2008-05-06 18:59:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Gregorio', 'Torphy', 'casandra03@example.org', '337.126.6778', '1996-01-21 12:09:47', '1990-08-26 12:14:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Arturo', 'Skiles', 'ahegmann@example.org', '06228132795', '2017-03-30 04:49:14', '1982-04-19 17:25:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Leonel', 'Hamill', 'emmerich.monroe@example.org', '857.661.1039x72536', '1994-04-26 11:01:09', '1985-08-12 23:41:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Glen', 'Monahan', 'green34@example.net', '423.621.6149', '2000-04-07 06:49:54', '1987-01-25 17:13:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Shanny', 'Crist', 'rowe.isabelle@example.com', '1-047-363-6344', '2003-01-12 09:04:29', '2010-05-20 00:16:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Carole', 'Gutmann', 'lisette.king@example.net', '1-031-246-4134', '1975-03-23 00:57:39', '1994-10-15 04:49:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Filomena', 'Jaskolski', 'malinda.glover@example.org', '(925)798-4342x2753', '1992-08-27 14:33:03', '1972-04-13 11:05:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Louvenia', 'Kautzer', 'sarah.hintz@example.org', '00807121433', '1973-11-09 01:48:45', '1971-07-14 23:36:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Magnus', 'Grimes', 'vito92@example.net', '279-311-0924', '1999-03-19 08:42:56', '2014-10-10 17:21:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Rylan', 'Moore', 'aabshire@example.net', '963-698-7036', '1977-11-10 16:13:31', '1986-01-22 14:36:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Erin', 'Veum', 'dhahn@example.net', '(459)524-8117', '1988-06-27 08:29:59', '2005-03-26 12:24:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Abbie', 'Reinger', 'kirstin03@example.net', '290-428-2944', '1991-09-18 16:46:40', '1990-11-28 08:52:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Jailyn', 'Towne', 'glover.ines@example.org', '1-069-044-5974x5895', '2009-09-09 07:45:09', '1977-04-05 03:24:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Emil', 'DuBuque', 'darian81@example.net', '(437)890-2376', '1983-06-21 06:47:57', '2003-05-09 08:07:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Selena', 'Jacobson', 'pauline95@example.net', '06878718958', '2019-06-19 07:22:11', '2000-04-26 20:04:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Laisha', 'Hahn', 'price.brenna@example.com', '(688)751-9400x6464', '2011-03-01 20:07:42', '2006-08-23 22:03:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Otilia', 'Hammes', 'hadley97@example.net', '589.551.7960', '1973-06-23 14:34:21', '1999-02-17 14:19:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Noe', 'Senger', 'ekuvalis@example.net', '(280)566-8008x23316', '1990-07-25 11:44:15', '2008-08-26 09:46:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Hershel', 'Kuhic', 'ffahey@example.com', '485-802-1694x507', '2010-06-22 11:31:00', '1993-11-21 13:25:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Annabelle', 'Cummerata', 'xschumm@example.com', '919-500-7970x614', '1975-10-15 21:56:08', '2018-12-14 17:41:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Dominique', 'Jenkins', 'ukoch@example.com', '(565)629-5331', '1978-06-30 18:29:03', '1987-12-30 20:49:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Xzavier', 'Hamill', 'gleason.helena@example.com', '734.733.4839x2737', '1989-09-15 03:30:14', '2012-09-18 03:30:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Maverick', 'Wehner', 'mdicki@example.net', '244-510-7137', '1987-07-13 19:28:40', '2011-12-29 13:24:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Jaqueline', 'Daniel', 'federico.koelpin@example.com', '1-143-273-3919x696', '1995-08-25 11:16:57', '1994-06-18 04:52:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Carlos', 'Glover', 'klein.nya@example.com', '823-361-3447', '2020-05-23 22:50:58', '1977-05-20 20:22:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Emilie', 'Parker', 'lhand@example.net', '652-283-2337x1471', '1973-07-02 16:09:30', '2014-11-08 10:49:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Florence', 'Becker', 'theo.gleason@example.org', '+35(2)5598918400', '1980-08-17 15:32:07', '1994-09-01 19:00:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Jeremie', 'White', 'ashlynn11@example.org', '1-878-235-5073x09993', '1997-03-23 14:05:53', '2002-04-01 00:43:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Golden', 'McDermott', 'kay.ankunding@example.net', '585-492-8751x963', '1997-06-18 19:31:11', '2019-10-08 03:10:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Johann', 'Schuster', 'pfeffer.claudie@example.net', '1-220-820-0122x35193', '1971-08-05 19:07:27', '2019-10-20 14:07:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Sonia', 'Schmeler', 'mireille44@example.org', '(577)744-1440x6471', '2019-03-20 01:06:48', '2015-10-23 00:27:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Garfield', 'Ankunding', 'jaqueline92@example.net', '07085152233', '1978-08-18 18:57:40', '1970-06-13 17:10:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Silas', 'Hyatt', 'vreichel@example.net', '907-437-7545x5787', '1983-08-10 04:36:55', '2018-10-21 15:42:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Everardo', 'McKenzie', 'schristiansen@example.org', '08136198515', '2014-03-31 05:06:31', '2000-11-19 20:05:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Camryn', 'Bernhard', 'clarissa85@example.net', '08998026852', '2008-12-14 04:35:56', '2000-11-04 17:07:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Luigi', 'O\'Conner', 'annabel26@example.org', '(717)748-4912x127', '1975-04-20 11:23:16', '1978-05-15 18:54:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Wayne', 'Pfeffer', 'wbreitenberg@example.org', '1-285-964-6559x683', '1987-08-08 21:45:00', '1971-03-24 21:58:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Jacinthe', 'Satterfield', 'kturner@example.net', '115-562-8412', '2002-08-17 09:36:17', '1980-07-06 06:44:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Gonzalo', 'Rippin', 'rylee42@example.net', '275-583-6859x4013', '2011-06-25 15:30:52', '1991-10-08 22:05:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Alda', 'Runolfsdottir', 'ymacejkovic@example.net', '05313305284', '1992-07-14 04:50:15', '1997-10-21 13:47:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Gabriella', 'Mann', 'jkutch@example.org', '936.208.8807', '1999-12-05 22:13:19', '1986-07-29 14:04:38');


-- Таблица профиля
DROP TABLE IF EXISTS profiles; 
CREATE TABLE IF NOT EXISTS profiles (
	user_id INT UNSIGNED NOT NULL PRIMARY KEY COMMENT "Идентификатор пользователя",
	gender CHAR(1) NOT NULL COMMENT "Пол",
	birthday DATE DEFAULT NULL COMMENT "День рождения",
	photo_id INT UNSIGNED DEFAULT NULL COMMENT "Ссылка на основную фотографию пользователя",
	user_status_id INT UNSIGNED DEFAULT NULL COMMENT "Статус",
	city VARCHAR(130) DEFAULT NULL COMMENT "Город",
	country VARCHAR(130) DEFAULT NULL COMMENT "Страна",
	created_at DATETIME DEFAULT NOW() COMMENT "Время создания строки",
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
);

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, 'm', '2011-09-09', 7, 1, 'North Elva', 'Sierra Leone', '1987-02-15 14:09:32', '1980-02-25 15:03:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, 'y', '2020-01-26', 4, 7, 'Constantinland', 'Tokelau', '2016-07-03 18:27:53', '1972-07-31 22:45:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, 'g', '1993-09-28', 2, 3, 'Glentown', 'Cuba', '1996-09-19 22:03:33', '1991-07-20 23:02:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, 'r', '2019-08-07', 9, 5, 'Bethstad', 'Bolivia', '1986-07-30 18:28:47', '1998-03-14 14:09:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, 'z', '2013-07-28', 1, 6, 'New Kyleeshire', 'Estonia', '1989-05-11 12:03:25', '1985-11-09 06:45:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, 'j', '1995-08-02', 0, 7, 'East Modestohaven', 'Kenya', '1972-07-29 15:24:48', '2002-05-05 08:07:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, 'a', '2016-05-11', 8, 6, 'North Talia', 'Antarctica (the territory South of 60 deg S)', '2015-01-12 05:24:51', '1982-04-10 07:32:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, 'b', '1976-06-10', 1, 1, 'New Josiahhaven', 'Hungary', '2020-04-10 11:20:31', '1984-04-06 05:37:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, 'c', '1976-06-07', 4, 2, 'North Burley', 'Lesotho', '1979-03-14 11:38:45', '2020-09-23 14:51:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, 'o', '1999-07-19', 2, 3, 'Angelashire', 'Chad', '1987-04-27 22:39:30', '1971-02-23 08:20:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (11, 'v', '1976-10-01', 3, 9, 'Port Jodie', 'Croatia', '1989-10-27 13:28:08', '1997-05-31 07:30:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (12, 'f', '1979-01-12', 0, 4, 'Kulastown', 'Gabon', '1977-05-31 10:21:39', '1980-04-16 02:11:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (13, 'w', '1996-05-14', 7, 1, 'Stokesshire', 'Mauritania', '2016-12-19 19:57:37', '1985-10-14 05:36:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (14, 'h', '2005-07-28', 2, 3, 'Franciscaberg', 'Singapore', '2010-07-13 10:53:36', '2010-07-08 22:43:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (15, 'g', '2006-02-02', 8, 5, 'North Bransonview', 'New Caledonia', '2014-12-29 21:18:37', '1985-11-14 12:12:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (16, 's', '1997-01-26', 1, 6, 'Lake Alaniston', 'El Salvador', '1983-12-26 15:24:56', '2012-08-06 16:26:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (17, 'e', '2016-06-25', 3, 4, 'Kiehnborough', 'Hong Kong', '1981-08-06 17:07:41', '1983-01-14 20:18:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (18, 'q', '2009-02-04', 9, 9, 'North Quintenton', 'Montenegro', '1971-01-13 16:43:53', '1989-09-13 14:30:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (19, 'w', '1992-12-18', 3, 1, 'Kuphalchester', 'Falkland Islands (Malvinas)', '2001-10-22 17:11:22', '1971-10-14 03:01:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (20, 'b', '1987-04-02', 2, 5, 'South Ruthiehaven', 'Bouvet Island (Bouvetoya)', '1997-12-03 11:56:54', '1995-01-24 17:40:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (21, 'w', '2012-05-21', 8, 6, 'Houstonstad', 'Kyrgyz Republic', '2014-05-09 13:09:01', '2014-06-28 10:18:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (22, 'o', '2005-04-20', 8, 2, 'Boscotown', 'Somalia', '2003-12-23 15:52:25', '1997-10-05 21:32:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (23, 'f', '2018-10-26', 7, 7, 'Millsport', 'Turkey', '2007-03-03 00:51:48', '1985-09-20 22:06:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (24, 'n', '1979-08-28', 7, 3, 'East Lafayettefurt', 'Azerbaijan', '1997-06-04 02:27:55', '2011-04-30 10:01:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (25, 'l', '2012-04-02', 2, 1, 'Aaronburgh', 'Italy', '1996-04-11 05:03:16', '1982-08-13 21:10:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (26, 'x', '1983-06-10', 7, 7, 'Ginatown', 'Reunion', '1998-03-18 23:40:57', '1980-05-11 11:44:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (27, 'e', '1991-04-25', 2, 6, 'South Janaeshire', 'Burundi', '1985-08-16 15:40:36', '1974-08-18 02:24:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (28, 'x', '2017-09-03', 8, 9, 'Purdyfort', 'Ukraine', '1989-03-10 10:43:24', '1999-11-30 15:44:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (29, 'z', '2004-01-17', 2, 4, 'Zemlakberg', 'Mozambique', '2014-12-10 19:36:01', '1998-05-11 12:12:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (30, 'm', '1984-03-10', 8, 4, 'Susanport', 'Algeria', '1986-08-09 05:13:39', '2011-12-25 13:37:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (31, 'z', '1978-06-14', 7, 1, 'Hintzview', 'Sao Tome and Principe', '1990-05-05 01:15:46', '1971-07-08 00:59:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (32, 'j', '1997-12-14', 0, 3, 'Ivymouth', 'Palau', '2014-02-23 06:53:31', '1997-09-11 04:13:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (33, 'i', '2016-08-02', 8, 2, 'West Myrtie', 'Qatar', '1988-06-18 16:10:04', '2006-04-14 05:28:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (34, 'q', '2010-04-16', 8, 1, 'Keelingberg', 'Tokelau', '2009-01-07 08:47:05', '2006-09-08 06:31:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (35, 'r', '1994-04-30', 6, 4, 'Dareville', 'Namibia', '1999-04-09 13:31:22', '1976-05-17 19:41:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (36, 'u', '2015-04-21', 2, 7, 'Electaton', 'Turks and Caicos Islands', '1995-06-25 09:11:22', '2000-11-21 21:42:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (37, 's', '1979-04-18', 3, 4, 'Geovanyville', 'France', '2007-03-13 02:32:00', '2020-01-23 23:32:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (38, 'r', '1983-02-04', 4, 1, 'Aniyaport', 'Moldova', '2009-04-20 12:25:09', '1998-09-11 09:02:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (39, 'e', '1982-11-03', 6, 4, 'Kertzmannshire', 'Cambodia', '1974-06-02 17:04:03', '2001-08-29 12:59:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (40, 'q', '1995-12-28', 6, 4, 'Gleasontown', 'Senegal', '2011-06-16 08:56:24', '1987-09-12 04:36:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (41, 'y', '1998-10-31', 4, 5, 'New Colton', 'Hong Kong', '1993-12-20 19:19:16', '1994-08-27 06:07:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (42, 'x', '2020-10-23', 4, 9, 'New Keyshawntown', 'Cameroon', '2006-04-22 07:45:50', '1995-11-28 05:36:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (43, 'y', '2000-06-07', 6, 4, 'Hildegardstad', 'Anguilla', '2014-09-09 18:17:08', '2008-12-31 17:08:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (44, 'e', '1988-12-04', 3, 5, 'Gregorioberg', 'Iceland', '1990-02-24 11:59:39', '1979-09-25 17:31:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (45, 'w', '1992-09-10', 4, 8, 'Dooleyborough', 'Wallis and Futuna', '2014-04-24 02:10:47', '2006-02-13 10:24:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (46, 'j', '1983-03-31', 8, 8, 'East Audreanne', 'China', '2002-09-03 14:36:16', '2009-12-31 05:12:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (47, 'q', '2005-06-08', 6, 7, 'Chesleyton', 'Poland', '1974-05-14 09:29:39', '1997-09-17 08:24:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (48, 'h', '2008-10-20', 0, 8, 'Quintenville', 'Jamaica', '1985-05-31 19:47:33', '1990-11-17 04:20:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (49, 'q', '2013-12-08', 6, 4, 'West Gregoriabury', 'Andorra', '1977-08-27 14:29:17', '1990-09-30 18:16:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (50, 'w', '1977-12-31', 1, 1, 'Lake Raphaelle', 'Zambia', '2001-01-16 01:14:54', '2013-03-02 08:30:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (51, 'd', '2019-06-05', 2, 9, 'East Cydneystad', 'Ecuador', '1993-03-27 02:11:18', '2014-04-15 12:39:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (52, 'h', '1991-01-02', 3, 7, 'East Hayden', 'Norfolk Island', '2006-09-02 16:25:04', '1991-08-06 03:40:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (53, 't', '2008-10-11', 3, 6, 'New Tessieview', 'Cuba', '2001-07-12 15:41:31', '2009-06-17 15:34:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (54, 'g', '2005-10-15', 3, 5, 'Hughport', 'United Arab Emirates', '1977-03-03 22:47:27', '1980-12-27 18:18:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (55, 'b', '2001-03-07', 9, 8, 'South Buck', 'Sierra Leone', '2002-09-11 05:18:46', '1995-09-18 13:42:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (56, 'm', '2015-04-01', 9, 5, 'Port Oceane', 'Thailand', '1991-12-30 07:52:25', '1975-11-17 20:30:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (57, 'b', '2017-08-11', 2, 8, 'Delaneyville', 'Tonga', '1996-04-28 10:51:49', '2018-01-05 09:22:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (58, 'd', '1974-02-25', 3, 6, 'North Austinville', 'Central African Republic', '1975-10-10 17:57:44', '2003-01-20 13:04:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (59, 'p', '1975-09-27', 0, 9, 'West Roselyn', 'Zambia', '1976-01-17 05:12:47', '1998-10-08 22:03:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (60, 'v', '2000-11-23', 3, 4, 'McLaughlinshire', 'Senegal', '2003-10-06 22:01:56', '1998-07-20 11:49:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (61, 'y', '1970-12-25', 5, 3, 'Russelside', 'Italy', '1977-04-25 23:06:04', '1976-09-29 21:59:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (62, 'd', '1979-05-01', 9, 3, 'Port Cindyborough', 'Fiji', '2019-03-02 18:02:29', '1976-03-27 00:59:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (63, 'x', '1997-11-08', 6, 1, 'New Mara', 'Cuba', '2014-06-03 01:40:40', '1995-12-16 06:53:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (64, 'd', '2004-06-06', 6, 6, 'East Ryley', 'Algeria', '1980-09-09 19:10:43', '2005-12-04 21:18:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (65, 'k', '2011-11-07', 6, 4, 'Stokesberg', 'Costa Rica', '1998-08-07 17:02:42', '2009-09-27 23:29:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (66, 'k', '1988-03-27', 7, 1, 'New Maidaville', 'Zimbabwe', '1983-06-04 14:38:43', '1982-10-05 15:53:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (67, 'h', '1993-01-25', 9, 6, 'Lake Chet', 'Antigua and Barbuda', '2016-10-14 10:04:39', '1994-04-24 14:54:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (68, 'w', '2002-01-30', 9, 3, 'Bonitaton', 'Armenia', '2007-12-28 15:38:17', '1978-10-02 18:59:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (69, 'u', '1996-04-11', 7, 6, 'Reichelland', 'Guadeloupe', '1994-09-02 20:41:06', '1980-01-15 11:00:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (70, 'i', '1976-11-07', 6, 8, 'Jaclynburgh', 'Cook Islands', '1991-07-15 10:22:13', '1975-08-16 03:08:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (71, 'n', '2006-07-03', 7, 1, 'Andersonhaven', 'Venezuela', '2000-02-05 07:58:00', '2019-07-29 17:59:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (72, 'n', '2004-11-13', 7, 1, 'Quigleyton', 'Aruba', '2006-02-28 23:20:40', '2019-05-15 17:30:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (73, 'k', '1993-03-23', 8, 3, 'North Rex', 'United States Minor Outlying Islands', '2008-04-14 02:29:59', '1980-06-11 17:40:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (74, 'n', '1970-10-18', 0, 5, 'South Luna', 'Isle of Man', '1970-05-03 00:36:42', '1985-04-14 23:13:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (75, 't', '2015-09-10', 5, 2, 'South Anabelfort', 'Antarctica (the territory South of 60 deg S)', '2013-07-17 18:52:09', '2003-04-26 19:24:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (76, 'j', '2006-01-30', 3, 9, 'Port Noemiebury', 'Barbados', '1987-03-23 07:05:13', '1995-08-28 21:13:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (77, 'n', '1993-12-17', 4, 5, 'Greenfelderfort', 'Mexico', '1980-06-22 01:13:44', '1994-07-09 07:35:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (78, 'h', '1984-03-29', 4, 2, 'Yostshire', 'Japan', '2011-03-30 15:07:01', '2003-10-29 11:14:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (79, 'm', '1975-01-15', 4, 5, 'Ephraimchester', 'Swaziland', '1983-11-02 02:45:53', '1973-12-04 16:38:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (80, 'r', '2005-11-29', 9, 7, 'Port Rodmouth', 'Portugal', '1999-08-29 18:05:27', '1989-09-27 01:04:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (81, 'z', '2009-03-07', 4, 7, 'Lindgrenberg', 'Suriname', '2005-12-15 22:31:19', '2019-06-19 06:48:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (82, 'i', '2004-05-21', 7, 8, 'Hirthefort', 'Mauritania', '1979-10-21 01:12:14', '1995-03-12 18:44:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (83, 'b', '2019-10-05', 5, 2, 'Streichshire', 'Gambia', '1971-05-01 18:03:33', '1996-09-22 13:11:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (84, 'm', '2015-04-27', 4, 6, 'Port Cierraside', 'Trinidad and Tobago', '1981-05-06 05:16:08', '1979-02-01 20:28:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (85, 'i', '1991-12-29', 1, 3, 'Jasthaven', 'Paraguay', '2016-02-11 13:29:05', '1985-09-27 14:04:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (86, 'n', '1975-08-13', 6, 4, 'East Arnochester', 'Azerbaijan', '1973-04-29 14:42:36', '1971-02-19 07:12:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (87, 'g', '2002-10-05', 9, 8, 'South Bruce', 'Monaco', '1997-04-27 21:21:50', '1978-12-20 14:21:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (88, 'm', '1972-05-25', 5, 6, 'Kenyattatown', 'Kyrgyz Republic', '2000-09-06 03:22:11', '1983-09-23 12:29:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (89, 'p', '2015-03-03', 1, 9, 'Amieview', 'Croatia', '1976-05-24 17:35:53', '2005-12-09 20:16:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (90, 'u', '1972-12-13', 5, 2, 'Lake Francisca', 'Sierra Leone', '1982-12-23 10:28:36', '1970-11-10 02:11:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (91, 'u', '1990-06-29', 5, 4, 'East Joanville', 'Czech Republic', '1977-12-14 11:27:35', '1991-07-25 04:38:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (92, 'm', '1987-03-31', 0, 2, 'Port Dorothy', 'Haiti', '1999-03-13 00:56:58', '2015-09-19 05:39:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (93, 't', '1984-12-25', 7, 3, 'Port Emmanuelhaven', 'Estonia', '1974-03-20 21:43:53', '2014-11-08 15:00:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (94, 'y', '2007-08-11', 6, 2, 'Effertzbury', 'Albania', '2016-08-03 20:02:20', '1970-02-15 13:47:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (95, 'i', '2019-02-23', 5, 1, 'Lillianfort', 'Latvia', '1991-09-04 00:03:33', '2010-11-18 08:03:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (96, 'n', '1975-11-20', 7, 1, 'Port Aureliotown', 'Kuwait', '1975-06-09 20:30:56', '1983-12-27 03:29:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (97, 'd', '1987-07-16', 0, 3, 'East Javontetown', 'Qatar', '2018-08-31 18:08:29', '1970-04-09 04:35:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (98, 't', '2007-12-01', 9, 5, 'Libbieville', 'Malta', '1976-04-15 14:01:09', '1973-05-20 04:57:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (99, 'q', '1979-07-11', 9, 8, 'Ernserberg', 'Pitcairn Islands', '1998-03-13 19:07:08', '2013-03-22 08:13:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `user_status_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (100, 'm', '2002-05-25', 9, 8, 'Rebekachester', 'Central African Republic', '1974-05-24 10:26:59', '2018-01-17 14:52:59');

-- Таблица статуса пользователей
DROP TABLE IF EXISTS user_statuses;
CREATE TABLE IF NOT EXISTS user_statuses(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
	name VARCHAR(100) NOT NULL COMMENT "Уникальное название статуса",
	reated_at DATETIME DEFAULT NOW() COMMENT "Время создания строки",
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
);

INSERT INTO `user_statuses` VALUES (1,'single','2020-09-08 20:18:18','2020-09-08 20:18:18'),(2,'married','2020-09-08 20:18:18','2020-09-08 20:18:18');

-- Таблица сообщений
DROP TABLE IF EXISTS messages; 
CREATE TABLE IF NOT EXISTS messages(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
	from_user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на отправителя сообщения", 
	to_user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на получателя сообщения",
	body TEXT NOT NULL COMMENT "Текст сообщения",
	is_important TINYINT(1) DEFAULT NULL  COMMENT "Признак важности",
	is_delivered TINYINT(1) DEFAULT NULL COMMENT "Признак доставки",
	created_at DATETIME DEFAULT NOW()COMMENT "Время создания строки",
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
);

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (1, 1, 1, 'Nihil quae voluptatem accusamus consequatur eum. Est a aut laborum vel quos dolor. Eaque quidem deleniti veritatis quia. Voluptatem sunt porro sunt ex rerum tempore ullam.', 0, 1, '1998-07-29 22:08:30', '1988-04-11 14:11:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (2, 2, 2, 'Est recusandae ea quia. Illum dignissimos dolor aliquid incidunt possimus amet ut. Sed eos aut cumque est. Repellendus reprehenderit ipsam inventore natus. Ipsa quia nemo adipisci corrupti cumque officiis.', 0, 1, '1972-12-12 15:58:31', '2008-06-08 08:22:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (3, 3, 3, 'Non est voluptatum laboriosam id. Commodi omnis delectus amet ea quo. Voluptatem quo dolor asperiores provident sunt modi voluptate.', 1, 0, '1997-10-21 16:46:16', '1995-02-02 20:18:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (4, 4, 4, 'Reprehenderit iure officia reprehenderit. Ut quo saepe delectus sit dolore. Sunt aut aperiam in totam iste.', 1, 1, '1985-05-04 06:20:34', '1974-11-18 22:20:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (5, 5, 5, 'Earum aliquid ad iure voluptatem dolorem animi modi. Et dolorem id ipsa nisi. Ut commodi ipsam eaque laborum.', 1, 1, '2011-08-03 18:29:22', '1975-08-28 22:29:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (6, 6, 6, 'Non dolore excepturi dolor dignissimos aut aut eveniet in. Molestias nam natus qui nulla. Nemo pariatur nostrum magnam et.', 0, 0, '2007-01-14 11:56:46', '1973-12-21 18:23:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (7, 7, 7, 'Corporis a vitae quia quisquam ex nam. Rerum et recusandae et hic omnis similique. Voluptate neque mollitia ipsam nulla officiis consequatur rerum.', 1, 1, '1997-10-20 17:46:06', '2007-10-31 15:46:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (8, 8, 8, 'Aut culpa sunt dolorem in voluptatem. Eum beatae fugiat ab quas. Ut dolor aut illum et ipsam praesentium veniam.', 1, 1, '1974-02-19 08:56:28', '1999-08-25 09:49:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (9, 9, 9, 'Quia qui aut unde consequatur officia omnis. Ab fuga deleniti numquam laboriosam quidem. Est est et fugiat consectetur quisquam delectus. Voluptas excepturi reprehenderit voluptatem aspernatur aliquid beatae.', 0, 1, '1977-07-13 10:04:08', '1990-12-03 08:45:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (10, 10, 10, 'Ut dolor velit velit ab dolorum voluptas placeat. Incidunt nisi aliquid qui. Voluptatibus dolorum doloribus nostrum sunt.', 1, 1, '1982-11-11 19:23:40', '1977-01-26 14:56:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (11, 11, 11, 'Iure sed deserunt perspiciatis aliquid autem. Saepe aliquid in qui earum quia voluptas eaque. Voluptas deleniti explicabo ipsum iure deserunt eos reiciendis. Facere modi sunt rerum eligendi iusto nisi pariatur.', 1, 1, '1970-01-03 17:19:42', '1998-12-31 04:49:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (12, 12, 12, 'Aut quod repellat laudantium doloremque. Qui ullam expedita quia dolorum error culpa. Minima odit inventore quidem aut est cumque. Omnis quaerat eum in ipsa ex.', 0, 0, '2016-09-12 14:10:51', '1987-08-30 15:11:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (13, 13, 13, 'Voluptates qui nemo molestias harum error sit asperiores. Nisi illo omnis distinctio. Ut in voluptate modi dignissimos aliquid error in. Sed magni dolor fugiat eos sed.', 1, 0, '1970-01-17 00:53:26', '1985-04-05 07:50:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (14, 14, 14, 'Error placeat est consequuntur qui distinctio. Quis et numquam rerum ipsam asperiores. Pariatur similique ut eaque adipisci pariatur consequatur eum natus. Quas vel voluptatem corrupti quis.', 0, 0, '1989-02-10 11:21:59', '1984-08-20 20:47:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (15, 15, 15, 'Rem nobis eum incidunt. Quo consectetur debitis incidunt sint optio quia soluta fugit. Asperiores voluptatem est quidem rerum quas. Dolore facere quas minus et natus voluptas beatae.', 1, 1, '1979-07-20 22:06:35', '1984-01-31 15:54:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (16, 16, 16, 'Animi dolor est quod nam sit veniam. Dignissimos similique molestiae deleniti sit illum. Unde rerum impedit facere sit eum ut.', 1, 1, '2018-10-16 13:04:10', '1982-05-18 15:22:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (17, 17, 17, 'Sit et facilis porro debitis aut placeat recusandae. Omnis unde rerum deserunt ipsa.', 0, 0, '1991-03-13 03:22:15', '1985-11-07 10:30:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (18, 18, 18, 'Nesciunt veniam delectus mollitia minima placeat molestias. Sit saepe odit incidunt laudantium aliquid. Sit error eos temporibus tempora.', 0, 1, '2019-06-20 15:17:30', '2003-06-26 09:51:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (19, 19, 19, 'Labore cupiditate corporis iste et. Sit iusto qui ut. Occaecati sit voluptatem aut sunt accusantium dolores et. Consectetur saepe vel ipsa quia doloribus.', 1, 0, '2017-11-05 16:35:13', '1970-04-22 17:48:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (20, 20, 20, 'Voluptas nihil fugit laboriosam et cumque. Quia necessitatibus perferendis mollitia architecto quos ut.', 1, 0, '1978-05-03 17:40:38', '2011-05-07 07:41:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (21, 21, 21, 'Asperiores illum hic est repellendus voluptatum ut. Et atque totam ullam at et aut quia eligendi. Ut est facilis vel consequatur consequatur. Et adipisci voluptates id voluptates eligendi consequatur expedita.', 0, 0, '1998-11-13 20:29:55', '2015-11-26 16:49:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (22, 22, 22, 'Sapiente error aut ea et ut repellat temporibus. Vel unde sequi pariatur atque eius dicta est. Dignissimos et sed debitis iure impedit vel.', 1, 1, '2001-11-27 13:22:17', '1977-02-02 15:30:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (23, 23, 23, 'Aut quo atque iure quos fugiat neque. Et similique voluptates ad vitae.', 1, 0, '1985-01-06 07:04:42', '1982-09-29 20:53:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (24, 24, 24, 'Ut numquam magni vel et iure vel est. Et hic ea sed ut cupiditate eveniet aut error. Architecto autem cupiditate vel ad autem quam culpa. Ullam consectetur ea quia adipisci laudantium voluptatem quo.', 0, 0, '1978-05-22 00:17:29', '1995-11-10 13:14:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (25, 25, 25, 'Nemo cupiditate neque nisi similique voluptas dolorum quia deserunt. Ut est recusandae esse totam voluptatem libero non.', 0, 1, '1975-12-26 00:06:15', '2007-05-03 04:25:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (26, 26, 26, 'Nisi quia sunt dicta tempore nesciunt accusantium quod deleniti. Ullam ex quae et fuga. Repellendus quod consequatur et molestias culpa modi debitis accusamus. Aliquam eaque laboriosam aliquid quo sit ut nihil.', 1, 0, '1980-11-27 15:09:04', '1985-03-28 00:55:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (27, 27, 27, 'Laudantium provident nostrum atque ratione aut. Et et nam minus et soluta at voluptatem. Reprehenderit quia voluptate excepturi aspernatur. Quis rerum debitis odit sed quod quo quasi.', 0, 1, '1986-10-08 00:06:05', '1984-09-14 10:08:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (28, 28, 28, 'Vel ut quia in saepe. Excepturi quae sed eaque aut.', 1, 0, '1997-02-25 16:20:42', '1976-07-09 01:31:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (29, 29, 29, 'Inventore earum ex necessitatibus nihil. Consequuntur aliquam est error iure libero consequatur unde et. Ut pariatur qui sit ratione illo voluptas occaecati.', 0, 1, '1991-01-29 19:57:12', '1976-10-02 05:35:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (30, 30, 30, 'Et esse repellat qui fugiat similique. Et nisi neque atque ducimus. Dicta odio autem et corrupti vel dolorem. Ratione eum est quisquam possimus quis animi.', 1, 1, '2017-06-13 14:22:12', '1996-02-06 05:25:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (31, 31, 31, 'Inventore dolores tenetur ut sint quia illo ut. Reiciendis est est vel impedit et rerum et. Reiciendis quasi unde dolorem numquam possimus ipsam unde.', 1, 1, '2008-07-03 16:20:13', '2010-09-23 19:51:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (32, 32, 32, 'Voluptates harum odit dolore voluptatem cumque officiis. Occaecati enim est dicta. Libero autem voluptatem saepe debitis natus voluptas facere velit.', 1, 0, '2006-10-19 08:25:46', '1998-08-05 14:37:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (33, 33, 33, 'Maiores accusantium sunt iusto vitae est rem. Delectus magnam accusantium commodi sit consequatur molestiae. Dolores odit repellendus quibusdam distinctio adipisci aut.', 1, 1, '2019-03-15 18:11:56', '2008-08-12 01:14:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (34, 34, 34, 'Dolores ea rerum sit esse. Et neque magni nam vel libero voluptatem animi. Eum sint quos maxime quae voluptate hic.', 0, 0, '2012-12-06 15:19:16', '1987-09-20 04:45:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (35, 35, 35, 'Quam fuga nesciunt minus quidem placeat minus. Et cum sequi dicta dolor. Omnis quos vitae quam beatae et aliquam.', 0, 0, '1975-06-29 02:46:08', '1980-01-11 04:58:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (36, 36, 36, 'Dolor dolores sint ipsa temporibus doloremque optio. Ut libero consequuntur voluptas fugiat. Non earum repellat velit repellat iure ea. Et et delectus explicabo consequatur aut minus aut.', 1, 0, '1991-01-11 08:29:49', '1990-11-27 15:22:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (37, 37, 37, 'Eaque id voluptatem excepturi magni quia qui. Quasi enim voluptatem fugit quis vitae. Perspiciatis quae exercitationem velit. Qui voluptas eos rerum alias sapiente eaque aut.', 0, 1, '1997-10-23 17:25:02', '2008-11-26 11:19:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (38, 38, 38, 'Et sequi deserunt reprehenderit facilis sint ut similique. Eum doloribus ea et quia. Voluptatem voluptatibus iure est aliquid.', 1, 0, '1999-05-28 11:58:01', '2019-01-01 07:51:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (39, 39, 39, 'Repudiandae cum reprehenderit ea quas. Laudantium ut est nemo sunt sed ut. Voluptatem eos quo quod odio velit alias reiciendis.', 0, 0, '1971-10-12 03:58:41', '1987-01-18 01:31:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (40, 40, 40, 'Qui molestiae exercitationem fuga et reiciendis. Nesciunt modi laboriosam voluptatem. Dicta et quia voluptate corporis.', 0, 0, '2018-03-26 21:39:17', '1971-05-29 00:53:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (41, 41, 41, 'Et ut odit qui esse quia omnis. Omnis quis non beatae inventore. Enim laborum eos ad quos adipisci dolor magnam.', 1, 1, '1991-12-13 03:44:24', '2007-03-26 07:21:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (42, 42, 42, 'Et culpa voluptate doloribus ad placeat consequatur. Ratione velit sequi vitae libero et numquam consectetur. Ea qui est molestias velit iste nulla.', 0, 1, '2015-09-29 19:39:56', '2014-05-28 03:07:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (43, 43, 43, 'Accusamus qui dicta quod necessitatibus ducimus. Eligendi quo ratione unde dolore dolorem ut voluptatem. Repellat ratione id et.', 1, 0, '2005-12-24 16:07:14', '1981-10-16 01:23:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (44, 44, 44, 'Dignissimos natus a sequi soluta ipsa. Voluptatibus consectetur impedit dolore qui quidem. Et exercitationem quis autem. Magni quidem aperiam cum rerum.', 0, 0, '1970-06-23 21:55:16', '2002-09-27 10:18:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (45, 45, 45, 'Voluptatem veritatis reprehenderit explicabo quam et provident. Repellat consectetur ex repudiandae nostrum illo nesciunt sed. Neque quam sed qui voluptas. Et odit dicta nisi.', 0, 1, '1994-05-25 04:29:24', '2010-04-18 02:29:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (46, 46, 46, 'Qui quasi eum aliquid rerum. Quia ipsa autem autem sit. Quo minima est consectetur voluptatem. Dolores quibusdam harum deserunt non ea officia in.', 0, 1, '1984-08-16 16:03:14', '2006-07-21 23:11:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (47, 47, 47, 'Non officia officia aut amet eligendi quos. Iusto id eos quo dolor dicta qui. Et voluptas consequuntur inventore facere earum velit quod.', 1, 0, '1973-01-15 00:53:34', '1980-02-05 16:21:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (48, 48, 48, 'Molestiae ratione facere consequuntur. Amet laborum eius dolorem odio. Asperiores minima et velit omnis.', 1, 1, '1989-11-11 20:27:01', '1988-02-27 09:29:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (49, 49, 49, 'Id tenetur aut eum dolor. Repudiandae hic quae ipsum ea est omnis. Eveniet qui facere est molestiae enim. Voluptatem rerum laboriosam fugiat.', 0, 1, '1992-05-11 21:04:39', '1976-07-23 02:03:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (50, 50, 50, 'Accusamus atque dolores cupiditate nihil omnis qui. Facilis dignissimos quia enim perspiciatis. Sint omnis sit sint nobis.', 0, 1, '1998-01-08 08:08:42', '2016-03-12 08:08:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (51, 51, 51, 'Nesciunt odit est architecto nam reprehenderit laborum. Dicta ullam porro quia voluptatem itaque id velit.', 0, 1, '1976-05-21 22:49:39', '1985-08-17 00:43:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (52, 52, 52, 'Debitis ullam autem nulla ut. At sed sequi ullam rerum velit. Dolor consequatur harum dolor aut incidunt.', 1, 1, '2009-12-01 09:10:19', '1980-01-04 08:04:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (53, 53, 53, 'Eaque nostrum quas ratione et voluptatem blanditiis. Dolore consequuntur est et. Ea odio molestiae hic dolor. Est placeat amet quos ut non.', 0, 1, '2002-05-14 04:12:12', '1992-09-17 22:52:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (54, 54, 54, 'Voluptas exercitationem corrupti impedit vel. Impedit error sunt aliquam iusto id omnis. Recusandae voluptas aut facilis. Optio aut et omnis possimus.', 0, 0, '1991-04-06 23:24:25', '1979-04-06 01:59:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (55, 55, 55, 'Ut consequatur voluptatem qui corporis et est officia. Deserunt aspernatur natus et. Dolore placeat aut rerum corporis fugiat sapiente quia. Suscipit eius tempora non quod quo iure sunt.', 1, 0, '2015-08-03 08:33:45', '2018-09-29 23:32:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (56, 56, 56, 'Aspernatur ut et quas nobis esse. Maxime nulla assumenda et sequi. Numquam repudiandae maiores consequuntur dolor.', 1, 1, '1975-10-11 06:41:54', '1993-03-18 11:13:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (57, 57, 57, 'Odio dolor sint eos cumque numquam. Magnam dolorem maxime necessitatibus illum aut culpa. Id itaque quia eveniet sit reiciendis molestias.', 1, 1, '1988-04-12 19:38:14', '1973-02-20 08:08:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (58, 58, 58, 'Cumque est eius praesentium et. Et omnis tempore perspiciatis iure aut voluptates incidunt quae. Molestiae ab libero hic est culpa enim omnis est. Ad sed itaque tempore quasi velit aliquam accusamus.', 1, 1, '2010-08-05 22:39:47', '2011-06-27 03:04:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (59, 59, 59, 'Explicabo maxime ipsum velit fuga esse explicabo et. Sint corporis vero numquam est. Dolor voluptates saepe quia et ut.', 1, 0, '2013-11-14 11:29:53', '2018-02-21 05:57:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (60, 60, 60, 'Occaecati suscipit eveniet quia ipsam aut repudiandae eius. Illum est dolore eaque fugit explicabo. Tempore tempore quam et non.', 0, 1, '1977-04-10 01:47:40', '1980-06-23 19:21:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (61, 61, 61, 'Voluptatem et voluptatum et magnam id quo ad. Quis ea perspiciatis recusandae nemo. Sint dolorum quam non laudantium ea labore vel. Nostrum praesentium cum quasi aut. Incidunt qui aspernatur vitae voluptatem ipsa quae non.', 0, 1, '2000-02-11 05:23:06', '1989-02-20 03:04:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (62, 62, 62, 'Excepturi qui exercitationem occaecati fuga qui. Omnis qui quaerat et.', 0, 0, '2010-01-31 16:34:59', '1999-07-26 13:11:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (63, 63, 63, 'Ut non sit explicabo aspernatur eius labore eum. Ut fuga fuga architecto odit nostrum aut. Dolor quibusdam velit sunt doloribus libero. Rem quos sunt nihil dolorem error tenetur.', 0, 0, '1997-02-28 14:12:16', '2019-11-20 21:38:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (64, 64, 64, 'Asperiores expedita tempora consequatur ratione dignissimos ipsam. Fuga dolores officiis molestiae enim reiciendis. Assumenda minus eligendi cumque quia totam suscipit. Sequi nisi voluptas blanditiis vero.', 1, 1, '2005-03-13 17:44:50', '2015-03-16 22:58:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (65, 65, 65, 'Molestias aspernatur eum vel vel. Et voluptas dicta fugiat voluptatibus. Ut aperiam enim quibusdam tenetur dolorem at. Non aspernatur molestiae beatae dolores. Et ullam ut deleniti dolores repellendus eveniet.', 0, 0, '1985-01-28 19:13:11', '2015-09-04 17:42:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (66, 66, 66, 'Ipsam eum repellendus sequi placeat voluptatem voluptatibus voluptate. Natus nam sit suscipit. Optio deserunt perspiciatis voluptas fuga corrupti.', 1, 0, '2018-11-17 22:38:13', '2001-05-07 07:19:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (67, 67, 67, 'Iusto in eos ut at illum. Ad laudantium deleniti earum. Accusamus quo repudiandae eos delectus. Repudiandae quod consequatur quia minus.', 1, 0, '1998-09-24 18:06:01', '1998-04-29 19:21:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (68, 68, 68, 'Id laborum impedit sint accusamus aliquid tenetur quo. Est qui porro est similique eaque illum et.', 1, 0, '1999-01-06 08:08:29', '1978-01-29 00:36:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (69, 69, 69, 'Ut consequatur sint id id quis quia consequatur soluta. Perspiciatis praesentium recusandae qui aut aut in voluptatem temporibus. Iusto qui nulla omnis aut facere.', 0, 0, '1987-01-13 02:55:54', '1970-06-15 11:59:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (70, 70, 70, 'A rem architecto quis error iste dolorem dolores. Rerum placeat labore et mollitia repellat. Recusandae ut non quis aut sit ducimus dolor.', 0, 1, '1973-08-19 14:09:25', '2009-11-07 00:35:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (71, 71, 71, 'Provident officia aperiam sed ut voluptatibus molestiae voluptatem. Voluptatem dolores voluptates eum cum aspernatur. Eius iste aut vitae voluptatum expedita.', 1, 1, '2013-11-24 04:35:46', '1982-11-10 03:22:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (72, 72, 72, 'Quod vitae quisquam iusto. Aut eaque commodi deleniti in quod exercitationem. Et nam repellat voluptas quasi iusto qui. Neque accusantium doloremque rem.', 0, 0, '1981-02-06 00:31:26', '1993-04-03 07:34:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (73, 73, 73, 'Non corporis corrupti beatae beatae tempora et. Et eaque aut consequatur quia alias maxime incidunt. Dolor pariatur et saepe doloremque alias maxime nihil. Aut enim ullam non.', 0, 1, '2015-07-11 14:20:08', '1980-11-20 03:19:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (74, 74, 74, 'Rerum minus doloremque expedita aliquam qui culpa. Tempora in ipsum quas rerum maxime sint quasi. Officia suscipit qui sunt.', 1, 1, '2003-12-28 00:50:33', '1977-04-07 03:02:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (75, 75, 75, 'Laborum id repellat enim laboriosam. Quisquam ex quis rerum dolores accusamus accusamus occaecati. Beatae tempore rerum aut ducimus et et sed. Reprehenderit voluptas fugit maiores ad.', 1, 1, '2000-05-14 21:21:30', '1993-07-15 16:46:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (76, 76, 76, 'Voluptatum vero vel ad ad deleniti. Impedit nam consectetur exercitationem iste eos eius qui laborum. Non quam ut sit dolores illum non.', 1, 1, '2012-12-17 22:16:21', '1975-12-23 00:15:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (77, 77, 77, 'Omnis rerum suscipit voluptate sequi quo molestiae explicabo maxime. Quos sit enim nihil et dignissimos. Ipsa quos odit beatae cupiditate. Quaerat at sit nisi minus.', 0, 0, '1994-08-28 20:57:58', '1987-08-15 21:09:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (78, 78, 78, 'Vero aut sit voluptas velit nihil consequuntur ex. Veritatis nobis qui dicta quos quibusdam vel. Voluptas illo eaque qui at repellendus consectetur dolorem.', 0, 1, '1971-05-08 22:20:15', '1990-01-15 22:35:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (79, 79, 79, 'Fugiat consequatur pariatur rerum molestiae eos voluptate. Repellat blanditiis culpa earum quo aspernatur. Sapiente ducimus minima delectus est placeat necessitatibus et. Nulla explicabo consequatur blanditiis asperiores dolor ut.', 0, 0, '2008-07-18 13:09:00', '1998-06-24 20:26:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (80, 80, 80, 'Iure commodi iure excepturi velit voluptatem aut temporibus est. Quia tempora aut saepe. Quibusdam rerum sunt minima officia sunt similique facere. In non enim voluptatem consequatur.', 0, 0, '1975-07-17 03:28:31', '1975-06-07 02:25:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (81, 81, 81, 'Sint itaque ipsam nisi corporis consequatur minus. Ut soluta voluptatem voluptatem. Voluptatem odio ut sed rerum ex quis. Nobis est voluptas cupiditate qui. Et ab sit non non.', 0, 1, '1988-05-29 08:09:09', '2000-08-18 07:27:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (82, 82, 82, 'Qui iure possimus quo deleniti molestiae vero aspernatur. Aut mollitia unde ut cum laudantium. Est et beatae omnis cupiditate eius maxime voluptates incidunt. Facere ad sunt quasi ex magni dicta.', 0, 0, '2015-01-09 04:48:25', '1999-05-31 07:46:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (83, 83, 83, 'Voluptatibus voluptatum recusandae accusamus incidunt sit. Ullam quia assumenda ipsam a rerum. Hic libero fugiat molestias ipsam. Nostrum eligendi ea repellat nobis.', 1, 1, '2000-04-06 18:13:18', '1973-07-19 13:31:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (84, 84, 84, 'Optio minus dolore enim esse. Suscipit provident et ea qui doloribus delectus in. Sit sed autem totam asperiores et. Aut repudiandae et iste nam occaecati.', 0, 1, '2008-12-18 09:01:36', '2010-12-16 03:26:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (85, 85, 85, 'Est odio nulla odit unde quos autem. Quia ut aut in rerum consequatur. Et et quis recusandae et et velit.', 1, 1, '1993-01-19 06:41:41', '1978-06-29 12:48:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (86, 86, 86, 'Libero maxime itaque aut. Non quia cum ut. Quae eveniet itaque neque consequatur cupiditate.', 0, 0, '1988-12-31 23:19:46', '1997-07-13 10:32:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (87, 87, 87, 'Odit corrupti excepturi consectetur sed porro eaque. Tempore consequatur incidunt occaecati quia. Nostrum quae ex aperiam impedit. Nesciunt facere tenetur aut.', 1, 0, '1971-02-11 05:45:10', '2004-05-04 22:51:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (88, 88, 88, 'Iure numquam sed voluptatem numquam minus. Quia minima autem consequatur quas fugit asperiores ullam veritatis. Nemo vel consequatur tenetur unde velit. Tenetur corporis vero sed eius ipsam porro.', 0, 1, '2002-08-28 19:55:28', '2005-11-12 10:08:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (89, 89, 89, 'Ut consequatur placeat eius est ratione qui. Unde suscipit animi cum. Ullam dolor aut laboriosam odio omnis in.', 1, 0, '1990-03-09 23:12:42', '1973-07-09 08:59:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (90, 90, 90, 'Sapiente enim omnis quisquam velit perferendis qui. Quod rerum consequatur ex ipsa. Amet rerum dolores quis labore.', 0, 0, '1998-05-19 07:17:51', '1977-10-14 04:33:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (91, 91, 91, 'Tempore nihil sit aut quis. Culpa vel incidunt illo perspiciatis neque itaque dolores ipsam. Aut non perferendis pariatur ea accusamus. Quis tenetur exercitationem ullam qui.', 0, 1, '1999-02-03 12:53:48', '1983-03-20 19:59:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (92, 92, 92, 'Id beatae qui at non blanditiis recusandae rem qui. Molestiae saepe eius impedit assumenda qui quia id. Enim rerum dignissimos expedita voluptatem est quae.', 0, 1, '1991-08-28 21:57:12', '2007-04-22 20:13:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (93, 93, 93, 'Repudiandae est delectus adipisci sint quis et totam. Hic dicta veritatis consectetur reprehenderit accusamus. Ipsum vero quidem ut adipisci quia aut odit officiis.', 0, 0, '1995-09-04 01:01:40', '2009-11-11 08:50:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (94, 94, 94, 'Quasi molestiae quibusdam qui distinctio ea deleniti. Distinctio reiciendis nam similique eum. Deleniti magni laudantium non esse.', 1, 1, '2018-02-11 00:18:31', '1974-12-20 07:54:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (95, 95, 95, 'Iusto ut rerum et quia eligendi. Corrupti eum aperiam voluptatibus velit qui et rerum. Et quo et et enim optio.', 1, 0, '2017-05-31 12:20:46', '2014-09-01 23:53:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (96, 96, 96, 'Ipsam aut omnis fuga ut est. Ipsa quisquam aut accusantium rerum optio rerum enim.', 1, 0, '1983-01-28 19:38:57', '2018-03-11 09:53:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (97, 97, 97, 'Laborum quisquam cupiditate repellendus. Reiciendis commodi tempore quia porro. Quo quia id odit nemo et officiis.', 1, 1, '2017-08-27 15:56:01', '2017-06-07 06:23:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (98, 98, 98, 'Laborum quos qui cumque itaque doloremque. Vero natus est enim voluptates eos magni nulla suscipit. Adipisci quo natus aut.', 0, 1, '1998-04-12 20:33:19', '2015-09-28 16:48:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (99, 99, 99, 'Architecto provident aut cumque incidunt molestias. Quia facere corporis quia non reprehenderit optio. Possimus iste ipsa vero rerum molestias adipisci et. Voluptatum unde ipsam dolor omnis possimus et aspernatur ad. Et quasi sit adipisci ea fugiat esse.', 1, 1, '1982-05-14 22:43:22', '1977-04-04 11:10:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (100, 100, 100, 'Atque aspernatur voluptatum consequuntur odit. Dolorum rerum soluta quae non quos facilis aperiam inventore. Eos minus ratione consequuntur porro rerum vel.', 0, 1, '1990-10-23 17:16:47', '1983-06-03 20:11:10');

-- Таблица чтобы добавлять контакты
DROP TABLE IF EXISTS friendships; 
CREATE TABLE IF NOT EXISTS friendships (
	user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на инициатора запроса дружбы",
	friend_id INT UNSIGNED NOT NULL COMMENT "Ссылка на получателя запроса дружбы",
	status_id INT UNSIGNED NOT NULL COMMENT "Ссылка на статус нынешних отношений",
	requested_at DATETIME DEFAULT NOW() COMMENT " Дата и время формирования запроса",
	confirmed_at DATETIME COMMENT " Дата и время принятия запроса",
	created_at DATETIME DEFAULT NOW()COMMENT "Время создания строки",
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки",
	PRIMARY KEY(user_id, friend_id) COMMENT "Первичный ключ"
);

INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 1, 7, '1986-09-15 22:50:53', '2000-06-05 19:49:58', '1983-08-30 20:41:58', '1977-10-11 19:50:57');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 2, 3, '2009-10-28 09:00:14', '1975-11-22 02:12:18', '2006-06-25 08:52:13', '2019-04-27 07:58:21');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 3, 7, '2018-06-08 12:40:34', '1978-09-25 20:07:12', '1988-06-06 18:26:31', '2017-09-21 14:56:13');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 4, 4, '1972-05-22 04:45:27', '2019-01-21 18:40:58', '2003-06-24 19:38:47', '2008-04-23 21:27:01');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 5, 6, '2003-04-06 03:13:00', '2009-10-03 18:21:44', '1997-07-27 12:12:25', '1976-05-25 05:59:00');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 6, 4, '2000-06-16 12:35:20', '2019-07-01 01:54:24', '1997-01-06 08:35:14', '2019-10-23 12:43:58');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 7, 2, '1973-10-06 18:22:21', '1997-10-18 02:39:29', '2009-06-16 14:25:00', '1993-04-04 11:52:05');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 8, 5, '1977-11-29 08:31:24', '1999-04-17 01:24:37', '1989-09-17 01:32:00', '1978-04-04 11:28:08');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 9, 3, '1991-08-31 06:40:51', '1997-09-17 10:03:20', '2018-11-01 08:50:26', '1991-09-06 15:25:40');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 10, 7, '1989-12-01 03:56:30', '1982-12-13 20:08:13', '1985-12-29 04:48:32', '1987-06-13 18:54:14');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 11, 1, '2012-02-02 18:10:51', '1973-12-11 08:02:33', '1975-12-27 12:35:19', '2001-12-12 07:45:59');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 12, 6, '1989-09-30 17:03:27', '1976-06-27 20:46:57', '1993-05-26 18:34:02', '1996-11-18 19:52:28');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 13, 7, '1992-03-20 22:34:37', '1993-09-17 22:32:24', '2011-10-08 19:06:40', '2008-05-26 20:41:51');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 14, 5, '1985-12-24 00:17:26', '2017-06-20 21:39:35', '1989-09-21 06:17:18', '2008-10-15 21:20:50');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 15, 8, '1984-07-21 06:25:34', '1981-05-19 16:22:15', '1992-07-22 00:10:58', '1997-06-13 02:41:17');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 16, 2, '1990-05-25 04:33:40', '1988-07-03 20:21:25', '2002-05-06 14:24:58', '1976-11-14 02:31:13');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 17, 1, '1989-03-26 21:12:42', '2019-01-31 12:27:28', '1988-03-04 02:09:29', '2006-05-18 06:25:48');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 18, 1, '1995-02-17 15:14:56', '2013-04-08 14:52:22', '2016-04-25 10:27:19', '1989-02-10 22:12:27');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 19, 3, '1992-11-16 12:39:02', '1978-11-01 17:36:02', '1978-06-28 07:11:21', '2005-09-28 23:36:02');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 20, 1, '2012-06-03 18:11:26', '1974-07-25 06:35:34', '1993-03-18 05:10:01', '1982-09-26 12:56:25');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 21, 9, '1997-07-12 16:27:03', '2012-01-14 07:05:05', '1982-05-17 13:21:40', '1992-11-13 14:49:28');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 22, 3, '1978-10-11 01:10:38', '1979-06-23 19:10:43', '2014-09-29 18:51:22', '1985-08-15 01:39:00');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 23, 9, '1978-02-06 19:54:38', '2013-04-20 15:22:59', '2001-12-05 10:38:18', '1989-05-05 02:22:40');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (24, 24, 4, '2020-09-05 09:46:15', '2002-12-09 11:04:05', '2005-05-02 11:04:27', '1985-09-06 12:18:58');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 25, 5, '2002-01-31 20:41:36', '2012-03-28 00:16:13', '1999-04-08 00:44:06', '1975-05-04 12:51:01');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 26, 4, '1981-07-27 04:16:57', '1987-02-20 01:52:02', '1992-07-01 17:56:58', '2002-09-16 07:44:06');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 27, 9, '1999-07-02 15:47:58', '1990-08-01 23:21:24', '1980-12-21 19:25:28', '1992-05-31 05:39:44');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 28, 1, '2016-08-21 07:39:33', '1995-06-20 10:38:31', '2007-08-01 11:05:44', '1999-02-05 18:18:05');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 29, 3, '1997-07-13 18:42:11', '2009-06-05 16:09:03', '1998-04-01 04:51:34', '2002-05-21 20:40:52');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 30, 7, '1974-02-08 09:21:30', '1988-05-15 22:19:16', '1994-07-07 05:52:34', '1988-04-23 15:38:41');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 31, 5, '2004-06-26 08:04:35', '2016-03-18 18:55:27', '1986-10-29 22:24:19', '1985-03-03 06:27:21');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 32, 9, '1984-01-20 08:02:08', '1983-12-24 14:40:06', '1997-09-06 16:50:55', '2002-10-12 15:06:17');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 33, 6, '2020-10-18 17:31:55', '1978-10-07 13:25:07', '2020-11-11 01:28:42', '2012-10-05 09:35:28');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 34, 4, '2000-04-03 01:23:47', '2017-01-23 12:52:18', '2005-01-06 21:29:05', '1998-05-19 10:12:33');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 35, 0, '1980-06-05 15:37:20', '2009-08-26 19:40:59', '1995-04-13 09:24:27', '1999-02-09 17:56:25');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 36, 8, '1976-05-16 12:07:18', '2003-11-20 12:23:36', '1982-12-02 14:35:28', '2009-04-06 04:07:50');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 37, 9, '2002-07-30 12:15:35', '1976-08-06 17:55:51', '2001-01-16 18:03:13', '1973-11-12 22:33:54');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 38, 9, '1983-04-17 23:28:20', '1980-06-23 00:15:36', '2008-09-28 17:53:45', '1989-07-13 09:30:42');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 39, 1, '1977-06-23 09:07:05', '2020-10-13 22:40:26', '1972-06-20 05:19:54', '1998-02-25 21:14:30');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 40, 1, '2012-08-31 15:46:17', '1984-05-15 06:56:54', '2016-03-24 17:01:50', '2004-03-01 15:08:42');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 41, 2, '1975-10-09 16:03:42', '1975-01-15 12:27:05', '2018-12-07 03:25:44', '2018-11-16 15:45:09');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (42, 42, 5, '1981-05-18 19:05:53', '1999-07-21 05:32:16', '1972-10-29 00:11:04', '2009-01-24 20:29:18');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 43, 0, '1974-07-29 11:53:07', '2017-02-11 05:58:39', '1987-09-05 07:23:55', '2005-03-28 02:40:32');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 44, 6, '1970-05-06 23:04:16', '1982-10-23 12:33:49', '1993-07-04 09:16:21', '2008-05-22 10:49:08');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 45, 3, '1998-02-12 13:27:52', '1992-03-20 04:16:11', '2019-06-23 18:58:34', '1973-12-14 03:39:38');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 46, 2, '1977-08-28 20:49:03', '2014-12-27 17:40:32', '1985-11-19 07:49:29', '1978-07-15 18:52:14');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 47, 0, '1992-01-01 10:58:13', '2006-09-24 22:01:51', '2015-03-28 17:00:10', '1992-06-08 20:35:23');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 48, 7, '1979-11-25 08:35:03', '2019-05-26 03:36:26', '1991-02-11 22:53:58', '1972-04-06 06:40:41');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 49, 7, '2002-10-04 10:13:32', '1973-06-27 11:44:41', '2006-07-25 15:19:07', '1974-03-07 01:49:44');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 50, 2, '1983-03-18 07:36:34', '1992-10-28 10:16:33', '1984-08-22 10:38:29', '1990-10-15 01:52:11');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 51, 3, '1971-06-02 12:25:50', '2010-05-15 22:45:31', '1993-11-03 01:11:55', '2000-12-09 13:16:35');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 52, 7, '1990-11-17 23:16:47', '2000-12-20 02:26:46', '1994-02-22 16:09:28', '2019-12-25 06:17:41');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 53, 3, '1977-07-19 22:24:35', '1998-06-12 22:18:44', '1977-04-20 14:27:25', '1971-03-18 09:34:10');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 54, 8, '2017-02-14 04:34:47', '2016-05-03 03:50:32', '2003-04-28 01:31:25', '2017-12-30 15:12:55');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 55, 8, '1973-09-17 04:25:53', '1981-11-18 00:18:19', '1975-07-24 00:09:56', '2018-05-07 10:16:34');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 56, 5, '1981-09-22 21:11:30', '2015-05-19 02:53:08', '1979-06-07 03:36:08', '1999-09-08 12:14:04');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 57, 1, '2004-11-24 20:03:11', '1976-11-15 04:16:42', '1984-04-27 00:05:20', '1982-11-02 14:34:13');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 58, 0, '1983-08-03 23:45:27', '1972-02-14 08:22:20', '1974-11-19 03:58:30', '1980-05-07 20:45:15');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 59, 4, '1971-10-25 02:57:44', '1996-02-02 07:24:11', '1987-05-09 20:21:03', '2017-02-25 19:43:53');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (60, 60, 0, '1994-08-18 17:42:12', '1976-08-18 10:35:58', '2005-02-26 22:10:22', '1977-02-03 05:24:22');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 61, 1, '1980-09-27 13:36:29', '1997-08-10 10:22:34', '1972-12-24 06:41:02', '1979-09-28 06:32:59');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 62, 1, '2004-01-03 22:07:18', '1995-03-13 23:40:55', '1984-09-05 00:52:36', '2002-05-31 13:33:41');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 63, 5, '2013-04-24 07:31:22', '2013-06-09 06:27:52', '2015-03-26 00:34:05', '1985-11-03 17:48:42');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 64, 3, '2002-07-15 02:35:06', '1974-05-25 11:22:03', '1975-07-27 05:57:06', '1974-11-13 09:41:24');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (65, 65, 9, '2010-09-30 16:53:48', '1999-01-11 02:51:51', '1984-10-26 16:39:24', '1970-05-13 03:36:34');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (66, 66, 2, '1973-07-03 10:12:18', '1978-05-08 05:43:15', '1989-04-22 01:57:49', '1983-01-11 05:48:08');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 67, 2, '1991-07-03 15:55:42', '1979-01-16 18:28:27', '2016-03-21 12:12:20', '1997-04-22 14:09:52');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 68, 4, '1981-11-15 12:13:57', '1984-03-20 00:33:41', '2012-01-19 05:33:40', '1994-11-02 16:08:50');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 69, 6, '2019-01-16 20:49:48', '2012-07-14 14:32:50', '2014-06-12 04:49:33', '2012-05-23 23:14:22');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 70, 1, '1995-02-17 08:11:06', '1990-05-08 11:26:48', '1996-06-09 20:24:25', '1981-05-21 06:28:39');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 71, 4, '2001-02-26 16:55:20', '2005-06-24 03:01:34', '1989-05-10 00:11:42', '1996-05-24 01:53:51');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 72, 8, '2012-01-08 17:53:14', '1980-08-20 13:58:21', '1988-10-13 18:06:21', '1980-02-19 15:08:41');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 73, 7, '1995-06-05 11:00:04', '1997-08-29 17:58:20', '1985-02-26 13:55:22', '1997-03-12 12:23:09');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 74, 7, '2008-09-22 03:42:54', '2020-05-26 14:17:06', '2002-04-30 12:30:06', '2006-10-26 14:35:07');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 75, 6, '1972-06-17 14:17:03', '1993-07-28 22:54:58', '2004-11-05 07:25:30', '1988-10-28 07:43:36');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 76, 9, '1972-08-09 16:12:45', '2007-09-07 02:23:37', '2017-05-12 22:44:03', '1998-04-06 22:11:37');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 77, 7, '1999-02-13 04:52:37', '1976-01-27 04:58:05', '2020-11-01 04:56:43', '1990-08-02 06:22:16');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 78, 7, '2013-07-28 17:48:55', '2012-07-03 11:59:10', '1999-11-01 03:49:21', '1988-04-17 02:51:14');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 79, 5, '1978-06-19 08:51:57', '1981-09-07 07:43:30', '1977-05-04 13:49:48', '1975-05-16 15:47:45');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 80, 6, '2001-10-07 04:51:03', '1996-03-20 21:29:30', '1997-05-21 12:20:12', '1976-12-04 07:11:30');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 81, 8, '1988-07-06 22:46:38', '1999-03-02 08:27:49', '2000-03-14 13:39:34', '2016-02-18 09:58:10');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 82, 2, '2020-04-09 00:25:13', '1981-12-14 23:29:21', '1982-01-12 05:03:19', '1971-09-03 08:38:57');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 83, 2, '1993-03-02 04:32:13', '1980-09-12 08:38:02', '1981-01-19 12:52:19', '1991-09-20 05:17:24');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 84, 8, '1999-08-12 14:45:02', '2008-05-29 20:28:11', '1972-05-23 14:51:08', '1976-05-25 11:06:47');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 85, 8, '2019-06-14 15:38:47', '1994-06-24 19:08:59', '1993-05-11 13:24:52', '1999-11-24 02:04:37');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (86, 86, 4, '2013-11-02 04:48:44', '1971-12-04 04:03:14', '1987-11-06 08:14:41', '1977-02-06 18:55:11');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 87, 5, '1982-09-16 13:47:52', '1999-03-23 18:16:32', '1973-12-25 12:03:10', '1982-09-14 20:56:30');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 88, 3, '1976-07-26 11:41:17', '1984-11-04 11:10:04', '2013-08-08 22:18:17', '2012-04-25 05:10:03');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (89, 89, 4, '2016-12-29 02:04:36', '1978-05-16 11:44:55', '2002-03-22 04:28:36', '1975-12-20 09:10:18');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 90, 3, '2020-04-27 20:20:29', '2005-05-04 09:05:49', '1999-10-02 03:44:37', '2003-12-07 09:54:54');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 91, 4, '1991-06-19 01:08:09', '1975-06-05 08:31:56', '2004-03-17 04:59:12', '1993-10-17 18:43:17');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 92, 7, '1984-01-03 17:59:34', '1975-04-19 00:30:23', '1983-04-17 16:01:40', '1989-02-10 01:30:04');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 93, 2, '1988-05-11 00:33:30', '1995-01-21 11:51:09', '1973-07-26 08:24:08', '1982-03-25 22:30:09');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 94, 7, '1997-12-23 17:27:48', '1991-10-10 21:38:26', '2008-09-27 16:17:19', '2012-05-28 21:42:37');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 95, 3, '1977-08-14 21:49:30', '2000-05-24 16:50:15', '1972-11-20 20:44:56', '2005-05-06 08:59:17');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 96, 3, '1998-05-01 07:38:23', '2006-04-16 14:28:47', '1996-12-23 12:54:17', '2009-09-23 00:37:08');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 97, 8, '2001-04-29 03:28:57', '2002-11-21 12:05:00', '1993-02-24 03:22:11', '1981-01-03 05:58:26');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 98, 9, '2003-05-15 19:00:25', '1985-12-17 02:51:11', '1971-01-10 18:30:28', '1992-07-11 14:48:56');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 99, 0, '2019-07-29 04:43:04', '1974-07-03 21:58:09', '2003-10-12 10:57:32', '1980-06-09 07:41:05');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 100, 2, '2020-04-19 14:11:41', '1989-05-20 02:47:43', '1971-11-18 07:20:31', '1973-09-01 08:34:48');

-- Таблица статуса контактов
DROP TABLE IF EXISTS friendship_statuses; 
CREATE TABLE IF NOT EXISTS friendship_statuses(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
	name VARCHAR(255) NOT NULL COMMENT "Статус",
	created_at DATETIME DEFAULT NOW()COMMENT "Время создания строки",
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
);

INSERT INTO `friendship_statuses` VALUES (1,'Requested','2020-09-08 21:40:50','2020-09-08 21:40:50'),(2,'Confirmed','2020-09-08 21:40:50','2020-09-08 21:40:50'),(3,'Rejected','2020-09-08 21:40:50','2020-09-08 21:40:50');

-- Таблица сообществ
DROP TABLE IF EXISTS communities;
CREATE TABLE IF NOT EXISTS communities(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
	name VARCHAR(150) NOT NULL COMMENT "Название сообщества",
	created_at DATETIME DEFAULT NOW()COMMENT "Время создания строки",
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
);

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'rerum', '1997-06-05 15:33:39', '1994-11-14 15:09:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'aut', '1997-12-30 02:28:37', '2000-11-22 10:34:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'quidem', '1987-06-09 17:16:36', '2005-02-26 03:22:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'facere', '1987-04-23 06:17:16', '2005-09-30 22:33:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'praesentium', '1986-03-14 19:33:11', '1972-02-19 08:05:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'qui', '1991-05-30 06:18:10', '1979-06-21 12:04:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'molestiae', '1972-01-06 11:42:12', '2010-12-14 17:22:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'deserunt', '1983-02-24 01:55:05', '2005-09-28 21:52:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'nemo', '1994-06-12 02:28:38', '1972-10-05 13:57:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'sit', '2017-06-29 18:31:11', '1997-04-25 02:26:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'accusantium', '1974-12-11 03:28:01', '1981-03-15 03:35:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'odio', '2007-06-26 02:19:54', '1987-11-01 22:34:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'rem', '1999-06-10 04:41:37', '1994-03-05 08:21:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'hic', '1970-11-09 15:20:31', '1984-08-29 22:09:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'quis', '2020-04-27 22:28:14', '2014-02-22 15:58:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'quia', '2008-05-22 00:10:21', '1993-10-28 13:06:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'porro', '1988-06-26 10:29:14', '2020-08-10 15:30:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'aut', '2002-12-03 23:56:02', '2013-12-25 05:45:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'enim', '2018-04-29 06:18:51', '1989-06-13 01:02:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'non', '1990-07-06 13:33:45', '1979-04-03 22:41:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'ex', '2019-09-17 17:23:22', '1993-05-14 22:23:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'eos', '2016-07-23 13:31:04', '2011-01-30 00:39:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'maxime', '1977-02-13 21:52:43', '1981-03-24 15:05:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'aspernatur', '2001-08-06 11:37:34', '1995-09-11 23:10:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'ipsa', '1975-10-12 17:37:44', '1974-11-03 23:29:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'et', '1985-01-30 20:36:49', '1983-04-08 19:07:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'magni', '2013-10-05 19:19:10', '2019-01-06 16:37:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'debitis', '1979-08-27 11:57:41', '2018-01-07 11:47:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'tempore', '2000-06-07 08:43:54', '2012-06-09 03:51:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'sunt', '1970-11-09 16:51:24', '2002-06-01 11:05:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'ut', '1980-05-04 15:56:17', '1974-03-30 02:57:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'culpa', '1998-02-08 22:30:50', '2010-09-17 21:09:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'ea', '1981-05-29 05:33:37', '1992-12-15 15:14:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'eum', '2014-02-15 14:35:57', '2006-07-01 11:12:41');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'accusantium', '2017-06-20 02:35:02', '2003-04-06 15:48:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'ullam', '1986-02-27 20:13:50', '2000-05-24 03:35:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'porro', '2019-07-25 05:17:02', '2015-11-24 17:46:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'quia', '2014-10-14 10:08:38', '1998-09-23 19:37:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'blanditiis', '1990-07-07 21:02:00', '1983-11-04 19:36:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'et', '1970-11-21 00:37:46', '2000-01-16 14:50:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 'dolores', '1995-11-03 00:58:01', '2010-06-26 09:52:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, 'error', '2019-04-01 00:43:39', '2009-03-09 14:28:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'quia', '1973-10-01 03:03:14', '1973-05-26 17:39:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'repellat', '2019-08-12 13:58:10', '1973-06-13 12:17:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'sed', '2003-09-14 09:55:30', '1986-12-30 19:27:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'quis', '2017-01-07 22:17:20', '1987-10-02 02:01:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'tempora', '2018-04-21 13:52:44', '1994-08-03 05:38:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, 'pariatur', '1971-02-05 15:28:08', '1997-10-03 04:49:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'quae', '1978-03-31 05:52:07', '1980-11-04 10:15:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'similique', '1992-02-01 17:39:16', '1995-07-13 14:41:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (51, 'fuga', '2018-09-08 08:20:03', '2017-07-23 10:52:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (52, 'odio', '2016-02-03 03:56:44', '1986-06-02 02:05:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (53, 'beatae', '1970-02-06 00:29:41', '2019-06-30 23:41:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (54, 'vitae', '2002-02-10 13:12:24', '2001-06-02 14:09:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (55, 'ad', '1970-10-26 16:02:41', '2014-01-02 03:26:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (56, 'voluptatem', '1975-04-25 19:32:02', '1991-08-28 13:09:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (57, 'fuga', '1975-07-15 12:48:27', '2011-02-07 10:54:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (58, 'dolores', '1994-09-28 12:43:34', '2018-09-17 05:23:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (59, 'perspiciatis', '1990-11-09 05:52:04', '1984-08-14 19:27:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (60, 'dolorem', '2009-12-15 05:28:03', '2010-12-09 14:04:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (61, 'excepturi', '1994-09-29 20:24:07', '1972-11-28 06:49:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (62, 'iusto', '2004-04-22 17:04:45', '1996-02-21 04:49:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (63, 'reiciendis', '2008-12-02 00:57:23', '1973-04-24 06:20:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (64, 'quisquam', '2013-03-11 13:49:15', '1971-04-24 00:00:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (65, 'est', '1984-01-02 01:07:38', '2016-04-10 19:23:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (66, 'quas', '2018-08-13 04:13:43', '1989-08-07 15:49:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (67, 'ratione', '1976-12-06 18:14:36', '2014-12-27 14:34:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (68, 'alias', '2016-01-09 13:28:29', '2006-05-03 23:11:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (69, 'sit', '2019-08-13 13:44:50', '1996-10-03 00:55:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (70, 'dicta', '2003-03-13 20:37:04', '2012-07-24 03:26:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (71, 'et', '1986-10-16 15:02:37', '2013-12-07 20:14:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (72, 'vel', '1972-08-01 20:25:06', '1978-03-19 11:11:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (73, 'minima', '1981-09-13 09:20:34', '2020-02-23 22:47:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (74, 'corporis', '2006-09-20 04:36:12', '1990-09-26 07:31:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (75, 'non', '1971-10-18 13:50:47', '1980-01-25 05:08:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (76, 'est', '1979-10-02 02:16:12', '1975-04-25 20:34:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (77, 'nulla', '1978-09-29 05:05:47', '1992-05-24 08:23:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (78, 'sed', '2003-04-22 16:55:15', '1986-04-19 14:10:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (79, 'molestiae', '1978-01-25 09:14:54', '2004-04-09 11:28:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (80, 'aliquid', '1979-12-12 08:11:46', '2016-09-09 01:29:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (81, 'nihil', '1991-11-25 10:11:51', '1984-02-09 20:15:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (82, 'ad', '2017-08-16 10:05:22', '1976-07-13 22:42:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (83, 'nam', '1987-11-07 20:46:41', '2006-08-03 09:21:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (84, 'qui', '1987-08-25 06:24:22', '1981-10-26 23:15:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (85, 'voluptate', '1990-07-18 07:10:10', '2008-11-09 06:38:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (86, 'quae', '2014-02-17 10:45:40', '1986-07-22 20:14:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (87, 'consequatur', '1973-12-26 01:19:59', '2014-04-14 06:28:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (88, 'nihil', '2020-08-26 09:48:58', '1973-02-24 11:35:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (89, 'dicta', '2007-01-04 20:04:48', '1995-06-09 04:22:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (90, 'dolorem', '1984-01-22 02:53:08', '2018-05-31 04:52:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (91, 'quasi', '2008-07-21 18:17:55', '1982-03-21 11:45:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (92, 'non', '1991-11-27 01:12:32', '2005-12-26 13:38:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (93, 'eaque', '1993-03-18 09:40:47', '1985-05-27 11:39:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (94, 'consequatur', '1991-11-16 05:37:33', '1995-10-05 21:32:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (95, 'sapiente', '2020-01-11 03:41:33', '1995-11-06 13:45:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (96, 'qui', '2005-12-07 08:21:14', '1974-01-27 22:26:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (97, 'unde', '1972-08-04 14:22:23', '2004-05-18 03:15:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (98, 'delectus', '1977-08-11 23:58:52', '1998-05-31 18:55:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (99, 'nostrum', '1992-05-19 11:04:14', '1989-08-13 18:51:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (100, 'in', '1978-10-29 11:08:28', '1981-09-09 07:32:41');

-- Таблица связи пользователей и групп
DROP TABLE IF EXISTS communities_users; 
CREATE TABLE IF NOT EXISTS communities_users (
	user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",
	community_id INT UNSIGNED NOT NULL COMMENT "Ссылка на группу",
	created_at DATETIME DEFAULT NOW()COMMENT "Время создания строки",
	PRIMARY KEY(user_id, community_id) COMMENT " Составной первичный ключ"
);

INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (1, 1, '2012-01-04 10:05:34');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (2, 2, '2019-06-15 08:42:08');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (3, 3, '1990-10-05 15:30:42');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (4, 4, '1971-09-15 13:13:10');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (5, 5, '1979-05-20 01:47:40');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (6, 6, '2003-12-08 19:46:19');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (7, 7, '1991-01-18 03:07:54');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (8, 8, '2016-10-31 07:49:37');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (9, 9, '2004-01-27 02:09:13');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (10, 10, '2004-03-06 05:25:21');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (11, 11, '1972-10-17 02:19:23');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (12, 12, '1994-12-23 12:09:51');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (13, 13, '1979-07-24 02:27:21');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (14, 14, '1993-06-12 10:12:09');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (15, 15, '2001-09-10 11:18:59');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (16, 16, '1973-04-24 02:01:53');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (17, 17, '1984-07-24 07:37:44');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (18, 18, '1996-09-11 09:49:23');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (19, 19, '2020-11-28 21:38:11');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (20, 20, '1973-12-28 20:13:41');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (21, 21, '1995-07-04 00:31:22');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (22, 22, '2005-11-21 02:29:00');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (23, 23, '2001-01-20 17:18:14');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (24, 24, '1971-04-14 01:02:56');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (25, 25, '1986-03-07 10:40:58');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (26, 26, '1989-07-28 20:02:51');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (27, 27, '1990-09-23 08:17:55');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (28, 28, '1988-04-19 23:58:43');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (29, 29, '1995-07-11 18:40:36');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (30, 30, '2015-02-23 19:09:58');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (31, 31, '1989-01-25 08:53:40');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (32, 32, '1994-08-30 08:05:06');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (33, 33, '2013-08-23 18:55:28');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (34, 34, '2011-04-13 11:02:40');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (35, 35, '2001-02-08 13:03:56');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (36, 36, '2000-11-16 09:04:13');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (37, 37, '1994-08-27 02:05:55');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (38, 38, '1994-06-01 11:58:49');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (39, 39, '1979-12-03 20:02:25');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (40, 40, '1992-11-24 06:28:16');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (41, 41, '1972-10-08 10:17:46');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (42, 42, '2011-08-08 09:37:42');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (43, 43, '1998-10-23 11:26:23');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (44, 44, '1983-04-10 11:45:56');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (45, 45, '2015-08-23 21:35:52');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (46, 46, '1991-08-19 02:08:09');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (47, 47, '2003-01-31 03:59:22');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (48, 48, '2002-08-26 06:08:38');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (49, 49, '2012-03-09 05:44:02');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (50, 50, '2003-12-22 21:05:07');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (51, 51, '2004-03-04 13:30:42');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (52, 52, '1987-06-05 15:57:24');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (53, 53, '2011-11-05 06:11:14');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (54, 54, '1985-01-17 03:32:33');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (55, 55, '1990-12-02 04:30:18');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (56, 56, '1983-01-28 18:27:56');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (57, 57, '1975-01-11 15:56:14');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (58, 58, '1984-09-03 05:06:03');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (59, 59, '2012-10-28 00:02:12');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (60, 60, '2005-07-27 20:32:20');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (61, 61, '2001-10-24 14:09:56');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (62, 62, '2005-08-21 00:53:13');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (63, 63, '2019-09-15 04:42:48');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (64, 64, '1980-02-01 11:23:33');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (65, 65, '1980-04-22 11:13:09');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (66, 66, '1982-10-29 10:38:08');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (67, 67, '1997-03-22 03:36:12');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (68, 68, '1996-06-06 02:27:49');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (69, 69, '1998-08-06 17:35:01');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (70, 70, '2007-04-24 07:19:25');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (71, 71, '2011-02-22 23:09:23');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (72, 72, '2006-04-06 12:05:51');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (73, 73, '2017-05-05 12:46:58');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (74, 74, '1999-03-21 01:15:28');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (75, 75, '1990-03-31 01:29:36');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (76, 76, '1997-07-14 15:18:44');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (77, 77, '2002-10-22 23:42:58');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (78, 78, '1980-02-14 04:34:27');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (79, 79, '2017-04-22 05:08:54');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (80, 80, '1977-02-10 21:57:54');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (81, 81, '1998-01-12 03:42:20');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (82, 82, '1984-02-27 01:57:00');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (83, 83, '1993-04-03 13:42:17');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (84, 84, '1992-04-30 17:12:42');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (85, 85, '2007-01-30 02:44:39');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (86, 86, '1987-08-27 08:55:30');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (87, 87, '1974-07-09 04:41:16');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (88, 88, '1981-11-16 14:44:15');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (89, 89, '2016-01-16 11:15:36');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (90, 90, '1985-01-27 18:05:08');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (91, 91, '1972-10-13 21:08:45');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (92, 92, '1981-09-20 11:28:02');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (93, 93, '2010-02-23 23:10:00');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (94, 94, '2005-01-29 23:48:20');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (95, 95, '2009-08-10 11:38:26');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (96, 96, '2006-12-17 06:05:13');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (97, 97, '2001-08-06 11:20:13');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (98, 98, '1993-07-24 22:42:11');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (99, 99, '1984-11-06 14:25:21');
INSERT INTO `communities_users` (`user_id`, `community_id`, `created_at`) VALUES (100, 100, '1997-10-04 15:53:45');

-- Таблица медиафайлов
DROP TABLE IF EXISTS media; 
CREATE TABLE IF NOT EXISTS media(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
	user_id INT UNSIGNED NOT NULL  COMMENT "Пользователь загрузивший файл",
	filename VARCHAR(255) NOT NULL COMMENT "Путь к файлу",
	size INT NOT NULL COMMENT "Размер файла",
	metadata JSON DEFAULT NULL COMMENT "Метаданные файла",
	mediafile_type INT UNSIGNED NOT NULL COMMENT "Тип файла",
	created_at DATETIME DEFAULT NOW()COMMENT "Время создания строки",
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
);

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (1, 1, 'Maiores aut et atque non modi porro eos.', 421, NULL, 9, '2015-02-04 11:44:41', '1974-06-07 15:27:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (2, 2, 'Quia assumenda itaque sint.', 833375362, NULL, 7, '2011-05-02 07:14:29', '1996-06-10 06:49:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (3, 3, 'Earum aperiam incidunt molestiae dignissimos sunt excepturi sed.', 588996, NULL, 1, '1986-02-15 06:26:24', '1990-07-16 23:07:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (4, 4, 'Suscipit sit et impedit.', 4741, NULL, 5, '1973-05-29 01:05:03', '1971-05-26 12:57:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (5, 5, 'Voluptatum nobis est architecto ea reprehenderit aut dolores.', 16460, NULL, 3, '2007-07-18 20:25:53', '1970-10-26 22:01:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (6, 6, 'Impedit eum impedit tempora eligendi voluptate incidunt incidunt.', 0, NULL, 9, '1976-05-05 17:25:22', '1993-05-07 11:05:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (7, 7, 'Sed enim ut dignissimos est dolore consequatur non.', 38, NULL, 8, '1992-09-10 05:51:59', '1974-12-16 10:50:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (8, 8, 'Earum ea deleniti et.', 9, NULL, 0, '2018-04-09 12:36:59', '2003-08-02 15:24:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (9, 9, 'Odio sed officia tenetur sit rerum.', 68485765, NULL, 5, '1970-01-01 03:08:08', '1978-06-29 02:31:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (10, 10, 'Tempora quasi minus aspernatur ipsa nobis.', 79, NULL, 2, '2014-05-13 07:44:21', '2017-06-09 12:02:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (11, 11, 'Vitae delectus culpa ut asperiores.', 7, NULL, 9, '1974-03-12 23:21:21', '1990-07-25 15:47:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (12, 12, 'Id rem eaque asperiores voluptates eligendi qui repudiandae.', 0, NULL, 3, '1988-12-10 20:05:56', '1977-10-16 16:01:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (13, 13, 'Sed fuga provident impedit beatae.', 40137, NULL, 1, '2013-01-15 17:31:41', '1989-02-05 07:04:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (14, 14, 'Doloremque sit officia qui.', 28766840, NULL, 9, '1972-07-18 12:27:52', '1970-07-15 15:09:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (15, 15, 'Quas dolor veritatis quasi sapiente nemo enim.', 371386012, NULL, 9, '2004-05-13 04:41:23', '1974-06-28 04:50:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (16, 16, 'Sequi optio ut labore est.', 736637096, NULL, 0, '1976-03-10 21:30:31', '1989-02-15 10:13:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (17, 17, 'Deleniti accusantium laboriosam impedit dignissimos facilis nihil.', 3105101, NULL, 8, '2005-08-26 14:57:09', '2007-03-04 12:02:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (18, 18, 'In commodi dolorem sit sequi et inventore nulla.', 72, NULL, 5, '2013-09-23 02:05:04', '2019-02-16 00:02:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (19, 19, 'Ullam sit et nobis veniam consectetur.', 8474217, NULL, 2, '1999-06-20 14:01:03', '1989-07-23 13:42:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (20, 20, 'Eos ut eveniet atque ex at hic rem ex.', 16381, NULL, 2, '1973-08-31 16:00:20', '2007-09-01 21:32:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (21, 21, 'Molestiae repellendus quasi id cumque.', 5183183, NULL, 4, '2013-06-23 07:41:16', '2002-06-01 01:28:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (22, 22, 'Non consequatur rem iure eos voluptatem.', 9, NULL, 1, '1972-04-16 14:39:40', '2004-06-19 01:16:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (23, 23, 'Nisi esse consequatur hic quisquam.', 5313356, NULL, 8, '1981-11-14 03:21:49', '2001-12-26 12:44:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (24, 24, 'Provident ea voluptates eaque dolor et dicta.', 280733131, NULL, 5, '2010-04-30 19:27:18', '1997-09-19 10:26:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (25, 25, 'Ducimus iure ratione occaecati quia.', 515387, NULL, 6, '2006-03-25 03:56:47', '1980-05-29 06:12:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (26, 26, 'Sit autem iusto et ut.', 4373, NULL, 3, '2012-07-27 16:25:03', '1986-10-14 05:49:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (27, 27, 'Itaque et nam non perferendis asperiores architecto.', 0, NULL, 4, '1999-05-03 10:46:25', '1975-04-05 23:10:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (28, 28, 'Voluptatem aliquam sit harum quia perspiciatis repellat.', 761, NULL, 1, '1971-07-20 02:28:19', '1978-04-25 21:22:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (29, 29, 'Hic non quos quo beatae ab aut.', 151908, NULL, 7, '2014-07-28 01:07:15', '2016-03-29 01:07:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (30, 30, 'Saepe dicta id ratione tempora sunt.', 97167047, NULL, 2, '2020-08-27 02:16:03', '1990-05-06 09:39:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (31, 31, 'Magnam dolor quia voluptates sit officiis aut eaque.', 78418, NULL, 5, '2009-08-12 16:26:42', '1974-10-14 23:28:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (32, 32, 'Aut debitis et corporis id.', 907448, NULL, 1, '2014-06-25 21:42:04', '1987-08-03 07:23:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (33, 33, 'Perspiciatis id ut possimus expedita.', 1, NULL, 9, '2009-01-31 05:38:37', '1991-08-11 21:50:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (34, 34, 'Nisi est eos inventore laborum.', 0, NULL, 3, '1986-09-25 18:04:43', '2010-09-14 07:29:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (35, 35, 'Voluptatem delectus rerum dolore error.', 4, NULL, 5, '2016-07-11 21:49:41', '2020-06-24 16:26:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (36, 36, 'Sequi fuga nihil debitis nam natus.', 52078, NULL, 0, '2017-11-22 14:51:33', '1982-08-28 05:54:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (37, 37, 'Omnis deserunt earum et qui alias ratione minus.', 64812453, NULL, 1, '1996-02-16 02:25:33', '2010-03-19 07:57:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (38, 38, 'Rem quis porro repellendus.', 0, NULL, 6, '2007-06-11 00:58:41', '2005-03-06 04:26:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (39, 39, 'Vel assumenda adipisci ut provident cumque.', 7485339, NULL, 6, '2012-12-28 03:51:59', '1985-09-17 19:45:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (40, 40, 'Officia itaque fugit totam sapiente reprehenderit.', 95, NULL, 2, '2000-11-19 14:47:49', '1977-10-29 00:21:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (41, 41, 'Ab deserunt ad fugiat dolorem.', 0, NULL, 2, '1978-09-26 14:35:28', '1998-05-14 00:43:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (42, 42, 'Qui reprehenderit quo animi aut.', 8978638, NULL, 0, '1979-03-06 22:32:00', '2007-06-11 06:44:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (43, 43, 'Doloremque iste velit aliquam id.', 600108282, NULL, 9, '2020-02-28 05:13:32', '2004-02-03 14:35:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (44, 44, 'Aut unde sunt sit accusantium est.', 808043368, NULL, 1, '1978-02-18 18:13:00', '1999-10-10 21:40:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (45, 45, 'Harum error officia earum quasi eos.', 4430226, NULL, 2, '1983-10-19 03:23:26', '1984-06-24 05:00:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (46, 46, 'Ut occaecati eveniet eius sit blanditiis exercitationem.', 756856, NULL, 3, '2016-04-20 06:06:06', '1978-11-07 21:46:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (47, 47, 'Alias illum officiis recusandae.', 1424468, NULL, 2, '1989-01-02 17:35:38', '1987-09-14 05:51:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (48, 48, 'Est ipsa neque nam maxime.', 284, NULL, 6, '1977-02-09 23:19:51', '2006-03-11 07:03:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (49, 49, 'Quo id vel quis autem.', 5578, NULL, 4, '2011-06-14 06:41:31', '2012-03-14 19:46:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (50, 50, 'Est distinctio consequatur corporis non modi dolorum sint atque.', 9137116, NULL, 5, '1973-08-13 12:35:49', '2017-01-15 18:38:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (51, 51, 'Illum qui ullam quaerat molestias facilis.', 0, NULL, 0, '1994-07-04 23:49:32', '2020-04-18 15:16:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (52, 52, 'Eligendi dolor et suscipit facere iusto vel quia autem.', 341128, NULL, 3, '1980-04-25 13:15:36', '1977-09-12 12:23:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (53, 53, 'Sequi nobis quia occaecati et praesentium sit occaecati.', 22, NULL, 4, '1995-02-03 01:01:59', '2010-04-14 23:43:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (54, 54, 'Dolorem omnis deleniti quidem consequuntur quidem sapiente praesentium qui.', 0, NULL, 9, '2014-02-01 17:21:16', '1981-11-15 12:27:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (55, 55, 'Aut omnis et et eos itaque in.', 7387, NULL, 4, '2019-08-09 01:23:18', '2006-01-18 01:35:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (56, 56, 'Sed consequatur doloribus delectus ipsa et et reprehenderit.', 34, NULL, 7, '1973-04-07 05:27:31', '1972-05-05 17:36:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (57, 57, 'Et inventore modi dignissimos dolor aliquid dolor.', 4, NULL, 1, '2000-05-01 08:31:27', '2000-07-20 21:59:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (58, 58, 'Maiores explicabo sit et odio dolor accusantium ducimus accusamus.', 9125, NULL, 0, '2012-05-07 21:56:06', '1973-04-18 11:00:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (59, 59, 'Voluptatem deleniti vero quod tempore reiciendis dolores nobis.', 0, NULL, 7, '1994-09-01 05:08:24', '2004-10-28 23:19:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (60, 60, 'Autem provident fugit ut eaque rem quae enim.', 68115824, NULL, 9, '1980-02-11 03:50:21', '1973-05-19 04:01:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (61, 61, 'Ipsum vitae magni dolores sed sit quo.', 7, NULL, 6, '1998-10-18 12:07:03', '1974-05-09 02:30:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (62, 62, 'Nihil totam enim repellat quis voluptas tempore qui.', 6027, NULL, 1, '2013-10-22 06:24:26', '2009-09-28 20:38:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (63, 63, 'Est est nobis voluptas.', 125, NULL, 7, '1996-03-16 01:26:33', '1974-01-12 21:16:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (64, 64, 'Eius earum enim vero non molestiae.', 847, NULL, 8, '2013-11-23 19:22:23', '1984-12-17 12:15:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (65, 65, 'Est sint adipisci voluptate adipisci distinctio.', 65073077, NULL, 5, '1978-05-23 21:11:05', '2012-06-26 07:29:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (66, 66, 'Porro voluptate vel rerum autem.', 60, NULL, 9, '1997-05-03 02:50:11', '2001-02-19 08:28:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (67, 67, 'Delectus eius harum magnam libero non velit.', 89436, NULL, 7, '1989-04-30 01:49:33', '2019-11-25 16:30:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (68, 68, 'Sint tenetur laborum cumque ullam animi saepe facilis aut.', 6, NULL, 9, '2004-11-23 02:35:35', '1974-01-20 20:31:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (69, 69, 'Aut nobis doloremque itaque sunt veniam praesentium.', 338, NULL, 0, '1980-01-30 20:01:34', '1992-10-09 21:18:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (70, 70, 'Sed cum et et suscipit sint quia harum.', 212170, NULL, 4, '1980-11-11 22:10:43', '1972-10-25 02:58:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (71, 71, 'Reiciendis voluptatum a perspiciatis velit recusandae vel.', 2260150, NULL, 4, '2005-11-08 07:52:51', '1995-11-08 13:00:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (72, 72, 'Fuga sed ad laboriosam veritatis nisi.', 11219028, NULL, 1, '2015-09-05 18:40:01', '2016-06-10 12:16:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (73, 73, 'Neque iste voluptatum et veritatis in.', 434457, NULL, 8, '1981-01-06 23:42:39', '2014-02-28 14:48:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (74, 74, 'Et possimus similique distinctio.', 0, NULL, 6, '2002-08-12 03:42:40', '2018-07-06 22:51:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (75, 75, 'Vitae ducimus quisquam numquam sunt nostrum sunt numquam similique.', 941413, NULL, 6, '2019-11-20 09:03:41', '2013-10-02 13:19:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (76, 76, 'Nemo saepe maxime provident atque et aspernatur qui.', 0, NULL, 4, '2012-08-28 08:29:48', '2011-08-01 19:38:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (77, 77, 'Adipisci officia eum voluptas magni accusantium.', 412, NULL, 4, '2001-03-18 16:02:22', '1999-02-24 15:33:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (78, 78, 'Impedit voluptatum assumenda saepe laboriosam ut.', 685429, NULL, 9, '2013-01-02 17:13:48', '2015-04-19 05:40:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (79, 79, 'Delectus dolor expedita temporibus at officia.', 0, NULL, 5, '1982-05-06 19:37:43', '1971-06-19 04:37:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (80, 80, 'Error nulla tenetur rerum.', 596, NULL, 6, '1999-03-25 21:10:20', '2014-09-19 07:03:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (81, 81, 'Consequatur molestias ab dolores quasi eligendi.', 0, NULL, 5, '2001-06-07 20:23:31', '1999-05-29 11:24:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (82, 82, 'Sapiente inventore et pariatur aspernatur et blanditiis eos quia.', 56, NULL, 8, '2000-01-25 12:06:56', '2019-10-04 23:27:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (83, 83, 'Maxime quasi hic et.', 327, NULL, 0, '1996-01-05 11:18:06', '1991-01-28 08:58:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (84, 84, 'Eius quo a placeat maiores qui omnis porro voluptate.', 29885195, NULL, 6, '1974-04-14 13:49:05', '1988-03-09 19:49:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (85, 85, 'Repudiandae aut eos eum fugiat.', 77970, NULL, 2, '2018-05-08 08:22:12', '2020-05-03 20:31:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (86, 86, 'Error ex optio earum est omnis incidunt tempora modi.', 939034419, NULL, 9, '1987-12-03 10:53:39', '1994-06-14 02:53:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (87, 87, 'Inventore magnam est laudantium quam voluptatem.', 72, NULL, 7, '1992-05-09 02:36:36', '2012-12-29 05:55:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (88, 88, 'At animi nemo nesciunt placeat accusantium et magni.', 344841, NULL, 9, '1973-10-10 09:26:45', '2002-05-09 02:18:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (89, 89, 'Iste aut placeat blanditiis ut.', 8882, NULL, 7, '1980-08-14 22:19:21', '2005-08-24 09:34:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (90, 90, 'Accusantium officia corrupti enim.', 387091211, NULL, 9, '1979-10-18 04:09:02', '1973-09-29 00:15:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (91, 91, 'Ipsam qui omnis voluptatem dolores quis autem.', 3, NULL, 4, '1999-01-25 23:53:01', '1990-02-06 00:45:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (92, 92, 'Doloribus fugiat dolorem ut suscipit veritatis culpa.', 0, NULL, 4, '2006-12-20 01:31:54', '2002-02-15 18:29:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (93, 93, 'Ut cumque adipisci nulla.', 54, NULL, 1, '2019-07-05 04:25:32', '2016-07-12 05:32:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (94, 94, 'In velit et expedita omnis.', 23, NULL, 1, '1997-11-17 07:32:41', '2017-06-28 14:41:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (95, 95, 'Ducimus vel ut qui perspiciatis fugiat in sint.', 753, NULL, 7, '1989-03-14 04:05:18', '1987-07-06 14:40:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (96, 96, 'Qui suscipit modi non voluptas et reprehenderit quasi.', 1, NULL, 3, '1978-10-24 07:36:13', '1981-01-14 12:51:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (97, 97, 'Temporibus aut fuga et sed sunt.', 99, NULL, 7, '2011-01-16 02:52:41', '1984-05-02 04:50:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (98, 98, 'Omnis ducimus laboriosam dolorem quo et.', 182026428, NULL, 9, '2008-11-14 22:51:46', '2014-11-18 13:01:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (99, 99, 'Magnam dolor perferendis assumenda consequatur.', 439802, NULL, 1, '1988-06-08 16:58:34', '2008-11-10 11:42:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `mediafile_type`, `created_at`, `updated_at`) VALUES (100, 100, 'Voluptatum quisquam impedit sit quis impedit ut voluptatem.', 64, NULL, 1, '1971-03-07 17:33:34', '2008-04-19 23:19:36');

-- Таблица типов медиафайлов
DROP TABLE IF EXISTS media_types; 
CREATE TABLE IF NOT EXISTS media_types (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT " Идентификатор строки",
	name VARCHAR(255) NOT NULL UNIQUE COMMENT " Название типа медиафайла",
	created_at DATETIME DEFAULT NOW()COMMENT "Время создания строки",
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
);

INSERT INTO `media_types` VALUES (1,'image','2020-09-08 21:14:25','2020-09-08 21:14:25'),(2,'video','2020-09-08 21:14:25','2020-09-08 21:14:25'),(3,'audio','2020-09-08 21:14:25','2020-09-08 21:14:25');