/*
Exercise No. 07

The SQL code that creates the tables for this exercise is in the file create.sql.

Using the previous exercise and subqueries, create a query that displays all information about the products from the
product table that were purchased only once (the sale table).
*/
-- Method 1
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
            FROM
                sale
            GROUP BY
                product_id
            HAVING
                COUNT(product_id) = 1
        )
    );


-- Method 2
SELECT
    *
FROM
    product
WHERE
    product_id IN (
        SELECT
            product_id
        FROM
            sale
        GROUP BY
            product_id
        HAVING
            COUNT(product_id) = 1
    );