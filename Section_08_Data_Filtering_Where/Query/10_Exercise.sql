/*
Exercise No. 10

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

Create a query that displays records for companies whose Ticker is different from the given values: 'V', 'FB', 'PYPL'.

Tip: Use the NOT IN clause.
*/
SELECT
    *
FROM
    Stock
WHERE
    Ticker NOT IN ('V', 'FB', 'PYPL');