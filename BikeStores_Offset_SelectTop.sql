use BikeStores

--SQL Server OFFSET and FETCH examples

--1- To skip the first 10 products and return the rest, you use the OFFSET clause as shown in the following statement:

SELECT first_name
FROM sales.customers
ORDER BY first_name
OFFSET 10 ROWS;

--2- To skip the first 10 products and select the next 10 products, you use both OFFSET and FETCH clauses as follows:

SELECT product_name
from production.products
order by category_id
offset 10 row
fetch next 10 row only ;

--3- To get the top 10 most expensive products you use both OFFSET and FETCH clauses:

select product_name , list_price 
from production.products
order by list_price desc
offset 0 row
fetch next 10 rows only;



--SELECT TOP 

--1-The following example uses a constant value to return the top 10 most expensive products.

SELECT top 10 product_name,list_price
from production.products
order by list_price desc 

--2- Using TOP to return a percentage of rows

select top 5 percent product_name,list_price 
from production.products
order by list_price desc


--3- Using TOP WITH TIES to include rows that match the values in the last row

select top 10 with ties product_name, list_price
from production.products
order by list_price desc

