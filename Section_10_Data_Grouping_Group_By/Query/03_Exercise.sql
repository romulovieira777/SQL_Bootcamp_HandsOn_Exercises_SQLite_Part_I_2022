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

Group data at the Stock level. Then, find the average EPS for each sector and assign the alias AvgEPSPerSector. Sort the
result by the AvgEPSPerSector columns in descending order.
*/
SELECT
    Sector
  , AVG(EPS) AS AvgEPSPerSector
FROM
    Stock
GROUP BY
    Sector
ORDER BY
    AvgEPSPerSector DESC;