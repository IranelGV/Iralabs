# Week 03
# LAB | Temporary Tables, Views and CTEs

USE sakila;

#1. In this exercise, you will create a customer summary report that summarizes 
#key information about customers in the Sakila database, including their rental
# history and payment details. The report will be generated using a combination 
#of views, CTEs, and temporary tables

# Step 1: Create a View
CREATE VIEW rental_history AS
SELECT customer.customer_id, customer.first_name, customer.last_name, COUNT(rental.rental_id) AS rental_count
FROM customer 
JOIN rental  ON customer.customer_id = rental.customer_id
GROUP BY customer.customer_id, customer.first_name, customer.last_name, rental_count;

CREATE VIEW payment_details as
SELECT customer.customer_id, customer.first_name, customer.last_name, COUNT(payment.payment_id) as payment_amount
FROM customer
LEFT JOIN payment ON customer.customer_id = payment.customer_id
GROUP BY  customer.customer_id, customer.first_name, customer.last_name, payment_amount;

CREATE TEMPORARY TABLE customer_summary as
SELECT rental_history.customer_id, rental_history.first_name, rental_history.last_name, rental_history.rental_count, payment_details.payment_amount
FROM rental_history  
JOIN payment_details 
ON rental_history.customer_id = payment_details.customer_id
GROUP BY rental_history.customer_id, rental_history.first_name, rental_history.last_name, rental_history.rental_count, payment_details.payment_amount;

SELECT *
FROM customer_summary









