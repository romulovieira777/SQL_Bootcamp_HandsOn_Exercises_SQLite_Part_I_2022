/*
Exercise No. 01

The SQL code that creates the tables for this exercise is in the file create.sql.

Using the EXCEPT operator, display all names of products that were sold in January but not in February.
*/
SELECT
    product.product_name
FROM
    order_01_2021
LEFT JOIN
    product
ON
    order_01_2021.product_id = product.product_id
EXCEPT
SELECT
    product.product_name
FROM
    order_02_2021
LEFT JOIN
    product
ON
    order_02_2021.product_id = product.product_id;