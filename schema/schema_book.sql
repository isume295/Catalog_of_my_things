-- to create Database

CREATE DATABASE item;

-- create book table
CREATE TABLE books (
  id INT GENERATED ALWAYS AS IDENTITY,
  publish_date DATE,
  label_id INTEGER,
  can_be_archived BOOLEAN,
  cover_state VARCHAR(255),
  publisher VARCHAR(255),
  ADD CONSTRAINT fk_label
  FOREIGN KEY (label_id)
  REFERENCES label(id),
  PRIMARY KEY(id)
);

CREATE TABLE labels (
 id INT GENERATED ALWAYS AS IDENTITY,
 color VARCHAR(255),
 title VARCHAR(255)
);