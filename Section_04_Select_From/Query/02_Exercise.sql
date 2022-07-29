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

Several records have been inserted into the table. Create a query that displays the columns (in the given order) from
the Stock table:
    - Ticker
    - FullName
    - Price
*/
SELECT
    Ticker,
    FullName,
    Price
FROM
    Stock;