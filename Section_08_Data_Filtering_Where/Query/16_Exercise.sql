/*
Exercise No. 16

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

Create a query that displays records for companies whose names contain the text 'INC' (column FullName) and the Ticker
is exactly 4 characters long.
*/
SELECT
    *
FROM
    Stock
WHERE
    FullName LIKE '%INC%' AND LENGTH(Ticker) = 4;