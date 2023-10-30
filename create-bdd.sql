CREATE DATABASE crudproduit;

CREATE TABLE categorie
(
    id SERIAL PRIMARY KEY,
    nom	VARCHAR(255) NOT NULL
);

CREATE TABLE produit 
(
    id SERIAL PRIMARY KEY,
    nom	VARCHAR(512) NOT NULL,
    prix DECIMAL(7,2) NOT NULL,
    quantite INT NOT NULL,
    id_categorie INT NOT NULL,
    CONSTRAINT fk_categorie FOREIGN KEY (id_categorie) REFERENCES categorie (id)
);

CREATE TABLE utilisateur 
(
    id SERIAL PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL,
    email VARCHAR(320) UNIQUE NOT NULL,
    mot_de_passe CHAR(60) NOT NULL
);