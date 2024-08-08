-- ------------------------- table1 -----------------------------------
drop table if exists movie;

create table movie(
ID smallint not null PRIMARY KEY,
title varchar (100) not null,
year smallint  not null,
date_published date not null,
duration smallint not null,
country varchar(100) not null,
worldwide_gross_income decimal(20,2) ,
languages varchar(100),
production_company varchar(100));

insert into movie values(1,'A Matter of Life and Death', 2017,'2017-12-08',104,'UK', 124241 ,'English','The Archers'),
 (2,'Atomic Blonde',2017,'2017-08-09',115,'USA',100121713,'English','87Eleven'),
 (3,'Welcome to New York',2018,'2018-2-28',118,'India',214939 ,'Hindi','Indo-UK Film Company'),
 (4,'Hotel Artemis',2018,'2018-03-20',94,'UK',13313581,'English','The Ink Factory'),
 (5,'Padman',2018,'2018-2-9',140,'India',27258765,'Hindi','Mrs Funnybones Movies'),
 (6,'I Can Only Imagine',2018,'2018-3-16',110,'USA',85978248,'English','Kevin Downes Productions'),
 (7,'Fast & Furious',2019,'2019-1-8',137,'USA',758910100,'English','Chris Morgan Productions'),
 (8, 'The Gatehouse',2017,'2017-12-04',97,'UK',null,'English','Lost Eye Films'),
 (9, 'In Dubious Battle',2017,'2017-02-17',110,'USA','213982','English','Thats Hollywood'),
 (10, 'The Last of Us',2017,'2017-04-05',95,'Tunisia, Qatar, United Arab Emirates, Lebanon',null,'None','Exit Productions'),
 (11, 'Criando ratas',2017,'2017-01-07',78,'Spain',null,'Spanish',null),
 (12, 'Victor',2017,'2017-03-24',105,'USA','117755','English','GW Films'),
 (13, 'The Night Is Young',2017,'2017-01-10',91,'USA',null,'English',null),
 (14, 'Date of the Dead',2017,'2017-08-17',98,'USA',null,'English','Double Bastard Films'),
 (15,'Zombieworld',2017,'2017-12-26',100,'USA',null,'English','Dread Central Media'),
 (16, 'Rosa Chumbe',2017,'2017-06-08',75,'Peru',null,'Spanish','Yin Zhang Films'),
 (17, 'Tercer grado',2017,'2017-03-30',80,'Spain','2009','Spanish','Breaking Pictures'),
 (18, 'The Lost City of Z',2017,'2017-03-24',141,'USA','19263938','English','Keep Your Head'),
 (19, 'Fallen',2017,'2017-03-10',91,'UK, Hungary','578927','English','Apex Entertainment'),
 (20,'Life and Nothing More',2017,'2017-12-01',114,'Spain, USA','40581','English','Aquí y Allí Films'),
 (21, 'The Great Wall',2017,'2017-02-17',103,'USA, China, Hong Kong, Australia, Canada','334933831','English, Mandarin, Spanish','Legendary East'),
 (22, 'La posesión de Altair',2017,'2017-04-07',82,'Mexico','200362','Spanish','Nemesis'),
 (23, 'The Secret Scripture',2017,'2017-03-24',108,'Ireland','694981','English','Screen Ireland'),
 (24, 'Sing',2017,'2017-01-27',108,'Japan, USA','634151679','English, Japanese, Ukrainian','Dentsu'),
 (25, 'Suntan',2017,'2017-04-28',104,'Greece, Germany','157267','Greek, English','Faliro House Productions'),
 (26, 'Noces',2017,'2017-02-22',98,'Belgium, Pakistan, Luxembourg, France','634861','French, Urdu','Daylight Films'),
 (27, 'Na Maloom Afraad 2',2017,'2017-09-01',118,'Pakistan','23124','Urdu','Excellency Films'),
 (28, 'Desearás al hombre de tu hermana',2017,'2017-10-05',93,'Argentina','442472','Spanish','Aleph Media'),
 (29, 'Kunju Daivam',2018,'2018-02-16',153,'India',null,'Malayalam','Cinema Cooks'),
 (30,'Parwaaz Hai Junoon',2018,'2018-08-22',130,'Pakistan','261304','Urdu, Pushto','MD productions'),
 (31,'Hou lai de wo men',2018,'2018-04-28',120,'China','209221380','Mandarin',null),
 (32, 'Parey Hut Love',2019,'2019-08-12',139,'Pakistan','67194','Urdu','The Vision Factory Films'),
 (33, 'Sherdil',2019,'2019-03-22',148,'Pakistan','29961','Urdu','NK Pictures'),
 (34, 'Die Kinder der Toten',2019,'2019-04-05',90,'Austria',null,'German','Ulrich Seidl Filmproduktion'),
 (35,'Dolceroma',2019,'2019-04-04',105,'Italy','240651','Italian','Casanova Multimedia'),
 (36, 'Eonni',2019,'2019-01-01',94,'South Korea','1558387','Korean','Filma Pictures'),
 (37, 'Gini Helida Kathe',2019,'2019-01-11',138,'India',null,'Kannada',null),
 (38, 'Ardaas Karaan',2019,'2019-07-19',140,'India','751421','Punjabi','Humble Motion Pictures'),
 (39, 'Geukhanjikeob',2019,'2019-01-23',111,'South Korea','119932733','Korean, Mandarin','About Film'),
 (40, 'Malmoi',2019,'2019-01-09',135,'South Korea','21083522','Korean, Japanese','The Lamp'),
 (41, 'Öldür Beni Sevgilim',2019,'2019-03-01',104,'Turkey','1767858','Turkish','BKM Film'),
 (42, 'Castle of Dreams',2019,'2019-07-24',86,'Iran',null,'Persian',null),
 (43, 'The Dude in Me',2019,'2019-01-09',122,'South Korea','14569310','Korean',null),
 (44, 'Sadako',2019,'2019-05-24',99,'Japan','5397913','Japanese','Kadokawa'),
 (45, 'The Odd Family: Zombie on Sale',2019,'2019-02-13',112,'South Korea','1949681','Korean','Cinezoo'),
 (46, 'Kanpuriye',2019,'2019-10-25',103,'India',null,'Hindi','Saregama India'),
 (47, 'Adventures of Aladdin',2019,'2019-05-13',87,'USA',null,'English','The Asylum'),
 (48, 'Porinju Mariam Jose',2019,'2019-08-23',148,'India','544889','Malayalam','David Kachappilly Productions'),
 (49, 'Krasue: Inhuman Kiss',2019,'2019-03-14',122,'Thailand','171229','Thai','Nakid'),
 (50, 'Misteri Dilaila',2019,'2019-02-21',82,'Malaysia',null,'Malay, English','Skop Productions Sdn. Bhd.'),
 (51,'Fei fen shu nü',2019,'2019-04-04',108,'Hong Kong','459289',null,'Emperor Film Production'),
 (52, 'Kaijû no kodomo',2019,'2019-06-07',110,'Japan','2769725','Japanese','Studio 4°C'),
 (53, 'Sokagin Çocuklari',2019,'2019-03-15',98,'Turkey','2833','Turkish','Gizem Ajans')
 ;

