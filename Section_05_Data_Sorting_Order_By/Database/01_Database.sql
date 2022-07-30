DROP TABLE IF EXISTS Stock;
 
CREATE TABLE Stock (
	Id         INTEGER PRIMARY KEY,
	Ticker     TEXT    NOT NULL,
	FullName   TEXT    NOT NULL,
	TradingDay TEXT    NOT NULL,
	Price      REAL    NOT NULL CHECK (Price > 0)
);
 
INSERT INTO Stock (Id, Ticker, FullName, TradingDay, Price) 
VALUES (1, 'AAPL', 'APPLE INC.', '2021-02-03', 134.99);
INSERT INTO Stock (Id, Ticker, FullName, TradingDay, Price) 
VALUES (2, 'MSFT', 'MICROSOFT CORP.', '2021-02-03', 240.7);
INSERT INTO Stock (Id, Ticker, FullName, TradingDay, Price) 
VALUES (3, 'AMZN', 'AMAZON COM INC', '2021-02-03', 3380.29);
INSERT INTO Stock (Id, Ticker, FullName, TradingDay, Price) 
VALUES (4, 'GOOGL', 'ALPHABET INC (GOOGLE) CLASS A', '2021-02-03', 2040.09);
INSERT INTO Stock (Id, Ticker, FullName, TradingDay, Price) 
VALUES (5, 'FB', 'FACEBOOK INC', '2021-02-03', 264.88);
INSERT INTO Stock (Id, Ticker, FullName, TradingDay, Price) 
VALUES (6, 'TSLA', 'TESLA INC', '2021-02-03', 864.75);
INSERT INTO Stock (Id, Ticker, FullName, TradingDay, Price) 
VALUES (7, 'BABA', 'ALIBABA GROUP HOLDINGS LTD.', '2021-02-03', 264.70);
INSERT INTO Stock (Id, Ticker, FullName, TradingDay, Price) 
VALUES (8, 'V', 'VISA INC', '2021-02-03', 202.83);
INSERT INTO Stock (Id, Ticker, FullName, TradingDay, Price) 
VALUES (9, 'PYPL', 'PAYPAL HOLDINGS INC', '2021-02-03', 251.93);
INSERT INTO Stock (Id, Ticker, FullName, TradingDay, Price) 
VALUES (10, 'ORCL', 'ORACLE CORP', '2021-02-03', 62.26);
