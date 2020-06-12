DROP TABLE IF EXISTS Hotel cascade;
DROP TABLE IF EXISTS Gare cascade;
DROP TABLE IF EXISTS Hotel_Gare cascade;
DROP TABLE IF EXISTS Taxi cascade;
DROP TABLE IF EXISTS Taxis_Gare cascade;
DROP TABLE IF EXISTS Voyageur cascade;
DROP TABLE IF EXISTS Employe cascade;
DROP TABLE IF EXISTS Type_train cascade;
DROP TABLE IF EXISTS Train cascade;
DROP TABLE IF EXISTS Itineraire cascade;
DROP TABLE IF EXISTS Billet cascade;
DROP VIEW IF EXISTS vPersonne cascade;
DROP VIEW IF EXISTS vTemps_plein cascade;
DROP VIEW IF EXISTS vMi_temps cascade;
DROP VIEW IF EXISTS vNb_TP_Gare cascade;
DROP VIEW IF EXISTS vNb_MT_Gare cascade;
DROP VIEW IF EXISTS vContrat cascade;
DROP VIEW IF EXISTS vGuichetier cascade;
DROP VIEW IF EXISTS vAiguilleur cascade;
DROP VIEW IF EXISTS vArriveeItineraire cascade;
DROP VIEW IF EXISTS vDepartItineraire cascade;
DROP VIEW IF EXISTS vItineraire cascade;
DROP VIEW IF EXISTS vHoraireItineraire cascade;
DROP VIEW IF EXISTS vPortion cascade;
DROP FUNCTION IF EXISTS fonction_personne;


