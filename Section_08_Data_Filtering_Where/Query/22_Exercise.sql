/*
Exercise No. 22

The SQL code that creates the tables for this exercise is in the file create.sql.

Create a query that displays all data for employee table for employees with the value of employee_id: 101, 106, 109.
*/
SELECT
    *
FROM
    Employee
WHERE
    employee_id IN (101, 106, 109);