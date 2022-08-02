/*
Exercise No. 05

The SQL code that creates the table for this exercise is in the file create.sql.

    CREATE TABLE Stock (
        Id         INTEGER PRIMARY KEY
      , Ticker     TEXT    NOT NULL
      , FullName   TEXT    NOT NULL
      , TradingDay TEXT    NOT NULL
      , Price      REAL    NOT NULL CHECK (Price > 0)
      , Sector     TEXT    NOT NULL
      , EPS        REAL
    );

Create a query that skips the first three records of the Stock table and displays the next five records.
*/
SELECT
    *
FROM
    Stock
LIMIT
    5
OFFSET
    3;