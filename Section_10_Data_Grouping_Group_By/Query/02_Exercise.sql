/*
Exercise No. 02

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

Group data at the Stock level. Then, calculate the number of companies for each sector and assign an alias NumOfStocks.

Sort the result by the NumOfStocks columns in descending order.
*/
SELECT
    Sector
  , COUNT(*) AS NumOfStocks
FROM
    Stock
GROUP BY
    Sector
ORDER BY
    NumOfStocks DESC;