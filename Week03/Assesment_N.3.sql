#Task
#For this challenge you need to create a simple GROUP BY statement,
#you want to group all the people by their age and count the people who have the same age.

#Table Schemas

#Testing Info
#DynamicnTable Data
#The data within each table is re-generated each time you submit. Do not expect to get the same data back twice.
#In order to check accuracy of results, make sure to compare the actual results to the expected.
#Test Errors
#Tests are done using Ruby, which is why you may see some non-SQL looking errors if something isn't correct

#1
SELECT Age, COUNT(*) AS people_count
FROM People
GROUP BY Age;

#2
SELECT age, COUNT(*) as total_people
FROM people
GROUP BY age
HAVING COUNT(*) >= 10;

#
SELECT people.id, people.name, COUNT(toys.id) AS toy_count
FROM people
JOIN toys ON people.id = toys.people_id
GROUP BY people.id, people.name;


#in my way IDGV
SELECT people.id, people.name, count(toys.id) as toy_count
FROM people
join toys on people.id = toys.id
group by people.id, people.name;




#3
SELECT people.id, people.name, COUNT(toys.id) AS toy_count
FROM people
JOIN toys ON people.id = toys.people_id
GROUP BY people.id, people.name;

#4
SELECT customer.customer_id, customer.email, count(payment.payment_id) as payments_count,
cast(sum(payment.amount) as float) as total_amount
FROM customer
join payment on payment.customer_id = customer.customer_id
GROUP BY customer.customer_id, customer.email
order by total_amount DESC
limit 10;

#5
SELECT departments.id, name
FROM departments
WHERE departments.id IN (SELECT sales.department_id
                        FROM sales
                        WHERE price > 98.00);

#6
#For this challenge your task is to create a VIEW. This VIEW is used by a 
#store to give out vouchers to members who have spent over $1000 in 
 #departments that have brought in more than $10000 total ordered by the members id. 
 #The VIEW must be called members_approved_for_voucher. 
#Create a SELECT query using this view that extracts the expected results.

CREATE VIEW members_approved_for_voucher AS
SELECT members.id, members.name, members.email, SUM(products.price) as total_spending
FROM sales
JOIN products ON sales.product_id = products.id
JOIN members ON sales.member_id = members.id
WHERE sales.department_id IN (SELECT departments.id
  FROM sales
  JOIN departments ON sales.department_id = departments.id
  JOIN products ON sales.product_id = products.id
  GROUP BY departments.id
  HAVING SUM(products.price) > 10000.00)
GROUP BY members.id, members.name, members.email
HAVING SUM(products.price) > 1000.00
ORDER BY members.id;
SELECT * FROM members_approved_for_voucher;