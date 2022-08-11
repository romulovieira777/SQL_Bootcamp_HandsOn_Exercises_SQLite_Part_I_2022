DROP TABLE IF EXISTS movie_languages;
DROP TABLE IF EXISTS production_country;
DROP TABLE IF EXISTS movie_genres;
DROP TABLE IF EXISTS country;
DROP TABLE IF EXISTS gender;
DROP TABLE IF EXISTS genre;
DROP TABLE IF EXISTS language;
DROP TABLE IF EXISTS movie;

CREATE TABLE country (
	country_id       INTEGER NOT NULL,
	country_iso_code TEXT,
	country_name     TEXT,
	PRIMARY KEY (country_id)
);

CREATE TABLE gender (
	gender_id INTEGER NOT NULL,
	gender    TEXT,
	PRIMARY KEY (gender_id)
);

CREATE TABLE genre (
  genre_id   INTEGER NOT NULL,
  genre_name TEXT,
  PRIMARY KEY (genre_id)
);

CREATE TABLE language (
	language_id   INTEGER NOT NULL,
	language_code TEXT,
	language_name TEXT,
	PRIMARY KEY (language_id)
);

CREATE TABLE movie (
	movie_id     INTEGER NOT NULL,
	title        TEXT,
	budget       INTEGER,
	homepage     TEXT,
	overview     TEXT,
	popularity   REAL,
	release_date TEXT,
	revenue      INTEGER,
	runtime      INTEGER,
	movie_status TEXT,
	tagline      TEXT,
	vote_average REAL,
	vote_count   INTEGER,
	PRIMARY KEY (movie_id)
);

CREATE TABLE movie_languages (
	movie_id    INTEGER,
	language_id INTEGER,
	PRIMARY KEY (movie_id, language_id),
	FOREIGN KEY (movie_id) REFERENCES movie (movie_id),
	FOREIGN KEY (language_id) REFERENCES language (language_id)
);

CREATE TABLE production_country (
	movie_id   INTEGER,
	country_id INTEGER,
	PRIMARY KEY (movie_id, country_id),
	FOREIGN KEY (movie_id) REFERENCES movie (movie_id),
	FOREIGN KEY (country_id) REFERENCES country (country_id)
);

CREATE TABLE movie_genres (
	movie_id INTEGER,
	genre_id INTEGER,
	PRIMARY KEY (movie_id, genre_id),
	FOREIGN KEY (movie_id) REFERENCES movie (movie_id),
	FOREIGN KEY (genre_id) REFERENCES genre (genre_id)
);

-- country
INSERT INTO country VALUES (139,'BR','Brazil');
INSERT INTO country VALUES (150,'CZ','Czech Republic');
INSERT INTO country VALUES (151,'DE','Germany');
INSERT INTO country VALUES (152,'DK','Denmark');
INSERT INTO country VALUES (158,'ES','Spain');
INSERT INTO country VALUES (161,'FR','France');
INSERT INTO country VALUES (162,'GB','United Kingdom');
INSERT INTO country VALUES (171,'IN','India');
INSERT INTO country VALUES (195,'NZ','New Zealand');
INSERT INTO country VALUES (200,'PL','Poland');
INSERT INTO country VALUES (214,'US','United States of America');

-- gender
INSERT INTO gender VALUES (0,'Unspecified');
INSERT INTO gender VALUES (1,'Female');
INSERT INTO gender VALUES (2,'Male');

-- genre
INSERT INTO genre VALUES (12,'Adventure');
INSERT INTO genre VALUES (14,'Fantasy');
INSERT INTO genre VALUES (16,'Animation');
INSERT INTO genre VALUES (18,'Drama');
INSERT INTO genre VALUES (27,'Horror');
INSERT INTO genre VALUES (28,'Action');
INSERT INTO genre VALUES (35,'Comedy');
INSERT INTO genre VALUES (36,'History');
INSERT INTO genre VALUES (37,'Western');
INSERT INTO genre VALUES (53,'Thriller');
INSERT INTO genre VALUES (80,'Crime');
INSERT INTO genre VALUES (99,'Documentary');
INSERT INTO genre VALUES (878,'Science Fiction');
INSERT INTO genre VALUES (9648,'Mystery');
INSERT INTO genre VALUES (10402,'Music');
INSERT INTO genre VALUES (10749,'Romance');
INSERT INTO genre VALUES (10751,'Family');
INSERT INTO genre VALUES (10752,'War');
INSERT INTO genre VALUES (10769,'Foreign');
INSERT INTO genre VALUES (10770,'TV Movie');

