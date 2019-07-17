-- Drops the bamazon_db if it exists currently --
DROP DATABASE IF EXISTS bamazon_db;

-- Creates the "bamazon_db" database --
CREATE DATABASE bamazon_db;

-- makes so all the following code will affect bamazon_db
USE bamazon_db;

-- creates the table "products" within bamazon_db
CREATE TABLE products (
item_id INTEGER(10) NOT NULL,
product_name VARCHAR(50) NOT NULL,
department_name VARCHAR(50) NOT NULL,
price DECIMAL(10,2),
stock_quantity INTEGER(10) NOT NULL
);

-- Creates new rows containing data in all named columns --
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (5000, "Apple", "Produce", 1.25, 30);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (5001, "Banana", "Produce", .99, 20);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (5002, "Orange", "Produce", 1.35, 10);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (5003, "Pineapple", "Produce", 2.20, 5);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (5004, "Watermelon", "Produce", 3.30, 2);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (5005, "Cherry", "Produce", 1.10, 25);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (5006, "Magical Gum-Gum Fruit", "Produce", 999.99, 1);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (5007, "Blueberry", "Produce", 1.50, 12);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (5008, "Lemon", "Produce", 1.80, 10);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (5009, "Kiwi", "Produce", 2.50, 5);

SELECT * FROM products;

-- update products
-- SET stock_quantity = 
-- WHERE product_name = ;
 