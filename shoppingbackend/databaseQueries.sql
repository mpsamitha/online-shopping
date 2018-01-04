CREATE TABLE category(
	id IDENTITY,
	name VARCHAR(50),
	description VARCHAR(255),
	image_url VARCHAR(50),
	is_active BOOLEAN,
	
	CONSTRAINT pk_category_id PRIMARY KEY (id)
	
);

INSERT INTO category(name, description, image_url, is_active) VALUES ('Laptop', 'This is description for Laptop category','CAT_1.png',true);
INSERT INTO category(name, description, image_url, is_active) VALUES ('Television', 'This is description for Television category','CAT_2.png',true);
INSERT INTO category(name, description, image_url, is_active) VALUES ('Mobile', 'This is description for Mobile category','CAT_3.png',true);

CREATE TABLE user_detail(
	id IDENTITY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	role VARCHAR(50),
	enabled BOOLEAN,
	password VARCHAR(50),
	email VARCHAR(100),
	contact_number VARCHAR(15),
	CONSTRAINT pk_user_id PRIMARY KEY(id),
);

INSERT INTO user_detail
(first_name, last_name, role, enabled, password, email, contact_number)
VALUES ('Samitha','Perera','ADMIN',true,'admin','sp@gmail.com','8888888888');

INSERT INTO user_detail
(first_name, last_name, role, enabled, password, email, contact_number)
VALUES ('Sam','Plitz','SUPPLIER',true,'12345','samplitz@gmail.com','9999999999');

INSERT INTO user_detail
(first_name, last_name, role, enabled, password, email, contact_number)
VALUES ('Sami','Pera','SUPPLIER',true,'12345','samipera@gmail.com','7777777777');


CREATE TABLE product(
	id IDENTITY,
	code VARCHAR(20),
	name VARCHAR(50),
	brand VARCHAR(50),
	description VARCHAR(255),
	unit_price DECIMAL(10,2),
	quantity INT,
	is_active BOOLEAN,
	category_id INT,
	supplier_id INT,
	purchases INT DEFAULT 0,
	views INT DEFAULT 0,
	CONSTRAINT pk_product_id PRIMARY KEY (id),
	CONSTRAINT fk_product_category_id FOREIGN KEY (category_id) REFERENCES category (id),
	CONSTRAINT fk_product_supplier_id FOREIGN KEY (supplier_id) REFERENCES user_detail (id),	
);

INSERT INTO product
(code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('PRDABC123DEFX','iPhone 5s', 'apple','This is one of the best phone available in the world', 4800, 2, true, 3, 2, 2, 5);

INSERT INTO product
(code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('PRDDEF123DEFX','Samsung s7', 'samsung','Smart phone by Samsung', 3100, 2, true, 3, 2, 1, 60);

INSERT INTO product
(code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('PRDPQR123WDTX','Google pixel', 'google','This is a smart phone by google', 3550, 2, true, 3, 3, 5, 9);

INSERT INTO product
(code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('PRDMNO123PQRX','Macbook pro', 'apple','This is one of the best Laptop available in the world', 6900, 2, true, 1, 3, 6, 8);

INSERT INTO product
(code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('PRDABCXYZDEFX','Dell Latitude E6510', 'dell','This is one of the best Laptop available in the world', 5800, 2, true, 1, 3, 7, 15);