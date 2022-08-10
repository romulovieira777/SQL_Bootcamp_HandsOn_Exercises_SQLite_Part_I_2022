/*
Exercise No. 04

The SQL code that creates the tables for this exercise is in the file create.sql.

Create an INNER JOIN of tables:
    - order_01_2021
    - product

Using the product_id column. In the output table, display the following columns:
    - quantity
    - list_price

Also add a third column that calculates the total sales for the record (quantity * list_price) and assign the alias
total_price.
*/
SELECT
    order_01_2021.quantity
  , product.list_price
  , order_01_2021.quantity * product.list_price AS total_price
FROM
    order_01_2021
INNER JOIN
    product
ON
    order_01_2021.product_id = product.product_id;