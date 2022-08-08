/*
Exercise No. 07

The SQL code that creates the tables for this exercise is in the file create.sql.

The following query is given:

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

Modify this query so that the result only includes information for two columns.
    - product_name
    - list_price
*/
-- Method 1
SELECT
    product_name
  , list_price
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
    product_name
  , list_price
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