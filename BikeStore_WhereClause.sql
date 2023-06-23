use BikeStores

--Where Clause

--1-Finding rows by using a simple equality

select *
from sales.customers
where customer_id=5;

--2-Finding rows that meet two conditions

select product_id , product_name ,list_price
from production.products
where brand_id = 1 and category_id=3;

--3-Finding rows by using a comparison operator

select product_id, product_name ,list_price, model_year
from production.products
where list_price>500 and model_year=2016

--4-Finding rows that meet any of two conditions

select product_id, product_name ,list_price, model_year
from production.products
where list_price>500 or model_year=2018

--5-Finding rows with the value between two values

select product_id, product_name ,list_price, model_year
from production.products
where list_price between 459 and 700

--6-Finding rows that have a value in a list of values

select product_id, product_name ,list_price, model_year
from production.products
where list_price in (469.99,549.99,529.99);

--7-Finding rows whose values contain a string

select product_id, product_name ,list_price, model_year
from production.products
where product_name like 'Trek%';
