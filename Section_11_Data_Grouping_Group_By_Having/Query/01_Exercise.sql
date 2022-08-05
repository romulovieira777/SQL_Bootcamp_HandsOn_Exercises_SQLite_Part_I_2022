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

Group data at the Sector level. Then find the average EPS for each sector and assign the alias AvgEPSPerSector. Display
sectors with AvgEPSPerSector above 10 and sort the result by the AvgEPSPerSector columns in descending order.
*/
SELECT
    Sector
  , AVG(EPS) AS AvgEPSPerSector
FROM
    Stock
GROUP BY
    Sector
HAVING
    AVG(EPS) > 10
ORDER BY
    AvgEPSPerSector DESC;