CREATE DATABASE music_library;
USE music_library


CREATE TABLE artists (
id INT AUTO_INCREMENT PRIMARY KEY,
artist_name VARCHAR(50) NOT NULL,
genre_id INT NOT NULL,
bio VARCHAR(100),
FOREIGN KEY (genre_id) REFERENCES genre(id));


CREATE TABLE genre (
id INT AUTO_INCREMENT PRIMARY KEY,
genre_name VARCHAR(50) NOT NULL,
notes VARCHAR(75),
created_date DATETIME,
modified_date DATETIME);


CREATE TABLE albums (
id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(75) NOT NULL,
artist_id INT,
genre_id INT,
release_year YEAR NOT NULL,
total_tracks INT NOT NULL,
FOREIGN KEY (genre_id) REFERENCES genre(id),
FOREIGN KEY (artist_id) REFERENCES artists(id));

ALTER TABLE albums
ADD COLUMN duration TIME NOT NULL;
