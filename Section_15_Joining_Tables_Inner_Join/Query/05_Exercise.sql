/*
Exercise No. 05

The SQL code that creates the tables for this exercise is in the file create.sql.

The following query is given:

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

Modify the above query to find the total sales for January and assign the alias total_sales.
*/
SELECT
    SUM(order_01_2021.quantity * product.list_price) AS total_sales
FROM
    order_01_2021
INNER JOIN
    product
ON
    order_01_2021.product_id = product.product_id;