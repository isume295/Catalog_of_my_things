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