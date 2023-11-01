CREATE DATABASE crudproduit;

CREATE TABLE category
(
    category_id SERIAL PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

CREATE TABLE product 
(
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(512) NOT NULL,
    price DECIMAL(7,2) NOT NULL,
    quantity INT NOT NULL,
    category_id INT NOT NULL,
    CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES category (category_id)
);

CREATE TABLE "user"
(
    user_id SERIAL PRIMARY KEY,
    user_name VARCHAR(255) NOT NULL,
    firstname VARCHAR(255) NOT NULL,
    email VARCHAR(320) UNIQUE NOT NULL,
    password CHAR(60) NOT NULL
);