select * from movie;

desc movie;
-- ------------------table2------------------
drop table if exists genre;

create table genre(
movie_id smallint not null ,
genre varchar(20) not null,
foreign key(movie_id) references movie(ID));

insert into genre values(1,'Comedy'),(1, 'Drama'), (1,'Fantasy'),(2,'Action'),(2,'Thriller'),(2, 'Mystery'),
(3,'Drama'),(3, 'Comedy'),(4,'Action'),(4, 'Drama'),(4,'Crime'),(5,'Comedy'),(5, 'Drama'),(5 ,'Family'),(6,'Family'),(6,'Drama'),
(7,'Action'),(7,'Adventure'),(8,'Fantasy'),(8,'Drama'),(8,'Adventure'),(9,'Drama'),(9,'Crime'),(10,'Adventure'),(10,'Fantasy'),
(10,'Drama'),(11,'Drama'),(12,'Drama'),(12,'Crime'),(13,'Romance'),(13,'Comedy'),(14,'Horror'),(14,'Comedy'),(15,'Horror'),(15,'Comedy'),
(16,'Drama'),(17,'Romance'),(17,'Drama'),(17,'Action'),(18,'Drama'),(19,'Fantasy'),(19,'Drama'),(19,'Adventure'),(20,'Drama'),(21,'Fantasy'),
(21,'Adventure'),(21,'Action'),(22,'Sci-Fi'),(22,'Mystery'),(22,'Horror'),(23,'Romance'),(23,'Drama'),(24,'Family'),(24,'Comedy'),(25,'Drama'),
(26,'Drama'),(27,'Crime'),(27,'Comedy'),(27,'Action'),(28,'Romance'),(28,'Drama'),(28,'Comedy'),(29,'Drama'),(30,'Romance'),(30,'Action'),
(31,'Romance'),(31,'Drama'),(32,'Romance'),(32,'Drama'),(32,'Comedy'),(33,'Romance'),(33,'Drama'),(33,'Action'),(34,'Mystery'),(35,'Crime'),
(35,'Comedy'),(36,'Action'),(37,'Drama'),(38,'Drama'),(39,'Crime'),(39,'Comedy'),(39,'Action'),(40,'Drama'),(40,'Comedy'),(41,'Romance'),
(41,'Comedy'),(42,'Drama'),(43,'Fantasy'),(43,'Comedy'),(44,'Horror'),(45,'Horror'),(45,'Comedy'),(46,'Drama'),(47,'Fantasy'),(47,'Adventure'),
(48,'Drama'),(48,'Comedy'),(48,'Action'),(49,'Romance'),(49,'Horror'),(49,'Drama'),(50,'Thriller'),(50,'Horror'),(51,'Drama'),
(52,'Fantasy'),(52,'Adventure'),(53,'Family'),(53,'Drama');

