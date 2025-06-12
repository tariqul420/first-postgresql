-- select everything
SELECT * FROM users;

-- selected columns
SELECT id, name, email FROM users;

-- select everything a user whose id is 4
SELECT * FROM users WHERE id = 4;

SELECT name, email FROM users WHERE id = 4;

-- ===============================
-- aliases, distict, and, or, limit, offset, order by

-- aliases (rename columns name)
SELECT name as user_name FROM users;

-- distict (only give unique value)
SELECT DISTINCT name FROM users;

-- and 
SELECT * FROM users WHERE age >= 25 AND district = 'dhaka';

-- or
SELECT * FROM users WHERE age >=25 OR district = 'dhaka';

-- limit and offset(skip)
SELECT * FROM users LIMIT 1 OFFSET 1

-- order by
SELECT * FROM users BY age DESC LIMIT 3 OFFSET 6