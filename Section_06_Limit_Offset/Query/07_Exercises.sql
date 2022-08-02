/*
Exercise No. 07

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

Create a query that displays the third company with the highest EPS from the Stock table. Use the LIMIT and OFFSET
clauses for this exercises.
*/
SELECT
    *
FROM
    Stock
ORDER BY
    EPS DESC
LIMIT
    1
OFFSET
    2;
