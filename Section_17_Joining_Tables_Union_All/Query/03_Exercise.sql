/*
Exercise No. 03

The SQL code that creates the tables for this exercise is in the file create.sql.

The following query is given:

    SELECT
        order_01_2021.quantity
      , product.product_name
      , product.list_price
      , order_01_2021.quantity * product.list_price AS total_price
    FROM
        order_01_2021
    LEFT JOIN
        product
    ON
        order_01_2021.product_id = product.product_id
    UNION ALL
    SELECT
        order_02_2021.quantity
      , product.product_name
      , product.list_price
      , order_02_2021.quantity * product.list_price AS total_price
    FROM
        order_02_2021
    LEFT JOIN
        product
    ON
        order_02_2021.product_id = product.product_id;

Modify above query. Sort the output table by descending total_price and limit the result to the first five records.
*/
SELECT
    *
FROM
    (SELECT
        order_01_2021.quantity
      , product.product_name
      , product.list_price
      , order_01_2021.quantity * product.list_price AS total_price
    FROM
        order_01_2021
    LEFT JOIN
        product
    ON
        order_01_2021.product_id = product.product_id
    UNION ALL
    SELECT
        order_02_2021.quantity
      , product.product_name
      , product.list_price
      , order_02_2021.quantity * product.list_price AS total_price
    FROM
        order_02_2021
    LEFT JOIN
        product
    ON
        order_02_2021.product_id = product.product_id)
ORDER BY
    total_price DESC
LIMIT
    5;