select * from genre;

desc genre;
-- ------------------table3-----------------

drop table if exists names;

create table names(
name_id varchar(20) not null,
Name varchar(50) not null,
Height smallint ,
date_of_birth date ,
movie_id smallint,
foreign key(movie_id) references movie(id));

insert into names values('nm01','Michael Powell',188,'1905-09-30',1),('nm15','Robert Coote',200,'1909-02-04',1),
('nm02','Vladimir Vysotskiy',81,'1938-01-25',2),('nm16','Antony Johnston',null,null,2),('nm03','Divya Sethi',165,'1975-04-16',3),('nm17','Jodie Foster',null,'1963-11-19',4),
('nm18','Sofia Boutella',null,'1982-04-03',4),('nm03','Akshay Kumar',null ,'1967-09-09',5),('nm19','Radhika Apte',null ,'1985-09-07',5),('nm06','Trace Adkins',198,'1962-01-13',6),
('nm92','David Leitch',200,'1975-11-16',7),('nm04','Martin Gooch',null,'1972-09-06',8),('nm05','James Franco', null, '1978-04-19',9),('nm13','Scarlett Rayner',170,null,10),
('nm14','Simeon Wills',180,'1879-12-01',10),('nm07','Ramón Guerrero',null,null,11),('nm08','Carlos Victoria',null,null,11),('nm09','Ángel Flores',null,null,11),
('nm10','Antonio Lillo',null,null,11),('nm20','Parry Shen',null,'1973-06-26',12),('nm21','Kane Hodder',null,'1955-04-08',12),('nm11','Louise Griffiths',84,'1978-07-31',13),
('nm12','Grant Nelson',null,null,14),('nm29','Bill Oberst Jr.',null,'1965-11-21',15),('nm30', 'Kevin Allen-Bicknell',null,null,15),('nm22','Liliana Trujillo',null,null,16),
('nm23','Franco Diaz',null,null,16),('nm24','Sara Casasnovas',null,'1984-05-03',17),('nm25','Sienna Miller',84,'1981-12-28',18),('nm26','Addison Timlin',84,'1991-06-29',19),('nm27','Antonio Méndez Esparza',null,null,20),
('nm28','Regina Williams',null,null,20),('nm30','Eddie Peng',76,'1982-03-24',21),('nm31','Cheney Chen',null,'1990-06-28',21),('nm32','Diana Bovio',null,null,22),
('nm36','Theo James',null,'1984-12-16',23),('nm33','Garth Jennings',null,'1905-05-25',24),('nm34','Nick Kroll',84,'1978-06-05',24),('nm35','Beck Bennett','200',null,24),
('nm37' ,'Argyris Papadimitropoulos',null,'1976-07-23',25),('nm41','Morgane de Vargas',null,null,26),
('nm42', 'Fahad Mustafa', null,'1983-06-26',27),('nm43','Hania Amir',null,'1997-02-12',27),('nm44','Javeid Sheikh',null,'1954-10-08',27),('nm38','Juan Sorini',200,null,28),('nm39','Carolina Ardohain',84,'1978-01-17',28),
('nm43','Hania Amir',null,'1997-02-12',30),('nm46','Joju George',null,'1978-10-22',29),('nm47','Hamza Ali Abbasi',null,'1984-06-23',30),('nm48','Ahad Raza Mir',null,'1993-09-29',30),('nm49','Kubra Khan',null,'1993-06-16',30),('nm43','Hania Amir',null,'1997-02-12',32),
('nm49','Rene Liu',200,'1969-06-01',31),('nm50','Shing-Ming Ho',null,null,31),('nm58','Maya Ali', null,'1989-07-27',32),('nm59','Sheheryar Munawar',null,'1988-08-09',32),
('nm51','Mikaal Zulfiqar',200,'1982-09-05',33),('nm52','Sabeeka Imam',200,null,33),('nm53','Hassan Niazi',200,null,33),('nm60', 'Georg Beyer',null,null,34),('nm61', 'Lukas Eigl',null,null,34),
('nm62', 'Lorenzo Richelmy',null,'1990-03-25',35),('nm63', 'Valentina Belle',null,'1992-04-16',35),('nm53','Se-wan Park',200,null,36),('nm54','Si-young Lee',200,'1982-04-17',36),('nm55','Kyeong-Taek Lim',null,null,36),
('nm64', 'Githanjali',null,null,37),('nm65', 'Loki',null,null,37),('nm66','Gippy Grewal',null,'1983-01-02',38),('nm67','Gurpreet Ghuggi',null,'1971-07-19',38),
('nm56','Lee Hanee',200,'1983-03-02',39),('nm57','Byeong-heon Lee',null,null,39),('nm67','Hae-Jin Yoo',null,'1970-01-04',40),('nm68','Kyung-ho Yoon',null,'1980-07-05',40),
('nm79', 'Murat Boz',null, '1980-03-07',41),('nm80', 'Seda Bakan',null, '1985-10-10',41),('nm81', 'Hamed Behdad', null,'1973-11-17',42),('nm82', 'Zhila Shaho', null,'1986-03-13',42),
('nm71','Soo-kyung Lee',null,null,45),('nm70','Soo-min Lee',null,'2001-07-01',43),('nm83','Elaiza Ikeda',null,null,44),('nm84','Takashi Tsukamoto',null,'1982-10=27',44),
('nm71','Soo-kyung Lee',null,null,45),('nm72','Ashish Aryan',null,null,46),
('nm73','Adam Hollick',200,null,47),('nm74','Lucia Dimitra Xypteras',null,null,47),('nm46','Joju George',null,'1978-10-22',48),('nm85','Chemban Vinod Jose',null,'1976-05-24',48),
('nm75','Surasak Wongthai',null,null,49),('nm76','Sitisiri Mongkolsiri',null,null,49),('nm77','Oabnithi Wiwattanawarang',null,null,49),('nm86', 'Zul Ariffin',null,null,50),('nm87', 'Elizabeth Tan',null,null,50),
('nm88', 'Chatrlene Choi', null,'1982-11-22',51),('nm89', 'Kang Ren Wu', null,'1982-11-24',51),('nm78','Ayumu Watanabe',null,null,52),
('nm90', 'Ahment Faik Akinci',null,'1956-01-01',53),('nm91', 'Belma Mamati',null,null,53);


