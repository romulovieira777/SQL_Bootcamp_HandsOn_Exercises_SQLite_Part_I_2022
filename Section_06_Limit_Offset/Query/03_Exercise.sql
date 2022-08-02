/*
Exercise No. 03

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

Create a query that displays the first three records in the Stock table that have the highest EPS (earnings per share)
value. Sort the result in descending order by EPS column.
*/
SELECT
    *
FROM
    Stock
ORDER BY
    EPS DESC
LIMIT
    3;