-- language
INSERT INTO language VALUES (24574,'en','English');
INSERT INTO language VALUES (24576,'de','German');
INSERT INTO language VALUES (24579,'fr','French');
INSERT INTO language VALUES (24580,'es','Spanish');
INSERT INTO language VALUES (24595,'it','Italian');
INSERT INTO language VALUES (24596,'nl','Dutch');
INSERT INTO language VALUES (24606,'pl','Polish');

-- movie
INSERT INTO movie VALUES (302699,'Central Intelligence',50000000,'http://www.centralintelligencemovie.com/','After he reunites with an old pal through Facebook, a mild-mannered accountant is lured into the world of international espionage.',45.318703,'2016-06-15',216972543,107,'Released','Saving the world takes a little Hart and a big Johnson',6.20,1650);
INSERT INTO movie VALUES (303858,'Money Monster',27000000,'','Financial TV host Lee Gates and his producer Patty are put in an extreme situation when an irate investor takes over their studio.',38.279458,'2016-05-12',93282604,98,'Released','Not every conspiracy is a theory.',6.50,1068);
INSERT INTO movie VALUES (306745,'Freeheld',7000000,'http://www.freeheld.movie/','New Jersey car mechanic Stacie Andree and her police detective girlfriend Laurel Hester both battle to secure Hester pension benefits after she was diagnosed with a terminal illness.',8.184588,'2015-10-02',573335,103,'Released','A true story of love and injustice.',7.10,164);
INSERT INTO movie VALUES (308467,'Roadside',0,'','Dan Summers and his pregnant wife, Mindy, fight for their lives when they are held hostage in their car by an unseen gunman on the side of a desolate mountain road.',0.160234,'2013-03-01',0,90,'Released','Their fate...is in his hands.',4.20,5);
INSERT INTO movie VALUES (309425,'Do You Believe?',0,'','When a pastor is shaken by the visible faith of a street-corner preacher, he is reminded that true belief always requires action. His response ignites a journey that impacts everyone it touches in ways that only God could orchestrate.',2.470443,'2015-03-20',0,115,'Released','',6.60,48);
INSERT INTO movie VALUES (309503,'Zipper',0,'','Sam Ellis is a man on the rise — a hot-shot federal prosecutor on the cusp of a bright political future. But what was meant to be a one-time experience with an escort turns into a growing addiction — a new demon threatening to destroy his life, family, and career.',8.516229,'2015-08-28',0,103,'Released','Why take the risk',5.50,58);
INSERT INTO movie VALUES (310933,'Bleeding Hearts',0,'','Captured Hearts, an insane serial killer/horror film, is a heart-jumping, heart-crushing - truly demented - roller coaster ride of mystery, violence, sex and gore. With a raging, climatic twist, all hearts end up in one place. And it is not where they are supposed to be.',0.100533,'2013-06-01',0,0,'Released','',2.00,1);

-- movie_languages
INSERT INTO movie_languages VALUES (302699,24574);
INSERT INTO movie_languages VALUES (303858,24574);
INSERT INTO movie_languages VALUES (306745,24574);
INSERT INTO movie_languages VALUES (309425,24574);
INSERT INTO movie_languages VALUES (309503,24574);
INSERT INTO movie_languages VALUES (310933,24574);
INSERT INTO movie_languages VALUES (308467,24574);

-- production_country
INSERT INTO production_country VALUES (302699,214);
INSERT INTO production_country VALUES (303858,214);
INSERT INTO production_country VALUES (306745,214);
INSERT INTO production_country VALUES (309425,214);
INSERT INTO production_country VALUES (309503,214);

-- movie_genres
INSERT INTO movie_genres VALUES (302699,28);
INSERT INTO movie_genres VALUES (302699,35);
INSERT INTO movie_genres VALUES (303858,53);
INSERT INTO movie_genres VALUES (306745,18);
INSERT INTO movie_genres VALUES (306745,10749);
INSERT INTO movie_genres VALUES (308467,18);
INSERT INTO movie_genres VALUES (308467,27);
INSERT INTO movie_genres VALUES (309425,14);
INSERT INTO movie_genres VALUES (309425,18);
INSERT INTO movie_genres VALUES (309503,18);
INSERT INTO movie_genres VALUES (309503,53);
INSERT INTO movie_genres VALUES (310933,27);