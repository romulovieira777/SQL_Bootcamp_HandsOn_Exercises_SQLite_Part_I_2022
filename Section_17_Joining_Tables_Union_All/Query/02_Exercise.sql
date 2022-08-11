/*
Exercise No. 02

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

Modify this query by adding a fourth column that calculate the total sales for each record (quantity * list_price) and
assign the alias total_price to it.
*/
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