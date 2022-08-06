/*
Exercise No. 01

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
called TechFlag, which will take the value 'TECH' in case the word 'Technology' appears in the sector name, on the
contrary 'NON-TECH'.
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
        WHEN Sector LIKE '%Technology%' THEN 'TECH'
        ELSE 'NON-TECH'
    END AS TechFlag
FROM
    Stock;


-- method 02
SELECT
    *
  , CASE
        WHEN Sector LIKE '%Technology%' THEN 'TECH'
        ELSE 'NON-TECH'
    END AS TechFlag
FROM
    Stock;