CREATE DATABASE catalogue_of_things;

CREATE TABLE books (
  id INT GENERATED ALWAYS AS IDENTITY,
  publish_date DATE,
  label_id INT REFERENCES labels
(id),
  can_be_archived BOOLEAN,
  cover_state VARCHAR
(255),
  publisher VARCHAR
(255),
  PRIMARY KEY
(id)
);

CREATE TABLE labels (
 id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
 color VARCHAR
(255),
 title VARCHAR
(255),
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

    
