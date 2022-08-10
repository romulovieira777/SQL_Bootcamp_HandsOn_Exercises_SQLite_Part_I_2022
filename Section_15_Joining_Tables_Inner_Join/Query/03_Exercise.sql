/*
Exercise No. 03

The SQL code that creates the tables for this exercise is in the file create.sql.

The following query is given:

    SELECT
        product.product_id
      , product.product_name
      , product.list_price
      , category.category_name
    FROM
        product
    INNER JOIN
        category
    ON
        product.category_id = category.category_id;

Modify the given query to group the data on the category_name level. Calculate the number of products for each category
and assign an alias number_of_products.

The output table should contain two columns:
    - category_name
    - number_of_products

Sort output table in descending order by number_of_products.
*/
SELECT
    category.category_name
  , COUNT(product.product_id) AS number_of_products
FROM
    product
INNER JOIN
    category
ON
    product.category_id = category.category_id
GROUP BY
    category.category_name
ORDER BY
    number_of_products DESC;