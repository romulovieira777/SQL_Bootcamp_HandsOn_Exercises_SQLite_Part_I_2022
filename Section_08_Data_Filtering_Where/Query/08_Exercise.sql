/*
Exercise No. 08

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

Create a query that displays records for companies with a price between $ 100 and $ 300 (Price Column).

Tip: Use the BETWEEN ...AND ... clause.
*/
SELECT
    *
FROM
    Stock
WHERE
    Price BETWEEN 100 AND 300;