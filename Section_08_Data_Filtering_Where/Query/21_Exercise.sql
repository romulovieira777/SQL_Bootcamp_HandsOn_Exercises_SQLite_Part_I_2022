/*
Exercise No. 21

The SQL code that creates the tables for this exercise is in the file create.sql.

Create a query that displays all data for employees hired on '1999-12-07'.
*/
SELECT
    *
FROM
    Employee
WHERE
    hire_date = '1999-12-07';