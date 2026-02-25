CREATE VIEW v_users_age AS 
SELECT first_name, last_name, age FROM users
WHERE age BETWEEN 20 and 30
ORDER BY age ASC;