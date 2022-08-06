/*
Exercise No. 03

The SQL code that creates the tables for this exercise is in the file create.sql.

The following query are given:

    SELECT
        country_id
      , country_name
    FROM
        country;

Add a third column to this query that will take the value:
    - 1, when the country is in the list: 'China', 'HongKong', 'Israel', 'India', 'Japan', 'Kuwait', 'Singapore'
    - 0, contrary

Assign the alias is_asia to this column.
*/
SELECT
    country_id
  , country_name
  , CASE
        WHEN country_name IN ('China', 'HongKong', 'Israel', 'India', 'Japan', 'Kuwait', 'Singapore') THEN 1
        ELSE 0
    END AS is_asia
FROM
    country;