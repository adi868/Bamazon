-- Drops the bamazon_db if it exists currently --
DROP DATABASE IF EXISTS bamazon_db;

-- Creates the "bamazon_db" database --
CREATE DATABASE bamazon_db;

-- makes so all the following code will affect bamazon_db
USE bamazon_db;

-- creates the table "products" within bamazon_db
CREATE TABLE products(
item_id INTEGER(10),
product_name VARCHAR(50),
department_name VARCHAR(50),
price INTEGER(10),
stock_quantity INTEGER(10)
);

-- Creates new rows containing data in all named columns --
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (2000, "Apple", "Produce", 1.25, 40);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (2000, "Banana", "Produce", 1.25, 40);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (2000, "Orange", "Produce", 1.25, 40);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (2000, "Pineapple", "Produce", 1.25, 40);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (2000, "Watermelon", "Produce", 1.25, 40);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (2000, "Cherry", "Produce", 1.25, 40);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (2000, "Tomato", "Produce", 1.25, 40);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (2000, "Apple", "Produce", 1.25, 40);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (2000, "Apple", "Produce", 1.25, 40);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (2000, "Apple", "Produce", 1.25, 40);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (2000, "Apple", "Produce", 1.25, 40);


-- update products
-- SET stock_quantity = 
-- WHERE product_name = ;
 