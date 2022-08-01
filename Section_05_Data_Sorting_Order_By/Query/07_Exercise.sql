/*
Exercise No. 07

The SQL code that creates the table for this exercise is in the file create.sql.

The Stock is given:
    CREATE TABLE Stock (
        Id         INTEGER PRIMARY KEY
      , Ticker     TEXT    NOT NULL
      , FullName   TEXT    NOT NULL
      , TradingDay TEXT    NOT NULL
      , Price      REAL    NOT NULL CHECK (Price > 0)
      , Sector     TEXT    NOT NULL
      , EPS        REAL
    );

Create a query that displays all the data from the Stock table sorted by columns:
    - Sector ascending
    - Ticker ascending
*/
SELECT
    id
  , Ticker
  , FullName
  , TradingDay
  , Price
  , Sector
  , EPS
FROM
    Stock
ORDER BY
    Sector ASC
  , Ticker ASC;