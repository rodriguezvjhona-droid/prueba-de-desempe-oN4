CREATE TABLE city (
    id_city SERIAL PRIMARY KEY,
    city_name VARCHAR(100) NOT NULL,
    state VARCHAR(100),
    country VARCHAR(100)
);
CREATE TABLE supplier (
    id_supplier SERIAL PRIMARY KEY,
    supplier_name VARCHAR(150) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(200),
    id_city INT NOT NULL,

    CONSTRAINT fk_supplier_city
        FOREIGN KEY (id_city)
        REFERENCES city(id_city)
);
CREATE TABLE warehouse (
    id_warehouse SERIAL PRIMARY KEY,
    warehouse_name VARCHAR(150) NOT NULL,
    address VARCHAR(200),
    id_city INT NOT NULL,

    CONSTRAINT fk_warehouse_city
        FOREIGN KEY (id_city)
        REFERENCES city(id_city)
);
CREATE TABLE category (
    id_category SERIAL PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL,
    description VARCHAR(255)
);
CREATE TABLE product (
    id_product SERIAL PRIMARY KEY,
    product_name VARCHAR(150) NOT NULL,
    description VARCHAR(255),
    price DECIMAL(10,2),
    stock INT,
    id_category INT NOT NULL,

    CONSTRAINT fk_product_category
        FOREIGN KEY (id_category)
        REFERENCES category(id_category)
);
CREATE TABLE purchase (
    id_purchase SERIAL PRIMARY KEY,
    purchase_date DATE NOT NULL,
    total DECIMAL(12,2),
    id_supplier INT NOT NULL,

    CONSTRAINT fk_purchase_supplier
        FOREIGN KEY (id_supplier)
        REFERENCES supplier(id_supplier)
);
CREATE TABLE purchase_detail (
    id_detail SERIAL PRIMARY KEY,
    quantity INT NOT NULL,
    unit_price DECIMAL(10,2),
    id_purchase INT NOT NULL,
    id_product INT NOT NULL,

    CONSTRAINT fk_detail_purchase
        FOREIGN KEY (id_purchase)
        REFERENCES purchase(id_purchase),

    CONSTRAINT fk_detail_product
        FOREIGN KEY (id_product)
        REFERENCES product(id_product)
);
CREATE TABLE inventory_movement (
    id_movement SERIAL PRIMARY KEY,
    movement_type VARCHAR(20) NOT NULL,
    quantity INT NOT NULL,
    movement_date DATE,
    id_product INT NOT NULL,
    id_warehouse INT NOT NULL,

    CONSTRAINT fk_movement_product
        FOREIGN KEY (id_product)
        REFERENCES product(id_product),

    CONSTRAINT fk_movement_warehouse
        FOREIGN KEY (id_warehouse)
        REFERENCES warehouse(id_warehouse)
);