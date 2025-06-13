
SELECT * FROM orders;

SELECT * FROM users;

-- get user name and email form order table // who use order the product give there name and email

-- ! inner join
SELECT total, quantity, name, email FROM orders JOIN users ON orders.userId = users.id;

-- ! left join
SELECT total, quantity, name, email FROM orders LEFT JOIN users ON orders.userId = users.id;

-- ! right join
SELECT total, quantity, name, email FROM orders RIGHT JOIN users ON orders.userId = users.id;