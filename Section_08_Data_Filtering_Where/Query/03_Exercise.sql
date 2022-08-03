/*
Exercise No. 03

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
Create a query that displays records for the following companies (Ticker column):
    - 'TSLA'
    - 'AMZN'
    - 'MSFT'

Use the IN operator in your solution.
*/
SELECT
    *
FROM
    Stock
WHERE
    Ticker IN ('TSLA', 'AMZN', 'MSFT');