/*
Exercise No. 04

The SQL code that creates the tables for this exercise is in the file create.sql.

The following query is given:

    SELECT
        product_id
    FROM (
        SELECT
            product_id
          , COUNT(product_id)
        FROM
            sale
        GROUP BY
            product_id
        ORDER BY
            COUNT(product_id) DESC
        LIMIT 3
    );

Display al data from the product table about the products returned by the above query.

Tip: Use subqueries.
*/
SELECT
    *
FROM
    product
WHERE
    product_id IN (
        SELECT
            product_id
        FROM (
                SELECT
                    product_id
                  , COUNT(product_id)
                FROM
                    sale
                GROUP BY
                    product_id
                ORDER BY
                    COUNT(product_id) DESC
                LIMIT 3
            )
    );