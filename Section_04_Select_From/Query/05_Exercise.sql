/*
Exercise No. 05

The SQL code that creates the table for this exercise is in the file create.sql.

The Stock table is given:
    CREATE TABLE Stock (
        Id         INTEGER PRIMARY KEY,
        Ticker     TEXT    NOT NULL,
        FullName   TEXT    NOT NULL,
        TradingDay TEXT    NOT NULL,
        Price      REAL    NOT NULL CHECK (Price > 0)
    );

Several records have been inserted into the table. Create a query that displays the columns in the following order:
    - FullName
    - Ticker
*/
SELECT
    FullName,
    Ticker
FROM
    Stock;