USE BikeStores

--ASSIGNMENT

--1 - SELECT CLAUSE -


-- SELECT FIRSTNAME LAST NAME OF ALL CUSTOMERS

SELECT first_name , last_name 
from sales.customers


--2 - The following statement returns the first names, last names, and emails of all customers:

SELECT first_name , last_name , email
from sales.customers

--3 - To get data from all table columns

SELECT *
FROM sales.customers

--4 - To filter rows based on one or more conditions, you use a WHERE clause

SELECT *
FROM sales.customers
WHERE state = 'CA'

--5 -To sort the result set based on one or more columns, you use the ORDER BY clause

SELECT *
FROM sales.customers
ORDER BY first_name

--6 - To group rows into groups, you use the GROUP BY clause. For example, the following statement returns all the cities of customers located in California and the number of customers in each city.

select city , count(*)
from sales.customers
WHERE state = 'CA'
GROUP BY city

--7 - To filter groups based on one or more conditions, you use the HAVING clause. The following example returns the city in California which has more than ten customers:

select city,count(*)
from sales.customers
where state = 'CA'
GROUP BY CITY 
HAVING COUNT(customer_id)>10



--SORTING PROBLEMS-

-- 1 - sorts the customer list by the first name in ascending order:

SELECT *
FROM sales.customers
ORDER BY first_name

--2-sorts the customer list by the first name in descending order.

select *
from sales.customers
order by first_name desc

--3-The following statement retrieves the first name, last name, and city of the customers. It sorts the customer list by the city first and then by the first name.

select first_name , last_name , city 
from sales.customers
order by city,first_name

--4-The following statement sorts the customers by the city in descending order and then sorts the sorted result set by the first name in ascending order.

select *
from sales.customers
order by city desc , first_name

--5 - Sort a result set by a column that is not in the select list

SELECT city,first_name,last_name
FROM sales.customers
ORDER BY state;

--6 - Sort a result set by an expression

SELECT *
FROM sales.customers
ORDER BY LEN(first_name)asc

--7 - Sort by ordinal positions of columns

select *
from sales.customers
order by 1,2