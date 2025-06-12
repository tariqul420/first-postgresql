-- Active: 1749729094656@@127.0.0.1@5432@postgres

-- 1. database creation
-- 2. table creation
-- 3. drop database
--4. drop table

-- create a new db
CREATE DATABASE first_db;

-- create a new table
CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  name VARCHAR(30),
  age INT,
  email VARCHAR(80) UNIQUE,
  address TEXT
);

-- see all from users table
SELECT * FROM users;

-- drop data
DROP DATABASE first_db;