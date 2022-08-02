/*
Exercise No. 06

The SQL code that creates the table for this exercise is in the file create.sql.

The Stock table is given:
    CREATE TABLE Stock (
        Id         INTEGER PRIMARY KEY
      , Ticker     TEXT    NOT NULL
      , FullName   TEXT    NOT NULL
      , TradingDay TEXT    NOT NULL
      , Price      REAL    NOT NULL CHECK (Price > 0)
      , Sector     TEXT    NOT NULL
      , EPS        REAL
    );

Kolumna EPS - Earnings Per Share oznacza zysk na akcję. Do tabeli wstawiono kilka rekordów.

Create a query that displays the following columns from the Stock table:
    - Ticker
    - Price
    - EPS

Sort the result by the EPS column in descending order. Then skip the first three records and display the next five
records.
*/
SELECT
    Ticker
  , Price
  , EPS
FROM
    Stock
ORDER BY
    EPS DESC
LIMIT
    5
OFFSET
    3;