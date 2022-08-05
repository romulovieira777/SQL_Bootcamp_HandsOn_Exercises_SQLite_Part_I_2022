/*
Exercise No. 07

The SQL code that creates the tables for this exercise is in the file create.sql.

The following query is given:

    SELECT
        product_id
      , COUNT(*) AS number_of_orders
    FROM
        sale
    GROUP BY
        product_id;

Transform this query to extract the first three records with the highest value for the number_of_orders column.
*/
SELECT
    product_id
  , COUNT(*) AS number_of_orders
FROM
    sale
GROUP BY
    product_id
ORDER BY
    number_of_orders DESC
LIMIT 3;