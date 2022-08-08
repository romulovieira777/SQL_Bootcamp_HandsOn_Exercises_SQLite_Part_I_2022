/*
Exercise No. 05

The SQL code that creates the tables for this exercise is in the file create.sql.

Group data from the sale table at product_id level. Calculate the number of orders for each product and assign the alias
number_of_orders. Using the HAVING clause, display only those products that appeared once in the table (one order).
*/
SELECT
    product_id
  , COUNT(*) AS number_of_orders
FROM
    sale
GROUP BY
    product_id
HAVING
    COUNT(*) = 1;