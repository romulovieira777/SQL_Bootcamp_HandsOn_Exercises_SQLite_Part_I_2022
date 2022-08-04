/*
Exercise No. 20

The SQL code that creates the tables for this exercise is in the file create.sql.

Create a query that displays the job names for which the minimum wage is in range [5000, 8000].
*/
SELECT
    job_title
FROM
    Job
WHERE
    min_salary BETWEEN 5000 AND 8000;