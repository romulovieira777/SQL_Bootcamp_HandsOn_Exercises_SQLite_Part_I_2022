/*
Exercise No. 11

The SQL code that creates the tables for this exercise is in the file create.sql.

Create a query that displays the top five highest paying positions. Take the mean value of the column into account.
    - min_salary
    - max_salary

To do this, create a new column called avg_salary that will contain the average value of the above-mentioned columns. In
the result table, display all columns of the job table including the avg_salary column (as the last column).
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
    5;