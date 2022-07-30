/*
Exercise No. 03

The SQL code that creates the table for this exercise is in the file create.sql.

The Stock table is given:
    CREATE TABLE Stock (
    Id         INTEGER PRIMARY KEY,
    Ticker     TEXT    NOT NULL,
    FullName   TEXT    NOT NULL,
    TradingDay TEXT    NOT NULL,
    Price      REAL    NOT NULL CHECK (Price > 0)
    );

Several records have been inserted into the table. Create a query that displays the columns from the Stock table (in the
given order):
    - Ticker
    - FullName
    - Price

Sort the result by the Price column in descending order.
*/
SELECT
    Ticker
  , FullName
  , Price
FROM
    Stock
ORDER BY
    Price DESC;