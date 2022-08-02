/*
Exercise No. 02

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

Create a query that displays 5 records from the Stock table that have the highest price (the Price column). Sort the
result in descending order by Price column.
*/
SELECT
    *
FROM
    Stock
ORDER BY
    Price DESC
LIMIT
    5;