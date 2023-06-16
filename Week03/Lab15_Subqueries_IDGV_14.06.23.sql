USE Sakila;

# 1. Determine the number of copies of the film "Hunchback Impossible" that exist in the inventory system.

SELECT COUNT(inventory_id) AS count_inventory_id
FROM inventory
WHERE film_id in (SELECT film_id
                  FROM film
                  Where title = 'Hunchback Impossible');

#2 List all films whose length is longer than the average length of all the films in the Sakila database.

SELECT film_id, title, length
FROM film
WHERE length > (SELECT AVG(length) FROM film);

SELECT film_id, title, length
FROM film
WHERE length > AVG(length);
                  
                     
                     
                     
SELECT film_id
from film
where film_id in (SELECT length
                    from film
				     where length > AVG(length));
                     
                     
                     
# 3 Use a subquery to display all actors who appear in the film "Alone Trip".


SELECT first_name
FROM actor 
where actor_id in (SELECT actor_id
						From film_actor
						where film_id in (SELECT film_id
                                           from film
                                            where title = "Alone Trip"));
                                            
#4. Sales have been lagging among young families, and you want to 
#target family movies for a promotion. Identify all movies categorized as family films.

SELECT title
FROM film
where film_id in (SELECT film_id
                    from film_category
                     where category_id in (SELECT category_id
											from category
                                             where name = "family"));

select name
from category;
                        

#5. Retrieve the name and email of customers from Canada using both subqueries and joins. To use joins, 
#you will need to identify the relevant tables and their primary and foreign keys.

SELECT first_name, email
from customer
where address_id in (SELECT address_id
					 from address 
                     join city on city.city_id = address.city_id 
					 join country on country.country_id = city.country_id
					 where country = "canada");
                       



#6 Determine which films were starred by the most prolific actor in the Sakila database. 
#A prolific actor is defined as the actor who has acted in the most number of films. 
#First, you will need to find the most prolific actor and then use that actor_id 
#to find the different films that he or she starred in.

select film.title
from film
join film_actor
on film.film_id = film_actor.film_id
join actor
on actor.actor_id = film_actor.actor_id
where actor.actor_id = 
(select actor_id
from film_actor
group by actor_id
order by count(actor_id) DESC
limit 1);





select film.title
from film
where film_id in (select film_id
				  from film_actor
				  where actor_id = (select actor_id
									from actor
									group by actor_id
									order by count(actor_id)
									limit 1));
                                    
                                    
                  
                  

#7. Find the films rented by the most profitable customer in the Sakila database. 
#You can use the customer and payment tables to find the most profitable customer, 
#i.e., the customer who has made the largest sum of payments.

Select film.title
from film
join inventory using(film_id)
join rental using (inventory_id)
join customer using (customer_id)
where customer.customer_id =
(select customer.customer_id
from customer
join payment using (customer_id)
group by customer_id
order by sum(payment.amount) DESC
LIMIT 1);

#################################################################################
Select film.title
from film
where film_id in (select film_id
				  from inventory
                  where inventory_id in (select inventory_id
										  from rental
										  where customer_id in (select customer_id
                                                                from customer
																where customer_id =  (select customer_id
																					   from payment
                                                                                       group by customer_id
																					   order by sum(payment.amount) desc
																					   limit 1))));
																					   
																						
                                                                
                                                                                                

###########################################################
Select film.title
from film
where film_id in (select film_id
				  from inventory
                  where inventory_id in (select inventory_id
										  from rental
										  where customer_id in (select customer_id
                                                                from customer
																where customer.customer_id in  (select customer.customer_id
                                                                                                from customer
																		                        where customer_id in (select customer_id
																								                      group by customer_id
																								                      order by sum(payment.amount) desc
																													  limit 1)))));



#8.Retrieve the client_id and the total_amount_spent of those clients who spent more 
#than the average of the total_amount spent by each client. 
#You can use subqueries to accomplish this.
