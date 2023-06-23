USE BikeStores

--SQL Server GROUP BY clause and aggregate functions

--1-The following query returns the number of orders placed by the customer by year:


select customer_id, year(order_date), count(order_id) as orderPlaced
from sales.orders
where customer_id in (1,2)
group by customer_id, year(order_date)
order by customer_id


--2--The following query returns the number of customers in every city:

select city, count(customer_id) as numberOfCustomers
from sales.customers
group by city


--3--the following query returns the number of customers by state and city:

select city, state, count(customer_id) as numberOfCustomers
from sales.customers
group by state, city



--4--The following statement returns the minimum and maximum list prices of all products with the model 2018 by brand:

select brand_name, min(list_price) as minimumPrice, max(list_price) as maximumPrice 
from production.products as p inner join production.brands as b
on p.brand_id = b.brand_id
where model_year = 2018
group by brand_name


--5--The following statement uses the AVG() function to return the average list price by brand for all products with the model year 2018:

select brand_name, avg(list_price) as averagePrice 
from production.products as p inner join production.brands as b
on p.brand_id = b.brand_id
where model_year = 2018
group by brand_name



--6--The following query uses the SUM() function to get the net value of every order:

select order_id, sum(quantity * list_price * (1-discount)) as netValue
from sales.order_items
group by order_id



