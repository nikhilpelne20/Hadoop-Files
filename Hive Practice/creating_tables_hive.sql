-- Switch to the database if it exists
USE total_sales;

-- Drop the tables if they exist
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;

-- Drop the database if it exists
DROP DATABASE IF EXISTS total_sales;

-- Create the database
CREATE DATABASE IF NOT EXISTS total_sales;

-- Switch to the new database
USE total_sales;

-- Customers Table
CREATE TABLE customers (
  customer_id INT,
  name STRING,
  age INT,
  gender STRING,
  city STRING,
  signup_date STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;

-- Orders Table
CREATE TABLE orders (
  order_id INT,
  customer_id INT,
  order_date STRING,
  order_amount DOUBLE,
  product_id INT
)
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;

-- Products Table
CREATE TABLE products (
  product_id INT,
  product_name STRING,
  category STRING,
  price DOUBLE
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;

-- Load data into customers table
LOAD DATA LOCAL INPATH '/home/maria_dev/hive_practice_data/customers.csv'
INTO TABLE customers;

-- Load data into orders table
LOAD DATA LOCAL INPATH '/home/maria_dev/hive_practice_data/orders.csv'
INTO TABLE orders;

-- Load data into products table
LOAD DATA LOCAL INPATH '/home/maria_dev/hive_practice_data/products.csv'
INTO TABLE products;

-- Select data from tables to verify
SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM products;
