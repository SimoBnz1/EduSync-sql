/*1. Création des Tables*/

CREATE DATABASE worckshop_sql;
USE worckshop_sql;
CREATE Table clients (
    id_client int AUTO_INCREMENT PRIMARY KEY ,
    nom varchar(20),
    email varchar(20) UNIQUE
    );

CREATE Table commands(
    id_command int AUTO_INCREMENT PRIMARY KEY,
    date_command date ,
    montant DECIMAL(6,2),
    id_client int ,
    Foreign Key (id_client) REFERENCES clients(id_client)
);

/*2. Insertion de Données*/

INSERT INTO clients(nom,email)
VALUES('sara','sara@gmail.com'),
('amine','amine@gmail.com'),
('rida','rida@gmail.com');

INSERT INTO commands(id_client,date_command,montant)
VALUES(1,'2025-01-02',100),
(2,'2026-01-02',200),
(1,'2024-01-02',150),
(NULL,'2000-07-02',900),
(NULL,'2025-01-02',120);

/* Exercice 1 : INNER JOIN
Affichez tous les clients qui ont passé au moins une commande avec les détails
de leurs commandes. */

SELECT cl.nom,cd.id_client,cd.id_command,cd.date_command,cd.montant
FROM clients cl
INNER JOIN commands cd ON cl.id_client = cd.id_client ;
SELECT * FROM clients ;


/*Exercice 2 : LEFT JOIN
Affichez tous les clients avec leurs commandes, y compris ceux qui n'ont jamais
commandé. */
SELECT cl.nom,cd.id_client,cd.id_command,cd.date_command,cd.montant
FROM clients cl
LEFT JOIN commands cd ON cl.id_client = cd.id_client ;

/*Exercice 3 : RIGHT JOIN
Affichez toutes les commandes avec les clients qui les ont passées, en incluant
aussi les commandes dont le client n'existe pas (au cas où un client aurait été
supprimé).*/

SELECT cl.nom,cd.id_client,cd.id_command,cd.date_command,cd.montant
FROM clients cl
RIGHT JOIN commands cd ON cl.id_client = cd.id_client ;

/*Exercice 4 : Clients sans commandes
Affichez la liste des clients qui n'ont jamais passé de commande.*/

SELECT * FROM clients cl
LEFT JOIN commands cm on cl.id_client = cm.id_client
WHERE cm.id_client IS NULL;

/*Exercice 5 : Nombre total de commandes par client
Affichez chaque client avec le nombre total de commandes qu'il a passées. */
SELECT * FROM commands ;
SELECT c.nom, COUNT(cm.id_command) AS total_commandes
FROM clients c
LEFT JOIN commands cm ON c.id_client = cm.id_client
GROUP BY c.id_client;

/*Exercice 6 : Montant total des commandes par client
Affichez chaque client avec le montant total de ses commandes. */

SELECT cl.nom, SUM(cm.montant) as total_montant 
FROM commands cm 
INNER JOIN clients cl on cm.id_client =cl.id_client
GROUP BY cl.nom;

/*Exercice 7 : Dernière commande de chaque client
Affichez le nom des clients et la date de leur dernière commande.*/
SELECT cl.nom,MAX(cm.date_command) as dernier_command
FROM clients cl
INNER JOIN commands cm on cl.id_client =cm.id_client
GROUP BY cl.nom;

/*Exercice 8 : Clients ayant dépensé plus de 200 DH
Affichez les clients qui ont dépensé plus de 200 DH en commandes. */

SELECT cl.nom ,cm.montant
FROM clients cl 
INNER JOIN commands cm on cl.id_client=cm.id_client
WHERE cm.montant >200 ;

