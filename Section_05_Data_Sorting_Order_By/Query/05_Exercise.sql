/*
Exercise No. 05

The SQL code that creates the table for this exercises in the file create.sql.

The Stock is given:
    CREATE TABLE Stock (
        Id         INTEGER PRIMARY KEY,
        Ticker     TEXT    NOT NULL,
        FullName   TEXT    NOT NULL,
        TradingDay TEXT    NOT NULL,
        Price      REAL    NOT NULL CHECK (Price > 0),
        Sector     TEXT    NOT NULL,
        EPS        REAL
    );

EPS means Earnings Per Share. Create a query that displays all the data in the table sorted in ascending order by EPS.
Note the missing data in the table.
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
    EPS ASC;

