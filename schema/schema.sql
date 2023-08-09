CREATE DATABASE catalogue_of_things;

CREATE TABLE books (
  id INT GENERATED ALWAYS AS IDENTITY,
  publish_date DATE,
  label_id INT REFERENCES labels(id),
  can_be_archived BOOLEAN,
  cover_state VARCHAR(255),
  publisher VARCHAR(255),
  PRIMARY KEY(id)
);

CREATE TABLE labels (
 id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
 color VARCHAR(255),
 title VARCHAR(255),
 items TEXT
 []
);

CREATE TABLE source
(
    id INT PRIMARY KEY NOT NULL,
    name VARCHAR(100),
    items TEXT
    []
);

    CREATE TABLE movie
    (
        id INT PRIMARY KEY NOT NULL,
        silent BOOLEAN,
        publish_date DATE,
        archived BOOLEAN,
        source_id INT REFERENCES source(id)
    );

CREATE TABLE genre
(
    id INT PRIMARY KEY NOT NULL,
    name VARCHAR(100),
    items TEXT
    []
);
    
    CREATE TABLE music_album
    (
        id INT PRIMARY KEY NOT NULL,
        on_spotify BOOLEAN,
        publish_date DATE,
        archived BOOLEAN,
        genre_id INT REFERENCES genre(id)
    );

    CREATE TABLE games (
  id INT GENERATED ALWAYS AS IDENTITY,
  publish_date DATE,
  author_id INT REFERENCES authors
(id),
  can_be_archived BOOLEAN,
  multiplayer BOOLEAN,
  last_played DATE,
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
