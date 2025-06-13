 -- count, average, sum, min , max

 SELECT * FROM users;

 -- ! average
 SELECT ROUND(AVG(age)) FROM users;

 -- ! min
 SELECT MIN(age) FROM users;

 -- ! max
 SELECT MAX(age) FROM users;

 -- ! count
 SELECT COUNT(*) FROM users;

 -- ! sum
 SELECT SUM(age) FROM users;