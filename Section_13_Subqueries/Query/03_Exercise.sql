/*
Exercise No. 03

The SQL code that creates the tables for this exercise is in the file create.sql.

The following query is given:

    SELECT
        product_id
      , COUNT(*) AS number_of_products
    FROM
        sale
    GROUP BY
        product_id;

Modify this query to display only the first three values for the product_id with the highest value for the
number_of_orders column.
*/
SELECT
    product_id
FROM (
        SELECT
            product_id
          , COUNT(product_id) AS number_of_orders
        FROM
            sale
        GROUP BY
            product_id
        ORDER BY
            number_of_orders DESC
        LIMIT 3
    );
