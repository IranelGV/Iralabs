#As a movie rental company, we need to use SQL built-in functions to help us gain insights into our business operations:

#1.1 Determine the shortest and longest movie durations and name the values as max_duration and min_duration.

SELECT MIN(length) AS min_duration, MAX(length) AS max_duration FROM film;


#1.2. Express the average movie duration in hours and minutes. Don't use decimals. Hint: look for floor and round functions.

SELECT CONCAT(FLOOR(AVG(length) / 60), 'h ', ROUND(MOD(AVG(length),60)),'min') AS average_duration FROM film;

#Exercise2: We need to use SQL to help us gain insights into our business operations related to rental dates:

#2.1 Calculate the number of days that the company has been operating. Hint: To do this, use the rental table, and the DATEDIFF() function to subtract the earliest date in the rental_date column from the latest date.

SELECT DATEDIFF(MAX(rental_date), MIN(rental_date)) as operating_days from rental;

#2.2 Retrieve rental information and add two additional columns to show the month and weekday of the rental. Return 20 rows of results.

SELECT*,  month(rental_date) AS rental_month, day(rental_date) AS rental_weekday FROM rental LIMIT 20;


#We need to ensure that our customers can easily access information about our movie collection. To achieve this, retrieve the film titles and their rental duration. If any rental duration value is NULL, replace it with the string 'Not Available'. Sort the results by the film title in ascending order. Please note that even if there are currently no null values in the rental duration column, the query should still be written to handle such cases in the future.

SELECT title, rental_duration from film;

SELECT title, COALESCE(rental_duration, 'Not Available') AS rental_duration
FROM film
ORDER BY title ASC;

#Exercise 4

SELECT CONCAT(last_name, " ", first_name) as full_name, LEFT(email,3) as email_prefix from customer ORDER BY last_name ASC;

#Challenge 2

#1.1 The total number of films that have been released.

SELECT  COUNT(*)  from film;

#1.2 The number of films for each rating


SELECT* from film;

SELECT DISTINCT(rating), count(rating) as  film_for_each_rating from film  group by rating;


#1.3 The number of films for each rating, and sort the results 
#in descending order of the number of films. This will help us better
# understand the popularity of different film ratings and adjust our purchasing decisions accordingly.

SELECT DISTINCT(rating), count(rating) as  film_for_each_rating 
from film  
group by rating
ORDER BY ratings DESC;


#2.

SELECT count(customer_id) as number_rental_employee from rental;

#3
#3.1 The mean film duration for each rating, and sort the results in
# descending order of the mean duration. Round off the average lengths 
#to two decimal places. This will help us identify popular movie lengths for each category.

SELECT rating, ROUND(AVG(length), 2) AS mean_duration
FROM film
GROUP BY rating
ORDER BY mean_duration DESC;

SELECT title, length, rating from film;


#3.2 Identify which ratings have a mean duration of over two hours, 
#to help us select films for customers who prefer longer movies.

SELECT ROUND(AVG(length)/60)  as mean_duration_over 
FROM film
GROUP BY rating
HAVING mean_duration > 2;

SELECT rating, ROUND(AVG(length), 2) AS mean_duration
FROM film
GROUP BY rating
HAVING mean_duration > 120;


#4 Determine which last names are not repeated in the table actor.




SELECT last_name
FROM actor
GROUP BY last_name
HAVING COUNT(*) = 1;




