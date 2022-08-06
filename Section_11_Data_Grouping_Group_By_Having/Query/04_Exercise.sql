/*
Exercise No. 04

The SQL code that creates the tables for this exercise is in the file create.sql.

Group the data in the sale table at product_id level. Calculate the number of orders for each product and assign it to a
column named number_of_orders. Then, using the HAVING clause, extract products with a number of orders greater than one.
Sort the result in descending order by number_of_orders.
*/
SELECT
    product_id
  , COUNT(*) AS number_of_orders
FROM
    sale
GROUP BY
    product_id
HAVING
    COUNT(*) > 1
ORDER BY
    number_of_orders DESC;