SELECT * FROM users;

-- 1) delete all data form table
-- 2) specific record delete
-- 3) multiple record delete
-- 4) drop table

-- ? 2 (specific record delete)
DELETE FROM users WHERE id = 5;

-- ? 3 (multiple record delete)
DELETE FROM users WHERE district = 'Mymensingh';

-- ? 1 (delete all data form table)
DELETE FROM users;

-- ? 4 (drop table)
DROP TABLE users;