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

Create a query that displays all data from the Stock table. Additionally, using the SELECT CASE statement, add a column
called EPSLevel, that will split the EPS values into three levels:
    - EPS < 5 -> 'low'
    - 5 <= EPS < EPS < 10 -> 'medium'
    - EPS >= 10 -> 'high'

For NULL values in the EPS column, insert NULL values in the EPSLevel column.
*/
-- method 01
SELECT
    Id
  , Ticker
  , FullName
  , TradingDay
  , Price
  , Sector
  , EPS
  , CASE
        WHEN EPS < 5 THEN 'low'
        WHEN EPS >= 5 AND EPS < 10 THEN 'medium'
        WHEN EPS >= 10 THEN 'high'
        ELSE NULL
    END AS EPSLevel
FROM
    Stock;


-- method 02
SELECT
    *
  , CASE
        WHEN EPS IS NULL THEN NULL
        WHEN EPS < 5 THEN 'low'
        WHEN EPS < 10 THEN 'medium'
        ELSE 'high'
    END AS EPSLevel
FROM
    Stock;