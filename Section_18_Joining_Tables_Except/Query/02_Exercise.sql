/*
Exercise No. 02

The SQL code that creates the tables for this exercise is in the file create.sql.

Display all names of products that were sold in February but not in January using the EXCEPT operator.
*/
SELECT
    product.product_name
FROM
    order_02_2021
LEFT JOIN
    product
ON
    order_02_2021.product_id = product.product_id
EXCEPT
SELECT
    product.product_name
FROM
    order_01_2021
LEFT JOIN
    product
ON
    order_01_2021.product_id = product.product_id;