/*
Exercise No. 09

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

Create a query that displays records for companies whose price is not in the range [100, 300] (Price Column).

Tip: Use the NOT BETWEEN ...AND ... clause.
*/
SELECT
    *
FROM
    Stock
WHERE
    Price NOT BETWEEN 100 AND 300;