select * from names;

desc names;
-- ---------------------------------table4---------------------
drop table if exists director_mapping;

create table director_mapping(
movie_id smallint not null,
name_id varchar(20) not null,
foreign key(movie_id) references movie(id));

insert into director_mapping values(14,'nm12'),(24,'nm33'),(25,'nm37'),(31,'nm49'),(31,'nm50'),(36,'nm55'),(39,'nm57'),(46,'nm72'),(49,'nm75'),(49,'nm76'),(52,'nm78');


select * from director_mapping;

desc director_mapping;

-- ----------------------table5 ------------------------------------
drop table if exists role_mapping;

create table role_mapping(
movie_id smallint not null,
name_id varchar(20) not null,
category varchar(20) ,
foreign key(movie_id) references movie(id));

insert into role_mapping values(1,'nm01','Actor'), (1,'nm15','Actor'),(2,'nm02', 'Actor') ,(2,'nm16','Actor'),(3,'nm03','Actress'),(4,'nm17','Actress'), (4,'nm18','Actress'),(5,'nm03','Actor') ,(5,'nm19','Actress'),
(6,'nm06','Actor'),(7,'nm92','Actor'),(8,'nm04','Actor'),(9,'nm05','Actor'),(10,'nm13','Actress'),(10,'nm14','Actor'),
(11,'nm07','Actor'), (11,'nm08','Actor') , (11,'nm09','Actor') , (11,'nm10','Actor') ,(12,'nm20','Actor'), (12,'nm21','Actor') ,(13,'nm11','Actress'),(15,'nm29','Actor'), (15,'nm30','Actor'),
(16,'nm22','Actress'), (16,'nm23','Actor'), (17,'nm24','Actress'),(18,'nm25','Actress'),(19,'nm26','Actress'),(20,'nm27','Actor'), (20,'nm28','Actress'),
(21,'nm30','Actor'), (21,'nm31','Actor') ,(22,'nm32','Actress'),(23,'nm36','Actor'),(24,'nm34','Actor'), (24,'nm35','Actress') ,
(26,'nm41','Actress'),(27,'nm42','Actor'), (27,'nm43','Actress') , (27,'nm44','Actor') ,(28,'nm38','Actor'), (28,'nm39','Actress'), (29,'nm45','Actor'), (29,'nm46','Actor'),(30,'nm47','Actor'), (30,'nm48','Actor'), (30,'nm49','Actress'), (30,'nm43','Actress'),
(32,'nm58','Actress'), (32,'nm59','Actor'),(33,'nm52','Actress'), (33,'nm53','Actor'),(33,'nm51','Actor'),(34,'nm60','Actor'), (34,'nm61','Actress'),(35,'nm62','Actor'),(35,'nm63','Actress'),
(36,'nm53','Actress'),(36,'nm54','Actress'),(37,'nm64','Actress'),(37,'nm65','Actor'),(38,'nm66','Actor'), (38,'nm67','Actor'), (39,'nm56','Actress'),(40,'nm67','Actor'), (40,'nm68','Actor'),
(41,'nm79','Actor') ,(41,'nm80','Actress'),(42,'nm81','Actor'), (42,'nm82','Actress') ,(43,'nm69','Actor') ,(43,'nm70','Actress'),(44,'nm83','Actress') ,(44,'nm84','Actor'),(45,'nm71','Actress'),
(46,'nm72','Actor'),(47,'nm73','Actor') ,(47,'nm74','Actress'),(48,'nm46','Actor') ,(48,'nm85','Actor'),(49,'nm77','Actor'),(50,'nm86','Actor'), (50,'nm87','Actress'),
(51,'nm88','Actress'), (51,'nm89','Actor'),(53,'nm90','Actor') ,(53,'nm91','Actress');

