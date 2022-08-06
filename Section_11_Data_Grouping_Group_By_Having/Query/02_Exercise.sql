/*
Exercise No. 02

The SQL code that creates the tables for this exercise is in the file create.sql.

The following query is given:

    SELECT
        job_id
      , AVG(salary) AS avg_salary
    FROM
        employee
    GROUP BY
        job_id
    ORDER BY
        avg_salary DESC;

Modify this query to display those job_id values for which the average salary is greater than 10,000.
*/
SELECT
    job_id
  , AVG(salary) AS avg_salary
FROM
    employee
GROUP BY
    job_id
HAVING
    AVG(salary) > 10000
ORDER BY
    avg_salary DESC;