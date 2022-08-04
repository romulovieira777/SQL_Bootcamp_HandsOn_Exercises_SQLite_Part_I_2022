/*
Exercise No. 19

The SQL code that creates the tables for this exercise is in the file create.sql.

Create a query that displays job titles with a minimum wage of 9,000 or more.
*/
SELECT
    job_title
FROM
    Job
WHERE
    min_salary >= 9000;