CREATE TABLE Author (
    author_id INT PRIMARY KEY,
    name VARCHAR(255),
    bio TEXT
);

ALTER TABLE Book
ADD COLUMN author_id INT,
ADD FOREIGN KEY (author_id) REFERENCES Author(author_id);
