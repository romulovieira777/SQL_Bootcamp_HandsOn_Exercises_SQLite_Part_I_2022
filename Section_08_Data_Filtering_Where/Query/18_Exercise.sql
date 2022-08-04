/*
Exercise No. 18

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

Create a query that displays records for companies whose sector name contains the text 'TECH' (Sector column) and the
EPS value is above $ 5.
*/
SELECT
    *
FROM
    Stock
WHERE
    Sector LIKE '%TECH%' AND EPS > 5;