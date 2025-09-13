CREATE DATABASE IF NOT EXISTS album_ratings;
USE album_ratings;

CREATE TABLE IF NOT EXISTS ratings (
  id INT AUTO_INCREMENT PRIMARY KEY,
  person   TEXT,
  album    TEXT,
  heard_yn TEXT,
  rating   TEXT
);

UPDATE ratings
SET rating = NULL
WHERE rating = 'NA' AND id > 0;

ALTER TABLE ratings
MODIFY COLUMN rating TINYINT;

SELECT * FROM ratings;