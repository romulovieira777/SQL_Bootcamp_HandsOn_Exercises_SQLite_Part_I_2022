/*
Exercise No. 03

The SQL code that creates the tables for this exercise is in the file create.sql.

Create a LEFT JOIN of tables:
    - order_01_2021
    - product

Using the product_id column. Display all columns in the output table.
*/
-- Method 1
SELECT
    order_01_2021.order_id
  , order_01_2021.product_id
  , order_01_2021.quantity
  , product.product_name
  , product.brand_id
  , product.category_id
  , product.model_year
  , product.list_price
FROM
    order_01_2021
LEFT JOIN
    product
ON
    order_01_2021.product_id = product.product_id;


-- Method 2
SELECT
    *
FROM
    order_01_2021
LEFT JOIN
    product
ON
    order_01_2021.product_id = product.product_id;