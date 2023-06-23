
use BikeStores

--WILDCARD (LIKE AND NOT LIKE)

--1-finds the customers whose last name starts with the letter z

SELECT *
FROM sales.customers
WHERE last_name LIKE 'z%'

--2-returns the customers whose last name ends with the string er

select *
from sales.customers
where last_name like '%er'

--3- retrieves the customers whose last name starts with the letter t and ends with the letter s:

select *
from sales.customers
where last_name like 't%s'

--4-returns the customers where the second character is the letter u:

select *
from sales.customers
where last_name like '_u%'

--5-the following query returns the customers where the first character in the last name is Y or Z:

select * 
from sales.customers
where last_name like '[yz]%'

--6- first character in the last name is the letter in the range A through C:

select *
from sales.customers
where last_name like '[a-c]%'

--7-returns the customers where the first character in the last name is not the letter in the range A through X:

select *
from sales.customers
where last_name like '[^a-x]%'

--8-find customers where the first character in the first name is not the letter A:

select *
from sales.customers
where last_name not like 'a%'





