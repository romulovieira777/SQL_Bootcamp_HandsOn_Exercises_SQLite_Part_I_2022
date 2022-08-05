/*
Exercise No. 06

The SQL code that creates the tables for this exercise is in the file create.sql.

Group data from the sale table at product_id level. Calculate the number of orders for each product and assign the alias
number_of_orders.
*/
SELECT
    product_id
  , COUNT(product_id) AS number_of_orders
FROM
    sale
GROUP BY
    product_id;