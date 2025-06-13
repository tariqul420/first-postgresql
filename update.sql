SELECT * FROM users;

-- update and alter

-- ? update
-- update table_name set column1 = 'value' where id = 1;

update users SET name = 'Tariqul Islam', email = 'tariqul@gmail.com' WHERE id = 1;

SELECT * FROM users WHERE id = 1;

-- ALTER (table related update)
-- table name rename, column name, add column drop column, 

-- ? Change column name (rename column)
ALTER TABLE users RENAME COLUMN username to user_name;
ALTER TABLE users RENAME COLUMN contactno to contact_no;


-- ? ADD a new column in table
ALTER TABLE users ADD COLUMN photo_url VARCHAR(250);

ALTER TABLE users ADD COLUMN hobby VARCHAR (50) NOT NULL DEFAULT 'coding';

-- ? rename table name
ALTER TABLE users RENAME to customers;

-- ? drop column
ALTER TABLE users DROP COLUMN photo_url;