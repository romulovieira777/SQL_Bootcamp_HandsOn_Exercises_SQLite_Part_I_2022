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

Create a query that displays unique values for the Sector column (unique sector name) from the Stock table.
*/
SELECT
    DISTINCT Sector
FROM
    Stock;
