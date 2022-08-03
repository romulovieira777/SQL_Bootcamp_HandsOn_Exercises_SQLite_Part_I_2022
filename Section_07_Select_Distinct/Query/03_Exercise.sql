/*
Exercise No. 03

The SQL code that creates the tables for this exercise is in the file create.sql.

Create a query that displays the number of unique first names (the first_name column) from the employee table. Assign
the alias unique_first_name to the result.
*/
SELECT
    COUNT(DISTINCT first_name) AS unique_first_name
FROM
    Employee;