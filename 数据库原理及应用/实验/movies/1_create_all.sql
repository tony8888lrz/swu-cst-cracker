-- CREATE SCHEMA `movies`;

-- USE movies;

CREATE TABLE MOVIE
(
title	 		varchar(40) 							NOT NULL,
production_year		smallint 							NOT NULL,
country 		varchar(20)							NOT NULL,
run_time		smallint(4)							NOT NULL,
major_genre	 	varchar(15) 								,
CONSTRAINT pk_movie PRIMARY KEY(title,production_year)
);

CREATE TABLE PERSON
(
id	 		char(8) 							NOT NULL,
first_name		varchar(15) 							NOT NULL,
last_name 		varchar(30)							NOT NULL,
year_born		smallint								,
CONSTRAINT pk_person PRIMARY KEY(id)
);

CREATE TABLE AWARD
(
award_name	 	varchar(40) 							NOT NULL,
institution		varchar(50) 							NOT NULL,
country 		varchar(20)							NOT NULL,
CONSTRAINT pk_award PRIMARY KEY(award_name)
);

CREATE TABLE RESTRICTION_CATEGORY
(
description	 	varchar(20) 							NOT NULL,
country 		varchar(20)							NOT NULL,
CONSTRAINT pk_rc PRIMARY KEY(description,country)
);

CREATE TABLE DIRECTOR
(
id	 		char(8) 							NOT NULL,
title	 		varchar(40) 							NOT NULL,
production_year		smallint 							NOT NULL,
CONSTRAINT pk_director PRIMARY KEY(title,production_year)					,
CONSTRAINT fk_director_1 FOREIGN KEY(title,production_year) REFERENCES MOVIE(title,production_year),
CONSTRAINT fk_director_2 FOREIGN KEY(id) REFERENCES PERSON(id)
);

CREATE TABLE WRITER
(
id	 		char(8) 							NOT NULL,
title	 		varchar(40) 							NOT NULL,
production_year		smallint 							NOT NULL,
credits	 		varchar(40) 								,
CONSTRAINT pk_writer PRIMARY KEY(id,title,production_year)					,
CONSTRAINT fk_writer_1 FOREIGN KEY(title,production_year) REFERENCES MOVIE(title,production_year),
CONSTRAINT fk_writer_2 FOREIGN KEY(id) REFERENCES PERSON(id)
);

CREATE TABLE CREW
(
id	 		char(8) 							NOT NULL,
title	 		varchar(40) 							NOT NULL,
production_year		smallint 							NOT NULL,
contribution		varchar(30) 								,
CONSTRAINT pk_crew PRIMARY KEY(id,title,production_year)					,
CONSTRAINT fk_crew_1 FOREIGN KEY(title,production_year) REFERENCES MOVIE(title,production_year),
CONSTRAINT fk_crew_2 FOREIGN KEY(id) REFERENCES PERSON(id)
);

CREATE TABLE ROLE
(
id	 		char(8) 							NOT NULL,
title	 		varchar(40) 							NOT NULL,
production_year		smallint 							NOT NULL,
description 		varchar(100) 							NOT NULL,
credits	 		varchar(40) 								,
CONSTRAINT pk_role PRIMARY KEY(title,production_year,description)				,
CONSTRAINT fk_role_1 FOREIGN KEY(title,production_year) REFERENCES MOVIE(title,production_year),
CONSTRAINT fk_role_2 FOREIGN KEY(id) REFERENCES PERSON(id)
);

CREATE TABLE SCENE
(
title	 		varchar(40) 							NOT NULL,
production_year 		smallint 							NOT NULL,
scene_no		smallint 							NOT NULL,
description 		varchar(100) 							NOT NULL,
CONSTRAINT pk_scene PRIMARY KEY(title,production_year,scene_no)					,
CONSTRAINT fk_scene_movie FOREIGN KEY(title,production_year) REFERENCES MOVIE(title,production_year)
);

CREATE TABLE RESTRICTION
(
title	 		varchar(40) 							NOT NULL,
production_year		smallint 							NOT NULL,
description 		varchar(20) 							NOT NULL,
country 		varchar(20) 							NOT NULL,
CONSTRAINT pk_restriction PRIMARY KEY(title,production_year,description,country)		,
CONSTRAINT fk_restriction_1 FOREIGN KEY(title,production_year) REFERENCES MOVIE(title,production_year),
CONSTRAINT fk_restriction_2 FOREIGN KEY(description,country) REFERENCES RESTRICTION_CATEGORY(description,country)
);

