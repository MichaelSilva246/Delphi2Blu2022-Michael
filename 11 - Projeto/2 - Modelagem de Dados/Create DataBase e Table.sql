CREATE SCHEMA devsbets;

USE devsbets;

CREATE TABLE users 
( 
 id INT unsigned PRIMARY KEY AUTO_INCREMENT,  
 name VARCHAR(100) NOT NULL,  
 status tinyint(1) unsigned NOT NULL DEFAULT '1',  
 password VARCHAR(50) NOT NULL,  
 login VARCHAR(50) NOT NULL,   
 UNIQUE (login)
); 

CREATE TABLE teams 
( 
 id INT unsigned PRIMARY KEY AUTO_INCREMENT,  
 name VARCHAR(50) NOT NULL,
 unique (name)  
); 

CREATE TABLE bets 
( 
 id INT unsigned PRIMARY KEY AUTO_INCREMENT,  
 result_team_a smallint unsigned NOT NULL,  
 result_team_b smallint unsigned NOT NULL,  
 status tinyint(1) unsigned NOT NULL DEFAULT '1',  
 id_user INT unsigned NOT NULL,  
 id_match INT unsigned NOT NULL,
 unique (id_user, id_match) 
); 

CREATE TABLE matchs 
( 
 id INT unsigned PRIMARY KEY AUTO_INCREMENT,  
 date DATE NOT NULL,  
 hour TIME NOT NULL,  
 result_team_a INT unsigned,  
 result_team_b INT unsigned,  
 status tinyint(1) unsigned NOT NULL DEFAULT '1',  
 id_team_a INT unsigned NOT NULL,  
 id_team_b INT unsigned NOT NULL  
); 

ALTER TABLE Bets ADD FOREIGN KEY(id_user) REFERENCES Users (id);
ALTER TABLE Bets ADD FOREIGN KEY(id_match) REFERENCES Matchs (id);
ALTER TABLE Matchs ADD FOREIGN KEY(id_team_a) REFERENCES Teams (id);
ALTER TABLE Matchs ADD FOREIGN KEY(id_team_b) REFERENCES Teams (id);


