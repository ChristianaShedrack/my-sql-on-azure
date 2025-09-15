CREATE DATABASE testdb;
USE testdb;
CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  email VARCHAR(50)
);
INSERT INTO users (name, email) VALUES ('Christy', 'c@example.com');
SELECT * FROM users;
