/*
Exercise No. 04

The SQL code that creates the table for this exercise is in the file create.sql.

The Stock table is given:
    CREATE TABLE Stock (
        Id         INTEGER PRIMARY KEY
      , Ticker     TEXT    NOT NULL
      , FullName   TEXT    NOT NULL
      , TradingDay TEXT    NOT NULL
      , Price      REAL    NOT NULL CHECK (Price > 0)
      , Sector     TEXT    NOT NULL
      , EPS        REAL
    );

Create a query that displays the following columns from the Stock table:
    - Sector
    - FullName
    - Price

Sort the result by the Sector column in descending order. Limit the result to the first five records.
*/
SELECT
    Sector
  , FullName
  , Price
FROM
    Stock
ORDER BY
    Sector DESC
LIMIT
    5;