/*
Exercise No. 04

The SQL code that creates the table for this exercises in the file create.sql.

The Stock is given:
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
    - Price

Sort the result by the FullName column in ascending order.
*/
SELECT
    Ticker,
    Price
FROM
    Stock
ORDER BY
    FullName ASC;