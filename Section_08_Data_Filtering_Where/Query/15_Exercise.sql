/*
Exercise No. 15

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

Create a query that displays records for companies whose name contains the text 'INC' (column FullName).

Tip: Use the LIKE operator.
*/
SELECT
    *
FROM
    Stock
WHERE
    FullName LIKE '%INC%';