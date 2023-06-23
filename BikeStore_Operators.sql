use BikeStores

--null and not null

--1-null

select *
from sales.customers
where phone is null

--2 -not null

select *
from sales.customers
where phone is not null



--AND OPERATOR

--1-The following example finds the products where the category identification number is one and the list price is greater than 400:

SELECT *
FROM production.products
WHERE category_id = 1 AND list_price >400;

--2-The following statement finds the products that meet all the following conditions: category id is 1, the list price is greater than 400, and the brand id is 1:

SELECT *
FROM production.products
WHERE category_id = 1 AND list_price>400 AND brand_id = 1 ;

--3-Using the AND operator with other logical operators

SELECT *
FROM production.products
WHERE category_id = 1 OR list_price >300 AND list_price<400



--OR OPERATOR

--1- finds the products whose list price is less than 200 or greater than 6,000:

SELECT *
FROM production.products
WHERE list_price <200 OR list_price>6000;

--2-finds the products whose brand id is 1, 2, or 4:

SELECT *
FROM production.products
WHERE brand_id = 1 OR brand_id = 2 OR brand_id = 4 
order by brand_id;

select *
from production.products
where brand_id in (1,2,4)
order by brand_id




--Using OR operator with AND operator example

--1-

SELECT product_name,brand_id, list_price
FROM production.products
WHERE brand_id = 1 OR brand_id = 2 AND list_price > 500
ORDER BY brand_id DESC

--2-To find the products whose brand id is 1 or 2 and list price is greater than 500

select *
from production.products
where brand_id =1 or brand_id=2 and list_price>500
order by list_price



-- IN Operator

--1-finds the products whose list price is one of the following values: 89.99, 109.99, and 159.99:

SELECT *
FROM production.products
WHERE list_price IN (89.99, 109.99,159.99);



-- BETWEEN Operator
--1-finds the products whose list prices are between 149.99 and 199.99:

SELECT *
FROM production.products
WHERE list_price BETWEEN 149.99 AND 199.99

--2- products whose list prices are not in the range of 149.99 and 199.99

SELECT *
FROM production.products
WHERE list_price NOT BETWEEN 149.99 AND 199.99

--3- finds the orders that customers placed between January 15, 2017 and January 17, 2017

SELECT *
FROM sales.orders
WHERE order_date BETWEEN '2017-01-15' AND '2017-01-17'


