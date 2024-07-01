drop database if exists total_sales;

create database if not exists total_sales;

use total_sales;

-- Customers Table
create table customers(
customer_id int,
name string,
age int,
gender string,
city string,
signup_date string
)
row format delimited
fields terminated by ','
lines terminated by '\n'
stored as textfile;

-- Orders Table
create table orders(
order_id int,
customer_id int,
order_date string,
order_amount double,
product_id int
)
row format delimited 
fields terminated by ','
lines terminated by '\n'
stored as textfile;

-- Products Table
create table products(
product_id int,
product_name string,
category string,
price double
)
row format delimited
fields terminated by ','
lines terminated by '\n'
stored as textfile;



load data local /home/maria_dev/hive_practice_data/customers.csv
into table customers;

load data local /home/maria_dev/hive_practice_data/orders.csv
into table orders;

load data local /home/maria_dev/hive_practice_data/products.csv
into table product;


select * from customer;
select * from orders;
select * from products;


