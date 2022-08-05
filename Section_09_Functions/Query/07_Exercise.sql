/*
Exercise No.07

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

Create a query that displays the following columns from the Stock table:
    - Id
    - Ticker
    - FullName

Also add a fourth column to the result that is the number of characters in the Ticker. Assign the alias TickerLength to
the fourth column.
*/
SELECT
    Id
  , Ticker
  , FullName
  , LENGTH(Ticker) AS TickerLength
FROM
    Stock;