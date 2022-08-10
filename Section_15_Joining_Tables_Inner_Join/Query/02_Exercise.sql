/*
Exercise No. 02

The SQL code that creates the tables for this exercise is in the file create.sql.

Create an INNER JOIN of tables:
    - product
    - category

Use the category_id column to join the tables.

Display the following columns in the output table:
    - product_id
    - product_name
    - list_price
    - category_name
*/
SELECT
    product.product_id
  , product.product_name
  , product.list_price
  , category.category_name
FROM
    product
INNER JOIN
    category
ON
    product.category_id = category.category_id;
