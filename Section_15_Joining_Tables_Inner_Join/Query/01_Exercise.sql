/*
Exercise No. 01

The SQL code that creates the tables for this exercise is in the file create.sql.

Create an INNER JOIN of tables:
    - product
    - category

Use the category_id column to join the tables. Notice that the category_id column in the product table contains NULL
values.

Display all columns in the output table.
*/
-- Method 1
SELECT
    product.product_id
  , product.product_name
  , product.brand_id
  , product.category_id
  , product.model_year
  , product.list_price
  , category.category_name
FROM
    product
INNER JOIN
    category
ON
    product.category_id = category.category_id;


-- Method 2
SELECT
    *
FROM
    product
INNER JOIN
    category
ON
    product.category_id = category.category_id;