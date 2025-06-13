-- Active: 1749742022445@@127.0.0.1@5432@first_db

-- 1. database creation
-- 2. table creation
-- 3. drop database
--4. drop table

-- create a new db
CREATE DATABASE first_db;

-- create a new table
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(30) NOT NULL,
  email VARCHAR(80) UNIQUE NOT NULL,
  age INTEGER,
  contactNo VARCHAR(11) UNIQUE,
  district VARCHAR(50),
  password VARCHAR(255) NOT NULL,
  createdAt TIMESTAMP DEFAULT NOW()
);

CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  userId INT NOT NULL,
  total INT,
  quantity INT
);

-- drop database
DROP DATABASE first_db;

-- drop table
DROP TABLE users;

-- see all user from users table
SELECT * FROM users;

-- ===============================================

-- current database
-- show all database
-- insert data into user table

-- current database
SELECT current_database();

-- show all database
SELECT datname FROM pg_database;

-- insert into table_name (columns) values ()
INSERT INTO users(name, email, age, contactNo, district, password, createdAt) VALUES
('Gianni Antonacci', 'durante62@example.net', 24, '01586717759', 'Khulna', 'Ibu2FRQoG(N1', '2025-06-02 17:54:05'),
('Marta Mantegna', 'mercadantemarta@example.org', 31, '01879333684', 'Rajshahi', '7q1W9SWHuBw#', '2025-03-09 15:58:10'),
('Augusto Chechi', 'rossana05@example.net', 54, '01744561956', 'Mymensingh', '^#Av5UWfnRh7', '2024-10-04 21:50:15'),
('Lucia Pasqua', 'lmazzeo@example.net', 17, '01695911456', 'Barisal', 'Q@dW(W*xV44j', '2024-09-28 10:05:16'),
('Galasso Dossetti', 'gianniferrucci@example.org', 48, '01693421792', 'Dhaka', '&TUBi)@x+)56', '2025-03-14 13:51:25'),
('Beatrice Cardano-Schiavo', 'qtrentini@example.org', 56, '01682302928', 'Dhaka', '!i9XZsY@iMBK', '2025-05-28 05:25:12'),
('Graziella Albertini', 'guinizzellipierangelo@example.com', 56, '01673938651', 'Rajshahi', '3WGv^VEu(gc0', '2024-09-25 08:40:18'),
('Filippa Adinolfi', 'bcagnin@example.net', 47, '01592203236', 'Mymensingh', 'x)Z0pvM54l38', '2025-06-13 07:57:36'),
('Adele Albertini', 'wscotto@example.net', 69, '01599196888', 'Rajshahi', '#0G3NtO5TWpa', '2025-02-16 13:43:53'),
('Giorgia Pennetta', 'lauraruggieri@example.org', 84, '01540527918', 'Barisal', 'uiiLhUh($2g5', '2024-06-25 05:40:54'),
('Dario Schiavo', 'ermannobaglioni@example.com', 3, '01719728696', 'Dhaka', 'MC6Tmen_K(U*', '2025-02-27 01:52:32'),
('Letizia Rossini', 'beppe26@example.com', 34, '01559285561', 'Rangpur', '+i(+zj3GiT3F', '2024-11-08 00:14:58'),
('Tina Ostinelli', 'pomponio99@example.org', 17, '01850393566', 'Rajshahi', '*B8LVae^!cgC', '2024-09-13 14:33:18'),
('Giacinto Munari-Morgagni', 'romitimirko@example.org', 9, '01886940574', 'Chittagong', ')I7pqR%v#4YP', '2024-10-06 16:56:11'),
('Stefania Sagredo', 'giulio71@example.org', 46, '01892979824', 'Khulna', '1&CUhul+&0wl', '2024-07-22 04:30:11'),
('Amleto Bocelli', 'annunziatacampise@example.com', 54, '01886947267', 'Chittagong', '9KiKj3XY*!2&', '2025-05-23 23:16:34'),
('Loretta Morgagni', 'marcelloariosto@example.net', 99, '01684322560', 'Chittagong', 'RR2utlBCUO$A', '2024-11-10 19:10:07'),
('Gabriele Cardano', 'luca84@example.com', 36, '01986728909', 'Barisal', '^2UHYNGv$2av', '2024-08-23 02:43:15'),
('Dott. Stefano Leoncavallo', 'iargentero@example.net', 60, '01683043304', 'Rajshahi', 'gH8JX9rq^0jP', '2025-02-05 18:08:18'),
('Michelotto Rossi', 'adelmodruso@example.net', 44, '01998010961', 'Chittagong', 'i!4ts@mz6ekJ', '2025-03-24 09:07:59'),
('Isa Eco', 'arnaldo55@example.net', 54, '01871273402', 'Dhaka', 'p502KKab!bzX', '2025-05-16 10:11:00'),
('Paolo Interiano', 'elvira26@example.com', 13, '01672859630', 'Rajshahi', '$td$ZW+G0hJu', '2024-12-30 18:00:26'),
('Enzio Cilibrasi', 'barzinitullio@example.org', 74, '01943416154', 'Rajshahi', '6561P9pb)JRX', '2025-01-04 02:10:11'),
('Dott. Fredo Rubbia', 'agazzimaura@example.org', 26, '01658039405', 'Rajshahi', 'm6AnE2QB^Xn@', '2025-03-22 13:41:05'),
('Dott. Napoleone Zacchia', 'zabarellaagnolo@example.net', 94, '01990204238', 'Rangpur', 'DSeO0XeLl3$7', '2025-01-13 22:55:06'),
('Sig. Emilio Silvestri', 'dpisaroni@example.com', 99, '01765309702', 'Barisal', '(@Z9AK!dS*Xu', '2024-12-29 12:20:05'),
('Ezio Tanzini', 'victoria23@example.com', 4, '01919669844', 'Barisal', '#_1oChCm)kf7', '2024-06-20 01:17:47'),
('Dott. Pompeo Einaudi', 'nniggli@example.org', 53, '01890245287', 'Khulna', '6SXRxp(2#2I)', '2025-01-14 03:09:38'),
('Giuseppina Tamborini', 'gsibilia@example.com', 62, '01831407381', 'Sylhet', 'nZA*(5^F^5!w', '2024-06-20 17:07:06'),
('Dott. Flavia Pacetti', 'ernestoabbagnale@example.net', 84, '01897678459', 'Khulna', '(3CWMRpfSaUH', '2025-03-24 11:33:05'),
('Sig. Sebastiano Donà', 'maurizio40@example.com', 40, '01521408936', 'Sylhet', 'X5_12AQn3S#K', '2024-11-13 17:09:12'),
('Dott. Mauro Pertini', 'ermanno44@example.net', 79, '01848160426', 'Khulna', '@ge12OPhRuhz', '2024-09-22 01:36:56'),
('Nicola Micheletti', 'pedersolitullio@example.net', 26, '01782774989', 'Barisal', 'BJ#5s_Rhb&8(', '2025-06-05 10:53:29'),
('Rosina Zaccagnini', 'tozzorenata@example.net', 8, '01510598828', 'Chittagong', '%5EFcMEo6U^d', '2024-10-27 20:15:37'),
('Roman Murri', 'raffaello56@example.com', 58, '01689791372', 'Rangpur', '%Zf%aaXdok%2', '2024-06-27 09:20:38'),
('Sig. Calcedonio Tutino', 'pvespucci@example.org', 100, '01739244851', 'Khulna', 'x+7YXOb1i0i2', '2024-09-26 09:25:53'),
('Nicolò Bragadin', 'benignilazzaro@example.org', 64, '01913887544', 'Barisal', 'pF1pWU@n%I@2', '2025-03-18 00:54:22'),
('Beppe Comboni', 'biagio17@example.org', 7, '01633984814', 'Barisal', 'q3lXij$N1l%*', '2024-12-24 23:51:14'),
('Mauro Basso', 'dbranciforte@example.org', 42, '01591724931', 'Rangpur', 'w!J)wgR$Si0O', '2024-10-24 20:00:13'),
('Alessandro Morrocco', 'gcheda@example.org', 67, '01741147979', 'Mymensingh', '&FVUN8kt51A+', '2025-03-31 15:23:53'),
('Tonia Maderna', 'fvillarosa@example.org', 88, '01538103933', 'Rangpur', 'II8HnOj+*w@O', '2024-12-09 22:05:42'),
('Sig.ra Marissa Soderini', 'donatoludovisi@example.net', 17, '01855255038', 'Rangpur', '%4XHke9^@1_+', '2025-02-03 09:29:31'),
('Alfio Zabarella', 'gozziguido@example.org', 95, '01854630178', 'Barisal', '^O8I78l(*qf1', '2025-04-08 13:33:50'),
('Rosaria Celentano', 'qcalbo@example.net', 57, '01671150233', 'Khulna', '#84cj^dQ98BD', '2025-01-19 13:25:53'),
('Romolo Aloisio', 'vmerisi@example.net', 88, '01611429242', 'Sylhet', '7%sJT2Ul%X+!', '2025-03-11 10:19:11'),
('Sig.ra Bianca Guinizzelli', 'pasquale95@example.com', 30, '01531362641', 'Sylhet', '0(kGlC6v_JJ9', '2024-11-20 05:17:41'),
('Adelasia Endrizzi', 'qfarnese@example.net', 19, '01687512223', 'Barisal', '^2N(jNQyWbZi', '2024-11-25 07:03:26'),
('Germana Ginese', 'ippaziononis@example.org', 28, '01580898379', 'Sylhet', '&nypPiSw9v1%', '2024-12-14 00:18:17'),
('Patrizia Gigli', 'evaromano@example.org', 56, '01983143337', 'Barisal', ')OutnLa$a7KD', '2024-09-27 22:31:00'),
('Licia Cignaroli-Berrè', 'carolina79@example.com', 57, '01853715896', 'Rajshahi', '_k7#Gvg4(KmY', '2024-09-01 21:15:04'),
('Costanzo Bondumier', 'yzichichi@example.org', 88, '01548971528', 'Chittagong', '(tL34Lr2YO5v', '2024-07-26 20:51:21'),
('Michela Cassarà', 'valentina09@example.com', 83, '01737182079', 'Rangpur', '#U7$*T9Q4d^_', '2025-01-13 04:31:01'),
('Gioacchino Pausini', 'lando31@example.com', 20, '01633636883', 'Sylhet', 'ptq@0Tn3JNl&', '2025-01-25 08:19:56'),
('Paola Sforza', 'bartolomeo56@example.net', 22, '01656282047', 'Barisal', '6f8LrL@$K%8f', '2024-11-03 01:14:57'),
('Dott. Claudia Giusti', 'ernestofarinelli@example.com', 88, '01775758288', 'Barisal', '6$7B0praEEMp', '2025-04-05 21:46:51'),
('Adelasia Perini', 'cleliamalipiero@example.net', 50, '01867294517', 'Dhaka', 'N&NZgI2^1S1D', '2024-06-19 10:40:47'),
('Alina Giammusso', 'barcacciamarco@example.net', 74, '01625265768', 'Mymensingh', '@45CAf4X$^lb', '2025-03-07 05:19:03'),
('Marta Correr', 'dbruno@example.com', 4, '01670846058', 'Barisal', '7U13%3h%$3XU', '2024-09-02 22:16:37'),
('Antonina Romiti-Antonetti', 'ferrarilando@example.net', 68, '01542203988', 'Sylhet', 'aE%7jIyk(Wos', '2024-07-08 14:40:06'),
('Marta Solari', 'cristoforettidonna@example.net', 81, '01656783454', 'Mymensingh', '+jEQLX4#7r$S', '2024-06-23 02:08:34'),
('Lucia Casagrande', 'ermanno22@example.net', 80, '01932557055', 'Rajshahi', ')F7QtyiRf64v', '2024-07-03 18:30:54'),
('Bianca Mazzini-Sanguineti', 'gsonnino@example.com', 85, '01516341777', 'Khulna', 'Dr7TNq^UF7z)', '2025-01-05 23:10:57'),
('Agostino Segni', 'ltognazzi@example.org', 79, '01868545517', 'Chittagong', ')a54OYh78EzB', '2024-06-23 19:48:35'),
('Sig. Filippo Pincherle', 'tomeipompeo@example.org', 28, '01748891818', 'Rangpur', '&B5UcNiV7noD', '2024-08-13 18:31:37'),
('Giampiero Benedetti', 'rodolfosalieri@example.com', 11, '01783258344', 'Dhaka', '+dh@Ns$ME36S', '2024-08-26 03:21:53'),
('Lazzaro Trevisani', 'adrianopaltrinieri@example.net', 62, '01933123392', 'Khulna', 'C68w3LIfl*V6', '2025-04-19 07:51:44'),
('Dott. Marissa Catenazzi', 'mazzimichelotto@example.net', 58, '01775062936', 'Rangpur', 'hvZdnLCI$5Gj', '2025-04-10 03:32:58'),
('Sig.ra Barbara Vespucci', 'benitomortati@example.net', 76, '01761132919', 'Chittagong', 'd&NKT0aoWEA8', '2025-03-10 08:04:36'),
('Sig. Raffaello Monduzzi', 'patrizioarmellini@example.com', 69, '01523987797', 'Rangpur', 'q7SG^iib8Xe@', '2025-02-20 15:50:25'),
('Aria Barozzi', 'toninomoresi@example.com', 26, '01562546784', 'Barisal', 'Q557zSUuDC+#', '2025-05-21 21:39:13'),
('Gianpaolo Rossi-Comencini', 'tbrenna@example.net', 61, '01636004654', 'Chittagong', '#$7R#azi6&_4', '2024-12-13 21:39:25'),
('Fortunata Respighi-Busoni', 'irmabongiorno@example.org', 99, '01893646069', 'Rajshahi', 'En@+JpgD200!', '2024-06-15 19:54:25'),
('Annetta Monteverdi-Tozzo', 'petrallirita@example.com', 50, '01548647779', 'Rajshahi', 'caQl$JVgi&!4', '2025-02-13 12:28:39'),
('Ludovica Duse', 'serlupiachille@example.net', 76, '01690267828', 'Barisal', '&whISGmtzb!6', '2025-02-20 01:53:02'),
('Viridiana Mengolo', 'raffaele87@example.org', 26, '01945920715', 'Sylhet', 'f_hmw2wrRRlA', '2024-10-31 05:36:03'),
('Filippo Micca', 'flavio82@example.org', 91, '01536932505', 'Barisal', '^#a4EMRs8OJ6', '2024-09-19 17:35:32'),
('Sig.ra Sonia Trombetta', 'samelechiara@example.com', 33, '01953182540', 'Sylhet', '(%fZgk(8C47U', '2024-12-03 04:59:01'),
('Gianluigi Venditti', 'pbonolis@example.com', 81, '01886365800', 'Mymensingh', '!3$9&g&I#3W$', '2024-12-18 07:57:23'),
('Barbara Cignaroli-Naccari', 'gsandi@example.net', 15, '01564124346', 'Dhaka', ')oVSdxJqq75b', '2024-11-09 15:04:30'),
('Sig. Ricciotti Metella', 'umberto45@example.net', 17, '01931375546', 'Mymensingh', ')4c^uYoT8l&Q', '2024-10-09 11:00:13'),
('Serena Canetta-Camicione', 'xseddio@example.net', 66, '01636285219', 'Rangpur', 'ZAQegyg#@+7L', '2024-10-15 15:17:26'),
('Angelica Maspero', 'melania59@example.org', 60, '01778614309', 'Chittagong', 'D)j^E2WfU(p7', '2025-04-03 19:59:24'),
('Ornella Renault', 'hscandone@example.org', 92, '01817123542', 'Chittagong', 'hcM0O&x1(ROn', '2024-09-09 06:12:25'),
('Baldassare Zabarella', 'eerrani@example.com', 40, '01836072032', 'Chittagong', '%n9IUgLv2s60', '2024-09-16 06:59:02'),
('Romeo Romiti', 'ytosto@example.com', 53, '01834391208', 'Barisal', 'Y29#z^k!x(jO', '2025-04-15 02:03:09'),
('Livia Gabrieli', 'crespipaoletta@example.net', 72, '01888627174', 'Sylhet', 'l_5FnOz#ch&a', '2025-05-31 14:13:10'),
('Viridiana Sbarbaro', 'amleto06@example.net', 10, '01795262833', 'Dhaka', 'VkJ1Csa4Dg!R', '2025-05-28 12:58:53'),
('Nadia Naccari', 'donatella56@example.org', 46, '01983584341', 'Sylhet', 'Q2IXBZtU!t&V', '2024-11-01 19:09:43'),
('Berenice Sanguineti', 'iolanda49@example.org', 20, '01596899044', 'Dhaka', '*4Y+Ooep$5@3', '2024-06-16 23:33:15'),
('Elladio Anichini', 'ieco@example.org', 51, '01731516833', 'Khulna', '&)0Lw!KznA^Y', '2025-03-11 11:58:07'),
('Anita Maccanelli', 'dante05@example.net', 30, '01547802883', 'Chittagong', 'X@*ygwcxfD3&', '2025-02-01 02:44:14'),
('Ilaria Scotti-Schiaparelli', 'kferrante@example.com', 18, '01741240264', 'Chittagong', 'G)r7fxJw#G)3', '2024-09-04 21:11:33'),
('Fernanda Bacosi', 'saulinicola@example.net', 37, '01679227736', 'Dhaka', 'oNH(5Dkrouzh', '2024-10-21 20:37:11'),
('Adelasia Cassarà', 'gradenigololita@example.net', 71, '01786739587', 'Barisal', '^y2jNKgc#@Tv', '2024-12-13 04:23:41'),
('Sig. Nicola Angiolello', 'qpapafava@example.net', 27, '01713033639', 'Rajshahi', 'Uom$Q8CpS1qK', '2024-10-15 08:24:28'),
('Daniele Gori-Scalera', 'grazianovigorelli@example.net', 94, '01779657202', 'Barisal', '$q6REIio(n7M', '2024-09-07 06:18:54'),
('Livia Cassarà', 'dpepe@example.org', 77, '01798672447', 'Chittagong', '@&j*FJj%o9Qk', '2024-10-22 08:07:58'),
('Ricciotti Giannone', 'stefaniatarchetti@example.org', 35, '01693774624', 'Dhaka', 'QIRN#X6d$W4$', '2024-12-16 15:03:50'),
('Lina Pacomio', 'serafinabuscetta@example.com', 26, '01862735764', 'Sylhet', '7+5lLt^gc^lV', '2025-03-26 01:49:22'),
('Dott. Temistocle Cesaroni', 'piacentiniermenegildo@example.net', 77, '01965738508', 'Chittagong', '^Jp2Vo9y6mB$', '2025-03-05 14:52:17');