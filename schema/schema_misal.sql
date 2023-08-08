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