--**Gare**(#nom : string, adresse : JSON, min_tps_plein : integer)
CREATE TABLE Gare(
  nom VARCHAR PRIMARY KEY,
  adresse JSON NOT NULL,
  min_tps_plein INTEGER NOT NULL
);


--**Hotel**(#id, nom : string, adresse : JSON, tel : integer)
CREATE TABLE Hotel(
  id INTEGER PRIMARY KEY,
  nom VARCHAR NOT NULL,
  adresse JSON NOT NULL,
  tel INTEGER UNIQUE NOT NULL
);

--**Hotel_Gare**(#hotel => Hotel.id, #gare => Gare.nom)
CREATE TABLE Hotel_Gare(
  hotel INTEGER,
  gare VARCHAR,
  PRIMARY KEY (hotel, gare),
  FOREIGN KEY (hotel) REFERENCES Hotel(id),
  FOREIGN KEY (gare) REFERENCES gare(nom)
);

--**Taxi**(#id, nom : string, adresse : JSON, tel : integer)
CREATE TABLE Taxi(
  id INTEGER PRIMARY KEY,
  nom VARCHAR NOT NULL,
  adresse JSON NOT NULL,
  tel INTEGER UNIQUE NOT NULL
);

--**Taxis_Gare**(#taxi => Taxi.id, #gare => Gare.nom)
CREATE TABLE Taxis_Gare(
  taxi INTEGER NOT NULL,
  gare VARCHAR NOT NULL,
  PRIMARY KEY (taxi, gare),
  FOREIGN KEY (taxi) REFERENCES Taxi(id),
  FOREIGN KEY (gare) REFERENCES Gare(nom)
);

--**Voyageur**(#id : integer, nom : string, prenom : string, adresse : string, tel : integer)
CREATE TABLE Voyageur(
  id INTEGER PRIMARY KEY,
  nom VARCHAR NOT NULL,
  prenom VARCHAR NOT NULL,
  adresse VARCHAR NOT NULL,
  tel INTEGER UNIQUE NOT NULL,
  ddn DATE
);

--**Employe**(#id : integer, nom : string, prenom : string, adresse : string, tel : integer, metier : JSON)
CREATE TABLE Employe(
  id INTEGER PRIMARY KEY,
  nom VARCHAR NOT NULL,
  prenom VARCHAR NOT NULL,
  adresse VARCHAR NOT NULL,
  tel INTEGER UNIQUE NOT NULL,
  metier JSON NOT NULL
);

--**Type_train**(#nom : string, nb_place_max : integer, premiere_classe_dispo : boolean, vitesse_max : integer)
CREATE TABLE Type_train(
  nom VARCHAR PRIMARY KEY,
  nb_place_max INTEGER NOT NULL,
  premiere_classe_dispo BOOLEAN NOT NULL,
  vitesse_max INTEGER NOT NULL,
  CHECK (vitesse_max > 0),
  CHECK (nb_place_max > 0)
);

--**Train**(#numero, type => Type_train.nom)
CREATE TABLE Train(
  numero INTEGER PRIMARY KEY,
  type VARCHAR NOT NULL,
  FOREIGN KEY (type) REFERENCES Type_train(nom)
);

--**Itineraire**(#id : int, type_train => Type_train, numeroTrain => Train, portions : JSON)
CREATE TABLE Itineraire(
  id INTEGER PRIMARY KEY,
  type_train VARCHAR NOT NULL,
  numero_train INTEGER NOT NULL,
  portions JSON NOT NULL,
  FOREIGN KEY (type_train) REFERENCES Type_train(nom),
  FOREIGN KEY (numero_train) REFERENCES Train(numero)
);

--**Billet**(#heure_achat : timestamp, #voyageur => Voyageur.id, paiement : {CB, espece, cheque}, prix : integer, internet : boolean, assurance : integer, trajet : JSON)
CREATE TABLE Billet(
  heure_achat TIMESTAMP NOT NULL,
  voyageur INTEGER NOT NULL,
  paiement VARCHAR CHECK (paiement in ('CB', 'espece', 'cheque')) NOT NULL,
  internet BOOLEAN NOT NULL,
  assurance BOOLEAN NOT NULL,
  trajet JSON NOT NULL,
  PRIMARY KEY (heure_achat, voyageur),
  FOREIGN KEY (voyageur) REFERENCES Voyageur(id)
);

--vPersonne = UNION(PROJECTION(**Employe**, nom, prenom, adresse, tel), PROJECTION(**Voyageur**, nom, prenom, adresse, tel))
CREATE VIEW vPersonne AS
SELECT nom, prenom, adresse, tel FROM Employe
UNION
SELECT nom, prenom, adresse, tel FROM Voyageur;

CREATE VIEW vTemps_plein AS
SELECT E.id, E.metier->>'contrat' AS contrat,  E.metier->'gare'->>0 AS gare
FROM Employe E
WHERE E.metier->>'contrat' = 'Temps_plein';

CREATE VIEW vMi_temps AS
SELECT E.id, E.metier->>'contrat' AS contrat,  E.metier->'gare'->>0 AS gare
FROM Employe E
WHERE E.metier->>'contrat' = 'Mi_temps'
UNION
SELECT E.id, E.metier->>'contrat' AS contrat, E.metier->'gare'->>1 AS gare
FROM Employe E
WHERE E.metier->>'contrat' = 'Mi_temps' and E.metier->'gare'->>1 IS NOT NULL;

CREATE VIEW vNb_TP_Gare AS
SELECT G.nom AS gare, COUNT(TP.id) AS TP
FROM Gare G, vTemps_plein TP
WHERE G.nom = TP.gare
GROUP BY G.nom;

CREATE VIEW vNb_MT_Gare AS
SELECT G.nom AS gare, COUNT(MP.id) AS MT
FROM Gare G, vMi_temps MP
WHERE G.nom = MP.gare
GROUP BY G.nom;

CREATE VIEW vContrat AS
SELECT *
FROM vNb_MT_Gare
NATURAL JOIN vNb_TP_Gare;

CREATE VIEW vGuichetier AS
SELECT nom, prenom, adresse, tel
FROM Employe
WHERE metier->>'metier' = 'guichetier';

CREATE VIEW vAiguilleur AS
SELECT nom, prenom, adresse, tel
FROM Employe
WHERE metier->>'metier' = 'aiguilleur';

CREATE VIEW vHoraireItineraire AS
SELECT MIN(P.horaire_depart)AS horaire_depart, I.id, MAX(P.horaire_arrivee) AS horaire_arrivee
FROM Itineraire I, JSON_TO_RECORDSET(I.portions) P (horaire_depart TIMESTAMP, gare_depart VARCHAR, horaire_arrivee TIMESTAMP, gare_arrivee VARCHAR, prix INTEGER)
GROUP BY I.id;

CREATE VIEW vDepartItineraire AS
SELECT vHI.horaire_depart, vHI.id, P.gare_depart
FROM vHoraireItineraire vHI, Itineraire I, JSON_TO_RECORDSET(I.portions) P (horaire_depart TIMESTAMP, gare_depart VARCHAR, horaire_arrivee TIMESTAMP, gare_arrivee VARCHAR, prix INTEGER)
WHERE I.id = vHI.id AND P.horaire_depart = vHI.horaire_depart;

CREATE VIEW vArriveeItineraire AS
SELECT vHI.horaire_arrivee, vHI.id, P.gare_arrivee
FROM vHoraireItineraire vHI, Itineraire I, JSON_TO_RECORDSET(I.portions) P (horaire_depart TIMESTAMP, gare_depart VARCHAR, horaire_arrivee TIMESTAMP, gare_arrivee VARCHAR, prix INTEGER)
WHERE I.id = vHI.id AND P.horaire_arrivee = vHI.horaire_arrivee;

CREATE VIEW vItineraire AS
SELECT vAI.id, vDI.gare_depart, vDI.horaire_depart, vAI.gare_arrivee, vAI.horaire_arrivee, I.type_train
FROM vArriveeItineraire vAI, vDepartItineraire vDI, Itineraire I
WHERE vAI.id = vDI.id AND vAI.id = I.id;


CREATE VIEW vPortion AS
SELECT I.id, I.type_train, I.numero_train, P.horaire_depart, P.gare_depart, P.horaire_arrivee, P.gare_arrivee, P.prix
FROM Itineraire I,
JSON_TO_RECORDSET(I.portions) P (horaire_depart TIMESTAMP, gare_depart VARCHAR, horaire_arrivee TIMESTAMP, gare_arrivee VARCHAR, prix INTEGER);


CREATE FUNCTION fonction_personne()
  RETURNS trigger AS
$func$
BEGIN
IF EXISTS
    (
        (SELECT id FROM Voyageur)
        INTERSECT
        (SELECT id FROM Employe)
    )
THEN
   RAISE EXCEPTION 'Non, un voyageur ne peut pas etre un employe ni l inverse.';
END IF;
RETURN NEW;
END
$func$  LANGUAGE plpgsql;


CREATE CONSTRAINT TRIGGER trig_insff_Voyageur
  AFTER INSERT OR UPDATE
  ON Voyageur
  FOR EACH ROW EXECUTE PROCEDURE fonction_personne();


CREATE CONSTRAINT TRIGGER trig_insff_Employe
  AFTER INSERT OR UPDATE
  ON Employe
  FOR EACH ROW EXECUTE PROCEDURE fonction_personne();
