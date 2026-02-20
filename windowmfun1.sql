USE sakila;

SHOW TABLES;

SELECT * FROM actor;

SELECT first_name, last_name,
       ROW_NUMBER() OVER (ORDER BY first_name) AS row_12
FROM actor;
SELECT first_name, last_name,
RANK() OVER (ORDER BY first_name) AS rank_no
FROM actor;
SELECT first_name, last_name,
DENSE_RANK() OVER (ORDER BY first_name) AS drank_no
FROM actor;
select*from actor;
