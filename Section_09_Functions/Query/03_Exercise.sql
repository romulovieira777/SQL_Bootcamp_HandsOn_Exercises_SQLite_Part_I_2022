/*
Exercise No. 03

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

Create a query that displays the number of NULL values in the EPS column. Assign the alias MissingEPS to the result.
*/
-- Method 01
SELECT
    COUNT(*) AS MissingEPS
FROM
    Stock
WHERE
    EPS IS NULL;


-- Method 02
SELECT
    COUNT(*) - COUNT(EPS) AS MissingEPS
FROM
    Stock;