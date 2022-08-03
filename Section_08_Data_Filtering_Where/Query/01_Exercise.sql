/*
Exercise No. 01

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

Create a query that displays a record for the company with the symbol 'TSLA' (Ticker column).
*/
SELECT
    *
FROM
    Stock
WHERE
    Ticker = 'TSLA';