CREATE TABLE APPEARANCE
(
title	 		varchar(40) 							NOT NULL,
production_year		smallint 							NOT NULL,
description 		varchar(100) 							NOT NULL,
scene_no		smallint  							NOT NULL,
CONSTRAINT pk_appearance PRIMARY KEY(title,production_year,description,scene_no),
CONSTRAINT fk_appearance_1 FOREIGN KEY(title,production_year,description) REFERENCES ROLE(title,production_year,description),
CONSTRAINT fk_appearance_2 FOREIGN KEY(title,production_year,scene_no) REFERENCES SCENE(title,production_year,scene_no)
);

CREATE TABLE MOVIE_AWARD
(
title	 		varchar(40) 							NOT NULL,
production_year		smallint 							NOT NULL,
award_name	 	varchar(40) 							NOT NULL,
year_of_award		smallint 							NOT NULL,
category	 	varchar(100) 							NOT NULL,
result	 		varchar(20) 								,
CONSTRAINT pk_movie_award PRIMARY KEY(title,production_year,award_name,year_of_award,category),
CONSTRAINT fk_movie_award_1 FOREIGN KEY(title,production_year) REFERENCES MOVIE(title,production_year),
CONSTRAINT fk_movie_award_2 FOREIGN KEY(award_name) REFERENCES AWARD(award_name)
);

CREATE TABLE CREW_AWARD
(
id	 		char(8) 							NOT NULL,
title	 		varchar(40) 							NOT NULL,
production_year		smallint 							NOT NULL,
award_name	 	varchar(40) 							NOT NULL,
year_of_award		smallint 							NOT NULL,
category	 	varchar(100) 							NOT NULL,
result	 		varchar(20) 								,
CONSTRAINT pk_crew_award PRIMARY KEY(id,title,production_year,award_name,year_of_award,category),
CONSTRAINT fk_crew_award_1 FOREIGN KEY(id,title,production_year) REFERENCES CREW(id,title,production_year),
CONSTRAINT fk_crew_award_2 FOREIGN KEY(award_name) REFERENCES AWARD(award_name)
);

CREATE TABLE DIRECTOR_AWARD
(
title	 		varchar(40) 							NOT NULL,
production_year		smallint 							NOT NULL,
award_name	 	varchar(40) 							NOT NULL,
year_of_award		smallint 							NOT NULL,
category	 	varchar(100) 							NOT NULL,
result	 		varchar(20) 								,
CONSTRAINT pk_director_award PRIMARY KEY(title,production_year,award_name,year_of_award,category),
CONSTRAINT fk_director_award_1 FOREIGN KEY(title,production_year) REFERENCES DIRECTOR(title,production_year),
CONSTRAINT fk_director_award_2 FOREIGN KEY(award_name) REFERENCES AWARD(award_name)
);

CREATE TABLE WRITER_AWARD
(
id	 		char(8) 							NOT NULL,
title	 		varchar(40) 							NOT NULL,
production_year	 smallint 							NOT NULL,
award_name	 	varchar(40) 							NOT NULL,
year_of_award		smallint 							NOT NULL,
category	 	varchar(100) 							NOT NULL,
result	 		varchar(20) 								,
CONSTRAINT pk_writer_award PRIMARY KEY(id,title,production_year,award_name,year_of_award,category),
CONSTRAINT fk_writer_award_1 FOREIGN KEY(id,title,production_year) REFERENCES WRITER(id,title,production_year),
CONSTRAINT fk_writer_award_2 FOREIGN KEY(award_name) REFERENCES AWARD(award_name)
);

CREATE TABLE ACTOR_AWARD
(
title	 		varchar(40) 							NOT NULL,
production_year		smallint 							NOT NULL,
description 		varchar(20) 							NOT NULL,
award_name	 	varchar(40) 							NOT NULL,
year_of_award		smallint 							NOT NULL,
category	 	varchar(100) 							NOT NULL,
result	 		varchar(20) 								,
CONSTRAINT pk_actor_award PRIMARY KEY(title,production_year,description,award_name,year_of_award,category),
CONSTRAINT fk_actor_award_1 FOREIGN KEY(title,production_year,description) REFERENCES ROLE(title,production_year,description),
CONSTRAINT fk_actor_award_2 FOREIGN KEY(award_name) REFERENCES AWARD(award_name)
);
