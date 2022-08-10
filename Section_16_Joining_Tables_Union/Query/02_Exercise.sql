/*
Exercise No. 02

The SQL code that creates the tables for this exercise is in the file create.sql.

Take a look at the tables:
    - order_01_2021
    - order_02_2021

The tables store orders for two consecutive months. Combine these tables into one using the UNION operator. Display all
columns in the output table by passing names directly in the query. Sort the result by decreasing value for the quantity
column.
*/
-- Method 1
SELECT
    *
FROM
    order_01_2021
UNION
SELECT
    *
FROM
    order_02_2021
ORDER BY
    quantity DESC;


-- Method 2
SELECT
    order_id
  , product_id
  , quantity
FROM
    order_01_2021
UNION
SELECT
    order_id
  , product_id
  , quantity
FROM
    order_02_2021
ORDER BY
    quantity DESC;