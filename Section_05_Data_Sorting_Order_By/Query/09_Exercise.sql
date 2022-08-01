/*
Exercise No. 08

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

Create a query that displays the specified columns from the Stock table:
        - Sector
        - EPS
        - Ticker
        - Price

Sorted by columns accordingly:
        - Sector descending
        - EPS descending
*/
SELECT
    Sector
  , EPS
  , Ticker
  , Price
FROM
    Stock
ORDER BY
    Sector DESC
  , EPS DESC;