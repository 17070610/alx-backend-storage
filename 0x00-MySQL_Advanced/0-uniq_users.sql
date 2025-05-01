-- Creates a table users with these attributes:
-- @id: int, not NULL, auto increment primary Key
-- @email: string(255 char), not NULL and unique
-- @name: string(255char)

CREATE TABLE USERS IF NOT EXIST(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255)
)
