/*
Exercise No. 02

The SQL code that creates the table for this exercise is in the file create.sql.

The Stock table is given:
    CREATE TABLE Stock (
    Id         INTEGER PRIMARY KEY,
    Ticker     TEXT    NOT NULL,
    FullName   TEXT    NOT NULL,
    TradingDay TEXT    NOT NULL,
    Price      REAL    NOT NULL CHECK (Price > 0)
    );

Several records have been inserted into the table. Create a query that displays all records from the Stock table sorted
in descending order by the Price column.
*/
SELECT
    id
  , Ticker
  , FullName
  , TradingDay
  , Price
FROM
    Stock
ORDER BY
    Price DESC;