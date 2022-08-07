/*
Exercise No. 03

The SQL code that creates the tables for this exercise is in the file create.sql.

Please follow the steps below.
    1 - Create a query that returns the value for the job_id from the employee table where the salary is greater than
    10,000.
    2 - Using the result of the previous query as a subquery, display the names of all positions for which the above
    condition is met.
*/
SELECT
    job_title
FROM
    job
WHERE
    job_id IN (
        SELECT
            job_id
        FROM
            employee
        WHERE
            salary > 10000
    );