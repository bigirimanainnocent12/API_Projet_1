
CREATE DATABASE VENTES;

USE [VENTES]

CREATE TABLE Clients (
    ID_clients VARCHAR(5) PRIMARY KEY,
	Nom_clients VARCHAR(12)
);

CREATE TABLE Regions ( 
	ID_Regions VARCHAR(5) PRIMARY KEY,
	Region VARCHAR(6)

	);

CREATE TABLE Produits (
	ID_produits VARCHAR(7) PRIMARY KEY,
	Categorie_produits VARCHAR(15),
	Nom_produit VARCHAR(15)
	);
CREATE TABLE VENTES(
    ID_Commande VARCHAR(10) PRIMARY KEY,
    Date_commande DATE,
    ID_clients VARCHAR(5),
    ID_produits VARCHAR(7),
    ID_Regions VARCHAR(5),
    Quantite INT,
    Prix_unitaire FLOAT,
    Prix_total FLOAT,
    Statut_commande VARCHAR(10),
    FOREIGN KEY (ID_clients) REFERENCES Clients(ID_clients),
    FOREIGN KEY (ID_produits) REFERENCES Produits(ID_produits),
    FOREIGN KEY (ID_Regions) REFERENCES Regions(ID_Regions)
);






