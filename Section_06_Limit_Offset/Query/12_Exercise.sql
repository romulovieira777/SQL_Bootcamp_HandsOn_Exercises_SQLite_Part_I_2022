/*
Exercise No. 12

The SQL code that creates the tables for this exercise is in the file create.sql.

The following query is given:
    SELECT
        *
      , (min_salary + max_salary) / 2.0 AS avg_salary

    FROM
        job;

Convert the given query to display all the data for the fourth highest paying job in terms of avg_salary value.
*/
SELECT
    job_id
  , job_title
  , min_salary
  , max_salary
  , (min_salary + max_salary) / 2.0 AS avg_salary
FROM
    job
ORDER BY
    avg_salary DESC
LIMIT
    1
OFFSET
    3;