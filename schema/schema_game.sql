CREATE DATABASE item;

CREATE TABLE games (
  id INT GENERATED ALWAYS AS IDENTITY,
  publish_date DATE,
  author_id INT REFERENCES authors
(id),
  can_be_archived BOOLEAN,
  multiplayer BOOLEAN
(255),
  last_played DATE
(255),
  PRIMARY KEY
(id)
);

CREATE TABLE Authors (
 id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
 first_name VARCHAR
(255),
 last_name VARCHAR
(255),
 items TEXT
 []
);