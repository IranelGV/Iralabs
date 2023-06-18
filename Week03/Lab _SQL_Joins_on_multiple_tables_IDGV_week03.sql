# Week 03
# Lab | SQL Joins on multiple tables

use sakila;

#1. Write a query to display for each store its store ID, city, and country.
select store.store_id, city.city, country.country
from store
join address
on  address.address_id = store.address_id
join city
on city.city_id = address.city_id
join country
on country.country_id = city.country_id
group by store.store_id, city.city, country.country;


#2. Write a query to display how much business, in dollars, each store brought in.
select store.store_id, concat(sum(payment.amount), '$') as how_much_business
from store
join staff
on staff.store_id= store.store_id
join payment
on payment.staff_id = staff.staff_id
group by  store.store_id;


#3. What is the average running time(length) of films by category?

select category.name, avg(film.length) as average_running_time
from film
join film_category
on film_category.film_id = film.film_id
join category
on category.category_id = film_category.category_id
group by category.name;


#4. Which film categories are longest(length) (find Top 5)? (Hint: You can rely on question 3 output.)
select category.name,  round(avg(film.length),2) as longest_length
from film
join film_category
on film_category.film_id = film.film_id
join category
on category.category_id = film_category.category_id
group by category.name
order by longest_length desc
limit 5;


#5. Display the top 5 most frequently(number of times) rented movies in descending order.

select film.title, count(rental.rental_id) as number_of_times
from film
join inventory
on inventory.film_id = film.film_id
join rental
on rental.inventory_id = inventory.inventory_id
group by film.title
order by number_of_times DESC
limit 5;

#6. List the top five genres in gross revenue in descending order.

select category.category_id, category.name, sum(payment.amount) as gross_revenue
from category
join film_category
on film_category.category_id = category.category_id
join film
on  film.film_id = film_category.film_id
join inventory
on inventory.film_id = film.film_id
join rental
on rental.inventory_id = inventory.inventory_id
join payment
on payment.customer_id = rental.customer_id
group by category.category_id, category.name
order by gross_revenue desc
limit 5;


SELECT c.category_id, c.name AS category_name, SUM(p.amount) AS total_revenue
FROM category c
JOIN film_category fc ON c.category_id = fc.category_id
JOIN film f ON fc.film_id = f.film_id
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
JOIN payment p ON r.rental_id = p.rental_id
GROUP BY c.category_id, c.name
ORDER BY total_revenue DESC
LIMIT 5;





#7. Is "Academy Dinosaur" available for rent from Store 1?

select film.title, store.store_id
from film
join inventory
on inventory.film_id =  film.film_id
join store
on store.store_id = inventory.store_id
where film.title = 'Academy Dinosaur' and store.store_id = 1
group by store.store_id, film.title;




