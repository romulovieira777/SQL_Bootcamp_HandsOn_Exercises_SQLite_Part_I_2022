/*
Exercise No. 02

The SQL code that creates the tables for this exercise is in the file create.sql.

The following query is given:

    SELECT
        *
    FROM
        sale
    LEFT JOIN
        product
    ON
        sale.product_id = product.product_id;

Using the given query, group the data on the category_id level. Calculate the number of orders for each category and
assign the alias number_of_orders.
*/
SELECT
    category_id
  , COUNT(*) AS number_of_orders
FROM
    sale
LEFT JOIN
    product
ON
    sale.product_id = product.product_id
GROUP BY
    category_id;