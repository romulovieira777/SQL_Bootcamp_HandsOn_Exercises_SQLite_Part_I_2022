/*
Exercise No. 01

The SQL code that creates the tables for this exercise is in the file create.sql.

The following query is given:

    SELECT
        order_01_2021.quantity
      , product.product_name
      , product.list_price
    FROM
        order_01_2021
    LEFT JOIN
        product
    ON
        order_01_2021.product_id = product.product_id;

Using the UNION ALL operator, create a query that displays all sales data for January and February (order_01_2021 and
order_02_2021 tables).

Display the same columns in the output table.
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
    order_01_2021.product_id = product.product_id
UNION ALL
SELECT
    order_02_2021.order_id
  , order_02_2021.quantity
  , product.product_name
  , product.list_price
FROM
    order_02_2021
LEFT JOIN
    product
ON
    order_02_2021.product_id = product.product_id;