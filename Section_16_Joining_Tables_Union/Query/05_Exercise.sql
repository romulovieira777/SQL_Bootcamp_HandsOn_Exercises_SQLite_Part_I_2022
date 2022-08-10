/*
Exercise No. 05

The SQL code that creates the tables for this exercise is in the file create.sql.

The following query is given:

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

Using the UNION operator, create a query that displays unique names of products sold in January and February (tables
order_01_2021 and order_02_2021).
*/
SELECT
    product.product_name
FROM
    order_01_2021
LEFT JOIN
    product
ON
    order_01_2021.product_id = product.product_id
UNION
SELECT
    product.product_name
FROM
    order_02_2021
LEFT JOIN
    product
ON
    order_02_2021.product_id = product.product_id;