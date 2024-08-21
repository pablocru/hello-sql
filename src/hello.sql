CREATE DATABASE IF NOT EXISTS hello_sql
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE hello_sql;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    creation_date DATE
);

INSERT INTO users (name, creation_date)
VALUES ("Pablo", CURDATE());

SELECT * FROM users;
