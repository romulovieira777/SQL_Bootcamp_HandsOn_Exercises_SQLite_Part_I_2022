DROP TABLE IF EXISTS order_01_2021;
DROP TABLE IF EXISTS order_02_2021;
DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS brand;

CREATE TABLE category (
	category_id   INTEGER NOT NULL,
	category_name TEXT    NOT NULL,
	PRIMARY KEY (category_id)
);

CREATE TABLE brand (
	brand_id   INTEGER NOT NULL,
	brand_name TEXT    NOT NULL,
	PRIMARY KEY (brand_id)
);

CREATE TABLE product (
	product_id   INTEGER NOT NULL,
	product_name TEXT    NOT NULL,
	brand_id     INTEGER NOT NULL,
	category_id  INTEGER,
	model_year   INTEGER NOT NULL,
	list_price   REAL    NOT NULL,
	PRIMARY KEY (product_id),
	FOREIGN KEY (category_id) REFERENCES category (category_id),
	FOREIGN KEY (brand_id) REFERENCES brand (brand_id)
);

CREATE TABLE order_01_2021 (
	order_id   INTEGER NOT NULL,
	product_id INTEGER NOT NULL,
	quantity   INTEGER NOT NULL,
	PRIMARY KEY (order_id),
	FOREIGN KEY (product_id) REFERENCES product (product_id)
);

CREATE TABLE order_02_2021 (
	order_id   INTEGER NOT NULL,
	product_id INTEGER NOT NULL,
	quantity   INTEGER NOT NULL,
	PRIMARY KEY (order_id),
	FOREIGN KEY (product_id) REFERENCES product (product_id)
);

-- category
INSERT INTO category (category_id, category_name) VALUES (1, 'Children Bicycles');
INSERT INTO category (category_id, category_name) VALUES (2, 'Comfort Bicycles');
INSERT INTO category (category_id, category_name) VALUES (3, 'Cruisers Bicycles');
INSERT INTO category (category_id, category_name) VALUES (4, 'Cyclocross Bicycles');
INSERT INTO category (category_id, category_name) VALUES (5, 'Electric Bikes');
INSERT INTO category (category_id, category_name) VALUES (6, 'Mountain Bikes');
INSERT INTO category (category_id, category_name) VALUES (7, 'Road Bikes');

-- brand
INSERT INTO brand (brand_id, brand_name) VALUES (1, 'Electra');
INSERT INTO brand (brand_id, brand_name) VALUES (2, 'Haro');
INSERT INTO brand (brand_id, brand_name) VALUES (3, 'Heller');
INSERT INTO brand (brand_id, brand_name) VALUES (4, 'Pure Cycles');
INSERT INTO brand (brand_id, brand_name) VALUES (5, 'Ritchey');
INSERT INTO brand (brand_id, brand_name) VALUES (6, 'Strider');
INSERT INTO brand (brand_id, brand_name) VALUES (7, 'Sun Bicycles');
INSERT INTO brand (brand_id, brand_name) VALUES (8, 'Surly');
INSERT INTO brand (brand_id, brand_name) VALUES (9, 'Trek');

-- product
INSERT INTO product (product_id, product_name, brand_id, category_id, model_year, list_price) VALUES (1, 'Trek 820 - 2021', 9, 6, 2021, 379.99);
INSERT INTO product (product_id, product_name, brand_id, category_id, model_year, list_price) VALUES (2, 'Ritchey Timberwolf Frameset - 2021', 5, 6, 2021, 749.99);
INSERT INTO product (product_id, product_name, brand_id, category_id, model_year, list_price) VALUES (3, 'Surly Wednesday Frameset - 2021', 8, 6, 2021, 999.99);
INSERT INTO product (product_id, product_name, brand_id, category_id, model_year, list_price) VALUES (4, 'Trek Fuel EX 8 29 - 2021', 9, 6, 2021, 2899.99);
INSERT INTO product (product_id, product_name, brand_id, category_id, model_year, list_price) VALUES (5, 'Heller Shagamaw Frame - 2021', 3, 6, 2021, 1320.99);
INSERT INTO product (product_id, product_name, brand_id, category_id, model_year, list_price) VALUES (6, 'Surly Ice Cream Truck Frameset - 2021', 8, 6, 2021, 469.99);
INSERT INTO product (product_id, product_name, brand_id, category_id, model_year, list_price) VALUES (7, 'Trek Slash 8 27.5 - 2021', 9, 6, 2021, 3999.99);
INSERT INTO product (product_id, product_name, brand_id, category_id, model_year, list_price) VALUES (8, 'Trek Remedy 29 Carbon Frameset - 2021', 9, 6, 2021, 1799.99);
INSERT INTO product (product_id, product_name, brand_id, category_id, model_year, list_price) VALUES (9, 'Trek Conduit+ - 2021', 9, 5, 2021, 2999.99);
INSERT INTO product (product_id, product_name, brand_id, category_id, model_year, list_price) VALUES (10, 'Surly Straggler - 2021', 8, 4, 2021, 1549);
INSERT INTO product (product_id, product_name, brand_id, category_id, model_year, list_price) VALUES (11, 'Surly Straggler 650b - 2021', 8, 4, 2021, 1680.99);
INSERT INTO product (product_id, product_name, brand_id, category_id, model_year, list_price) VALUES (12, 'Electra Townie Original 21D - 2021', 1, 3, 2021, 549.99);
INSERT INTO product (product_id, product_name, brand_id, category_id, model_year, list_price) VALUES (13, 'Electra Cruiser 1 (24-Inch) - 2021', 1, 3, 2021, 269.99);
INSERT INTO product (product_id, product_name, brand_id, category_id, model_year, list_price) VALUES (14, 'Electra Girl''s Hawaii 1 (16-inch) - 2020/2021', 1, 3, 2021, 269.99);
INSERT INTO product (product_id, product_name, brand_id, category_id, model_year, list_price) VALUES (15, 'Electra Moto 1 - 2021', 1, 3, 2021, 529.99);

-- order_01_2021
INSERT INTO order_01_2021 (order_id, product_id, quantity) VALUES (1, 3, 1);
INSERT INTO order_01_2021 (order_id, product_id, quantity) VALUES (2, 12, 1);
INSERT INTO order_01_2021 (order_id, product_id, quantity) VALUES (3, 1, 2);
INSERT INTO order_01_2021 (order_id, product_id, quantity) VALUES (4, 4, 1);
INSERT INTO order_01_2021 (order_id, product_id, quantity) VALUES (5, 8, 3);
INSERT INTO order_01_2021 (order_id, product_id, quantity) VALUES (6, 9, 1);
INSERT INTO order_01_2021 (order_id, product_id, quantity) VALUES (7, 5, 1);

-- order_02_2021
INSERT INTO order_02_2021 (order_id, product_id, quantity) VALUES (1, 6, 1);
INSERT INTO order_02_2021 (order_id, product_id, quantity) VALUES (2, 10, 1);
INSERT INTO order_02_2021 (order_id, product_id, quantity) VALUES (3, 1, 2);
INSERT INTO order_02_2021 (order_id, product_id, quantity) VALUES (4, 2, 1);
INSERT INTO order_02_2021 (order_id, product_id, quantity) VALUES (5, 7, 3);
INSERT INTO order_02_2021 (order_id, product_id, quantity) VALUES (6, 8, 1);
INSERT INTO order_02_2021 (order_id, product_id, quantity) VALUES (7, 5, 2);
INSERT INTO order_02_2021 (order_id, product_id, quantity) VALUES (9, 11, 1);
INSERT INTO order_02_2021 (order_id, product_id, quantity) VALUES (10, 9, 1);