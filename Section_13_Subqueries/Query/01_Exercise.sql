/*
Exercise No. 01

The SQl code that creates the tables for this exercise is in the fiel create.sql.

The following query is given:

    SELECT
        department_id
    FROM
        employee
    WHERE
        salary > 10000;

The query returns values for department_id for which salary is greater than 10000. Using the result of this query as a
subquery, display the names of all departments for which the above condition is met.
*/
SELECT
    department_id
  , department_name
FROM
    department
WHERE
    department_id IN (
        SELECT
            department_id
        FROM
            employee
        WHERE
            salary > 10000
    );