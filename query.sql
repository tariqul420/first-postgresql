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

-- ! distict (only give unique value)
SELECT DISTINCT name FROM users;

-- ! and 
SELECT * FROM users WHERE age >= 25 AND district = 'Dhaka';

-- ! or
SELECT * FROM users WHERE age > 25 OR district = 'Dhaka';

-- limit and offset(skip)
SELECT * FROM users LIMIT 5 OFFSET 10

-- ! order by
SELECT * FROM users ORDER BY age DESC LIMIT 3 OFFSET 6;


-- LIKE, IN, BETWEEN, IS NULL

-- ! LIKE (last word in name)
SELECT * FROM users WHERE name LIKE '%n';

-- ! IN 
SELECT name, district FROM users WHERE district IN('Dhaka', 'Khulna')

-- ! between
SELECT * FROM users WHERE age BETWEEN 20 AND 30; 

-- ! is NULL
SELECT name, age FROM users WHERE age IS NULL
