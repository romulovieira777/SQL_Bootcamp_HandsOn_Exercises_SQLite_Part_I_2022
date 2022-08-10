/*
Exercise No. 04

The SQL code that creates the tables for this exercise is in the file create.sql.

Create a LEFT JOIN of tables:
    - order_01_2021
    - product

Using the product_id column. In the output table, display the following columns:
    - order_id
    - quantity
    - product_name
    - list_price
*/
SELECT
    order_01_2021.order_id
  , order_01_2021.quantity
  , product.product_name
  , product.list_price
FROM
    order_01_2021
LEFT JOIN
    product
ON
    order_01_2021.product_id = product.product_id;