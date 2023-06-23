
use BikeStores

--SQL Server SELECT DISTINCT clause

--1- DISTINCT one column example

select distinct city
from sales.customers
order by city asc

--2-DISTINCT multiple columns example

select distinct city,state
from sales.customers

--3-DISTINCT with null values example

select distinct phone
from sales.customers
order by phone

--4- DISTINCT vs. GROUP BY

select distinct city,state,zip_code
from sales.customers
