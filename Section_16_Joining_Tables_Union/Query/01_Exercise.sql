/*
Exercise No. 01

The SQL code that creates the tables for this exercise is in the file create.sql.

Take a look at the following tables:
    - order_01_2021
    - order_02_2021

These tables store orders for two consecutive months. Combine these tables into one using the UNION. In the output table,
display all columns (use placeholder for all columns).
*/
SELECT
    *
FROM
    order_01_2021
UNION
SELECT
    *
FROM
    order_02_2021;