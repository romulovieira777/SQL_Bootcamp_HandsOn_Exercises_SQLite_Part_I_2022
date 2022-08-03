/*
Exercise No. 05

The SQL code that creates the table for this exercise is in the file create.sql.

The following table is given:

    CREATE TABLE Stock (
        Id          INTEGER PRIMARY KEY
      , Ticker      TEXT    NOT NULL
      , FullName    TEXT    NOT NULL
      , TradingDay  TEXT    NOT NULL
      , Price       REAL    NOT NULL CHECK (Price > 0)
      , Sector      TEXT    NOT NULL
      , EPS         REAL
    );

Create a query that displays records for companies whose price is less than $ 100 or greater than $ 1000 (Price Column).
*/
SELECT
    *
FROM
    Stock
WHERE
    Price < 100 OR Price > 1000;