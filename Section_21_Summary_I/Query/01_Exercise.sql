/*
Exercise No. 01

The SQL code that creates the tables for this exercise is in the file create.sql.

Create a LEFT JOIN of tables:
    - sale
    - product

Display all columns in the result.
*/
SELECT
    *
FROM
    sale
LEFT JOIN
    product
ON
    sale.product_id = product.product_id;