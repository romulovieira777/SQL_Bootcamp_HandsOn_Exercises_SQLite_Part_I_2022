/*
Exercise No. 10

The SQL code that creates the tables for this exercise is in the file create.sql.

Create a query that displays the top five highest paying positions (take into account the max_salary column).
*/
SELECT
    *
FROM
    job
ORDER BY
    max_salary DESC
LIMIT
    5;