use BikeStores

--UNION and UNION ALL examples



--1-The following example combines names of staff and customers into a single list:
select first_name, last_name 
from sales.customers
union
select first_name, last_name
from sales.staffs

select first_name, last_name 
from sales.customers
union all
select first_name, last_name
from sales.staffs


-- EXCEPT sql command


--2-to sort the first names and last names of customers and staff
select first_name, last_name 
from sales.customers
union all
select first_name, last_name
from sales.staffs
order by first_name, last_name


--A) Simple EXCEPT example

--The following example uses the EXCEPT operator to find the products that have no sales:
select product_id from production.products
except
select product_id from sales.order_items




--2-the following example finds the products that had no sales and sorts the products by their id in ascending order:
select product_id from production.products
except
select product_id from sales.order_items
order by product_id


--INTERSECT COMMAND

--1- Example for intersect

select city from sales.customers
intersect
select city from sales.stores
