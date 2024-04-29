-- Instructions

-- Select all the actors with the first name ‘Scarlett’.
SELECT *
FROM SAKILA.ACTOR
WHERE FIRST_NAME = 'Scarlett';

-- Select all the actors with the last name ‘Johansson’.
SELECT *
FROM SAKILA.ACTOR
WHERE LAST_NAME = 'Johansson';

-- How many films (movies) are available for rent?
SELECT COUNT(DISTINCT FILM_ID)
FROM SAKILA.INVENTORY;

-- How many films have been rented?
SELECT COUNT(FILM_ID)
FROM SAKILA.FILM
WHERE RENTAL_DURATION > 0;

-- What is the shortest and longest rental period?
SELECT MAX(RENTAL_DURATION)
FROM SAKILA.FILM;

SELECT MIN(RENTAL_DURATION)
FROM SAKILA.FILM;

-- What are the shortest and longest movie duration? Name the values max_duration and min_duration.
SELECT MIN(LENGTH) AS 'min_duration'
FROM SAKILA.FILM;

SELECT MAX(LENGTH) AS 'max_duration'
FROM SAKILA.FILM;

-- What's the average movie duration?
SELECT AVG(LENGTH)
FROM SAKILA.FILM;

-- What's the average movie duration expressed in format (hours, minutes)?
SELECT AVG(LENGTH)/60
FROM SAKILA.FILM;

-- How many movies are longer than 3 hours?
SELECT COUNT(FILM_ID)
FROM SAKILA.FILM
WHERE LENGTH/60 > 3;

-- Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
SELECT CONCAT(UPPER(LEFT(FIRST_NAME,1)), LOWER(RIGHT(FIRST_NAME,LENGTH(FIRST_NAME)-1))) AS 'FIRST NAME', 
UPPER(LAST_NAME) AS 'LAST NAME', LOWER(EMAIL) AS 'EMAIL'
FROM SAKILA.CUSTOMER;

-- What's the length of the longest film title?
SELECT TITLE AS 'longest film title', LENGTH AS 'length in minutes'
FROM SAKILA.FILM
ORDER BY LENGTH DESC
LIMIT 1;



