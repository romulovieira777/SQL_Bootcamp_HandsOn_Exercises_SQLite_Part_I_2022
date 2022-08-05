/*
Exercise No. 06

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

Create a query that displays the lowest and highest values for EPS in the table. Assign the MinEPS and MaxEPS aliases
respectively.
*/
SELECT
    MIN(EPS) AS MinEPS
  , MAX(EPS) AS MaxEPS
FROM
    Stock;