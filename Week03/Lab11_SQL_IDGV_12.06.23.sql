USE sakila;

#Exercise 1: Show all tables
SHOW TABLES;

#Exercise 2: Retrieve all the data from the tables actor, film and customer.
SELECT* from actor, film, customer;

SELECT* from actor;

SELECT* from film;

SELECT* from customer;

# Exercise 3: Retrieve the following columns from their respective tables:

#3.1 Titles of all films from the film table

SELECT title FROM film;

#3.2. List of languages used in films, with the column aliased as language from the language table

SELECT* from language;

SELECT name as language from language;

#3.3 List of first names of all employees from the staff table

SELECT first_name  from staff;

#Exercise 4: Retrieve unique release years.
SELECT release_year from film;

SELECT DISTINCT release_year AS unique_release_years FROM film;

#Exercise 5: 
#Counting records for database insights:

#5.1 Determine the number of stores that the company has.

SELECT COUNT(*) AS store_count FROM store;



#5.2 Determine the number of employees that the company has.
SELECT COUNT(*) AS employees_number FROM staff;

#5.3 Determine how many films are available for rent and how many have been rented.
SELECT COUNT(*) AS films_available FROM film;

SELECT COUNT(*) AS films_rented FROM rental;

#5.4 Determine the number of distinct last names of the actors in the database
SELECT COUNT(DISTINCT last_name) AS distinct_last_names FROM actor;


#Exercise 6: Retrieve the 10 longest films.

SELECT  lenght  FROM film;

#Exercise 7: Use filtering techniques in order to:

#7.1 Retrieve all actors with the first name "SCARLETT".
SELECT * FROM actor WHERE first_name = 'SCARLETT';

#7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.

SELECT* FROM film WHERE title LIKE '%ARMAGEDDON%' AND duration > 100;


#Hint: use LIKE operator. More information here.
#7.3 Determine the number of films that include Behind the Scenes content

SELECT special_features from film;

SELECT COUNT(*) AS BHS_film from film where special_features like "%Behind the Scenes%"; 

