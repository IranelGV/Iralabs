# Week 03
# Lab | SQL Queries - Join Two Tables

use sakila;

# 1. Which actor has appeared in the most films?

select  actor.first_name, actor.last_name, count(*) as film_count
from actor
join film_actor
on  actor.actor_id = film_actor.actor_id
group by actor.actor_id, actor.first_name, actor.last_name
order by film_count DESC
limit 1;

#2. Most active customer (the customer that has rented the most number of films)

select customer.customer_id, customer.first_name, customer.last_name, count(rental.rental_id) as most_numer_films
from rental
join customer
on customer.customer_id = rental.customer_id
group by customer.customer_id, customer.first_name, customer.last_name
order by most_numer_films DESC
limit 1;


#3. List number of films per category.

select category.name, count(film_category.film_id) as films_category
from film_category
join category
on category.category_id = film_category.category_id
join film 
on film.film_id = film_category.film_id
group by category.name;

#4.Display the first and last names, as well as the address, of each staff member.
select staff.first_name, staff.last_name, address.address
from staff
join address
on staff.address_id = address.address_id
group by staff.staff_id;


#5.get films titles where the film language is either English or italian, and whose 
#titles starts with letter "M" , sorted by title descending.

select film.title, language.name
from film
join language
on film.language_id = film.language_id
where language.name = "English" and film.title like 'M%'
order by film.title DESC;

#6. Display the total amount rung up by each staff member in August of 2005.

select staff.first_name, staff.last_name, count(payment.payment_id) as total_amount
from staff
join payment
on payment.staff_id = staff.staff_id
where month(payment.payment_date) = 8 and year(payment.payment_date) = 2005
group by staff.first_name, staff.last_name;

#7 List each film and the number of actors who are listed for that film.

select film.title, count(film_actor.actor_id) as number_of_actors
from film
join film_actor
on film_actor.film_id = film.film_id
group by film.title
order by number_of_actors DESC
limit 10;

# Write sql statement to check if you can find any 
#actor who never particiapted in any film.
select film_actor.actor_id
from film_actor
where film_actor.actor_id not in  (select distinct actor_id 
                             from film_actor);
                             
#10. Get the addresses that have NO customers, and end with the letter "e"

select customer.first_name, address.address
from address
join customer
on customer.address_id = address.address_id
where customer.customer_id NOT IN (select customer.customer_id
								   from customer)
and address.address like "%e";

SELECT address
FROM address
WHERE address_id NOT IN (SELECT address_id FROM customer)
AND address LIKE '%e';


#Extra

#  what is the most rented film?

select film.title, film.film_id, count(inventory.inventory_id) as most_rented
from rental
join inventory
on inventory.inventory_id = rental.inventory_id
join film
on film.film_id = inventory.film_id
group by film.title, film.film_id
order by most_rented desc
limit 1;











#8. Using the tables payment and customer and the JOIN command, 
#list the total paid by each customer. List the customers alphabetically by last name.

select customer.last_name, customer.first_name, sum(payment.amount) as total_paid
from customer
join payment
on customer.customer_id  = payment.customer_id
group by  customer.last_name, customer.first_name
order by customer.last_name ASC;







