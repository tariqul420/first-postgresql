-- Active: 1749742022445@@127.0.0.1@5432@first_db

-- 1. database creation
-- 2. table creation
-- 3. drop database
--4. drop table

-- create a new db
CREATE DATABASE first_db;

-- create a new table
CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  name VARCHAR(30) NOT NULL,
  email VARCHAR(80) UNIQUE NOT NULL,
  contactNo VARCHAR(11) UNIQUE,
  password VARCHAR(12) NOT NULL,
  createdAt DATE DEFAULT NOW()
);

-- drop database
DROP DATABASE first_db;

-- drop table
DROP TABLE users;

-- see all user from users table
SELECT * FROM users;

-- ===============================================

-- current database
-- show all database
-- insert data into user table

-- current database
SELECT current_database();

-- show all database
SELECT datname FROM pg_database;

-- insert into table_name (columns) values ()
INSERT INTO users(name, email, contactNo, password) VALUES('Tariqul1', 'tariqul@gmail1.com', '01743892058', '123456'),
('Tariqul2', 'tariqul2@gmail.com', '01743892059', '123456');