select * from role_mapping;

desc role_mapping;

-- ----------------tabl6-------------------------------

drop table  if exists rating;

create table rating(
movie_id smallint not null,
avg_rating smallint ,
total_votes int,
median_rating smallint,
foreign key (movie_id) references movie(id));

insert into rating values(1 , 8.1 , 17693 , 8),(2,6.7,158473,7),(3,1.9,388,1),(4,6.1,35155,6),
(5,8,17267,8),(6,7.4,12244,8),(7,6.5,106848,9),(8,5,158,5),(9,6.1,3333,6),(10,6.4,130,7),(11,6.6,114,7),(12,6.6,216,7),(13,5.6,229,6),(14,4.1,106,4),(15,3.4,784,3),
(16,6.7,116,7),(17,5.8,213,6),(18,6.6,69528,7),(19,5.4,12276,6),(20,6.4,401,7),(21,5.9,115603,6),(22,5.5,344,7),(23,6.7,5508,7),(24,7.1,120905,7),(25,6.6,4968,7),
(26,7.2,1187,7),(27,6.9,976,8),(28,3.9,1071,4),(29,7.9,211,10),(30,8.3,1287,10),(31,7.3,1869,8),(32,7,422,8),(33,7,305,10),(34,5.8,120,6),(35,5.9,188,6),(36,5.2,265,6),
(37,9.8,425,10),(38,9.2,1286,10),(39,7.1,2765,7),(40,6.1,127,7),(41,4.5,786,5),(42,6.7,174,7),(43,6.7,475,7),(44,4.4,122,4),(45,6.6,262,7),(46,6.3,286,7),(47,1.7,998,1),
(48,7.1,378,8),(49,6.6,867,7),(50,5.7,121,6),(51,4.9,167,5),(52,6.6,339,7),(53,7.2,190,10);

select * from rating;

desc rating;

-- ALL TABLES NAMES---
show tables in dbmovies;


drop table if exists oldmovie;

create table oldmovie(
userid varchar(80),
id smallint,
title varchar (100) not null,
year smallint  not null,
date_published date not null,
duration smallint not null,
country varchar(100) not null,
worldwide_gross_income decimal(20,2) ,
languages varchar(100),
production_company varchar(100),
insertime datetime);


select * from oldmovie;


-- ---------------------------------TRIGGER AFTER INSERT WITH TABLE RECORD---------------------------------------

-- Trigger after insert,keep insert records,time and userid in newmovie table 

drop table if exists  newmovie;

create table newmovie(
userid varchar(80),
ID smallint not null ,
title varchar (100) not null,
year smallint  not null,
date_published date not null,
duration smallint not null,
country varchar(100) not null,
worldwide_gross_income decimal(20,2) ,
languages varchar(100),
production_company varchar(100),
insertime datetime);

select * from newMovie;