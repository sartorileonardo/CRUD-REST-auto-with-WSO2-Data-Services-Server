CREATE DATABASE IF NOT EXISTS control_product_db;
USE control_product_db;

CREATE TABLE IF NOT EXISTS product(
id_product					INT 						NOT NULL 	AUTO_INCREMENT,
product_name				VARCHAR(65) 				NOT NULL,
product_price				DECIMAL(7,2) 	UNSIGNED	NOT NULL,
product_description			VARCHAR(255) 					NULL,
product_amount				INT	UNSIGNED				NOT NULL,	
product_date_created				DATE				NULL,
is_active							TINYINT(1)	DEFAULT 1 	NOT NULL,

CONSTRAINT productKey PRIMARY KEY(id_product)

);