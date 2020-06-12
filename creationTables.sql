DROP TABLE IF EXISTS Ville cascade;
DROP TABLE IF EXISTS Hotel cascade;
DROP TABLE IF EXISTS Gare cascade;
DROP TABLE IF EXISTS Hotel_Gare cascade;
DROP TABLE IF EXISTS Taxi cascade;
DROP TABLE IF EXISTS Taxis_Gare cascade;
DROP TABLE IF EXISTS Voyageur cascade;
DROP TABLE IF EXISTS Employe cascade;
DROP TABLE IF EXISTS Temps_plein cascade;
DROP TABLE IF EXISTS Mi_temps cascade;
DROP TABLE IF EXISTS Type_train cascade;
DROP TABLE IF EXISTS Train cascade;
DROP TABLE IF EXISTS Itineraire cascade;
DROP TABLE IF EXISTS Portion cascade;
DROP TABLE IF EXISTS Billet cascade;
DROP TABLE IF EXISTS Trajet cascade;
DROP VIEW IF EXISTS vArriveeItineraire cascade;
DROP VIEW IF EXISTS vDepartItineraire cascade;
DROP VIEW IF EXISTS vItineraire cascade;
DROP VIEW IF EXISTS vHoraireItineraire cascade;
DROP VIEW IF EXISTS vPersonne cascade;
DROP VIEW IF EXISTS vGuichetier cascade;
DROP VIEW IF EXISTS vAiguilleur cascade;
DROP VIEW IF EXISTS vContrat cascade;
DROP VIEW IF EXISTS vMi_temps cascade;
DROP VIEW IF EXISTS vPortionBillet cascade;
DROP VIEW IF EXISTS vPrixInternet cascade;
DROP VIEW IF EXISTS vPrixNonInternet cascade;
DROP VIEW IF EXISTS vPrixBillet cascade;
DROP FUNCTION IF EXISTS fonction_personne;
DROP FUNCTION IF EXISTS fonction_contrat;
DROP FUNCTION IF EXISTS fonction_Mi_temps;
DROP FUNCTION IF EXISTS fonction_siege;
DROP FUNCTION IF EXISTS fonction_Type_Train_Trajet;


--**Ville**(#nom : string, GMT : integer)
CREATE TABLE Ville(
  nom VARCHAR PRIMARY KEY,
  GMT INTEGER NOT NULL,
  CHECK (GMT < 12 AND GMT > -12)
);

--**Gare**(#nom : string, adresse : string, min_tps_plein : integer, ville => Ville.nom)
CREATE TABLE Gare(
  nom VARCHAR PRIMARY KEY,
  adresse VARCHAR NOT NULL,
  min_tps_plein INTEGER NOT NULL,
  ville VARCHAR NOT NULL,
  FOREIGN KEY (ville) REFERENCES Ville(nom)
);


--**Hotel**(#id, nom : string, adresse : string, tel : integer, ville => Ville.nom)
CREATE TABLE Hotel(
  id INTEGER PRIMARY KEY,
  nom VARCHAR NOT NULL,
  adresse VARCHAR NOT NULL,
  tel INTEGER UNIQUE NOT NULL,
  ville VARCHAR NOT NULL,
  FOREIGN KEY (ville) REFERENCES Ville(nom)
);

--**Hotel_Gare**(#hotel => Hotel.id, #gare => Gare.nom)
CREATE TABLE Hotel_Gare(
  hotel INTEGER,
  gare VARCHAR,
  PRIMARY KEY (hotel, gare),
  FOREIGN KEY (hotel) REFERENCES Hotel(id),
  FOREIGN KEY (gare) REFERENCES gare(nom)
);

--**Taxi**(#id, nom : string, adresse : string, tel : integer, ville => Ville.nom)
CREATE TABLE Taxi(
  id INTEGER PRIMARY KEY,
  nom VARCHAR NOT NULL,
  adresse VARCHAR NOT NULL,
  tel INTEGER UNIQUE NOT NULL,
  ville VARCHAR NOT NULL,
  FOREIGN KEY (ville) REFERENCES Ville(nom)
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

--**Employe**(#id : integer, nom : string, prenom : string, adresse : string, tel : integer, metier : {Guichetier, Aiguilleur})
CREATE TABLE Employe(
  id INTEGER PRIMARY KEY,
  nom VARCHAR NOT NULL,
  prenom VARCHAR NOT NULL,
  adresse VARCHAR NOT NULL,
  tel INTEGER UNIQUE NOT NULL,
  metier VARCHAR CHECK (metier in ('Guichetier', 'Aiguilleur')) NOT NULL
);

--**Temps_plein**(#employe => Employer.id, #gare => Gare.nom)
CREATE TABLE Temps_plein(
  employe INTEGER UNIQUE NOT NULL,
  gare VARCHAR NOT NULL,
  PRIMARY KEY (employe, gare),
  FOREIGN KEY (employe) REFERENCES Employe(id),
  FOREIGN KEY (gare) REFERENCES Gare(nom)
);

--**Mi_temps**(#employe => Employer.id, #gare => Gare.nom)
CREATE TABLE Mi_temps(
  employe INTEGER NOT NULL,
  gare VARCHAR NOT NULL,
  PRIMARY KEY (employe, gare),
  FOREIGN KEY (employe) REFERENCES Employe(id),
  FOREIGN KEY (gare) REFERENCES Gare(nom)
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

--**Itineraire**(#id : int, type_train => Type_train)
CREATE TABLE Itineraire(
  id INTEGER PRIMARY KEY,
  type_train VARCHAR NOT NULL,
  FOREIGN KEY (type_train) REFERENCES Type_train(nom)
);

--**Portion**(#itineraire => Itineraire.id, #horaire_depart = timestamp, depart => Gare.nom, arrivee => Gare.nom, horaire_arrivee = timestamp)
CREATE TABLE Portion(
  itineraire INTEGER NOT NULL,
  horaire_depart TIMESTAMP NOT NULL,
  depart VARCHAR NOT NULL,
  arrivee VARCHAR NOT NULL,
  horaire_arrivee TIMESTAMP NOT NULL,
  PRIMARY KEY (itineraire, horaire_depart),
  FOREIGN KEY (itineraire) REFERENCES Itineraire(id),
  FOREIGN KEY (depart) REFERENCES Gare(nom),
  FOREIGN KEY (arrivee) REFERENCES Gare(nom),
  prix INTEGER NOT NULL,
  CHECK (horaire_arrivee > horaire_depart)
);

--**Billet**(#heure_achat : timestamp, #voyageur => Voyageur.id, paiement : {CB, espece, cheque}, prix : integer, internet : boolean, assurance : integer)
CREATE TABLE Billet(
  heure_achat TIMESTAMP NOT NULL,
  voyageur INTEGER NOT NULL,
  paiement VARCHAR CHECK (paiement in ('CB', 'espece', 'cheque')) NOT NULL,
  internet BOOLEAN NOT NULL,
  assurance BOOLEAN NOT NULL,
  PRIMARY KEY (heure_achat, voyageur),
  FOREIGN KEY (voyageur) REFERENCES Voyageur(id)
);

--**Trajet**(#billet_heure => Billet.heure_achat, #billet_voyageur => Billet.voyageur, #itineraire_portion => Portion.itineraire, #depart => Portion.horaire_depart, siege : int, train => Train.numero)
CREATE TABLE Trajet(
  billet_heure TIMESTAMP NOT NULL,
  voyageur INTEGER NOT NULL,
  itineraire INTEGER NOT NULL,
  depart TIMESTAMP NOT NULL,
  arrivee TIMESTAMP NOT NULL,
  siege INTEGER NOT NULL,
  train INTEGER NOT NULL,
  PRIMARY KEY (billet_heure, voyageur, itineraire, depart),
  FOREIGN KEY (billet_heure, voyageur) REFERENCES Billet(heure_achat, voyageur),
  FOREIGN KEY (itineraire, depart) REFERENCES Portion(itineraire, horaire_depart),
  FOREIGN KEY (itineraire, arrivee) REFERENCES Portion(itineraire, horaire_depart),
  CHECK (siege > 0)
);

--vPersonne = UNION(PROJECTION(**Employe**, nom, prenom, adresse, tel), PROJECTION(**Voyageur**, nom, prenom, adresse, tel))
CREATE VIEW vPersonne AS
SELECT nom, prenom, adresse, tel FROM Employe
UNION
SELECT nom, prenom, adresse, tel FROM Voyageur;

CREATE VIEW vGuichetier AS
SELECT nom, prenom, adresse, tel
FROM Employe
WHERE metier = 'Guichetier';

CREATE VIEW vAiguilleur AS
SELECT nom, prenom, adresse, tel
FROM Employe
WHERE metier = 'Aiguilleur';

CREATE VIEW vContrat AS
SELECT employe, gare FROM Temps_plein
UNION
SELECT employe, gare FROM Mi_temps;

CREATE VIEW vHoraireItineraire AS
SELECT MIN(P.horaire_depart)AS horaire_depart, I.id, MAX(P.horaire_arrivee) AS horaire_arrivee
FROM Portion P, Itineraire I
WHERE P.itineraire = I.id
GROUP BY I.id;

CREATE VIEW vDepartItineraire AS
SELECT vHI.horaire_depart, vHI.id, P.depart
FROM vHoraireItineraire vHI, Portion P
WHERE P.itineraire = vHI.id AND P.horaire_depart = vHI.horaire_depart;

CREATE VIEW vArriveeItineraire AS
SELECT vHI.horaire_arrivee, vHI.id, P.arrivee
FROM vHoraireItineraire vHI, Portion P
WHERE P.itineraire = vHI.id AND P.horaire_arrivee = vHI.horaire_arrivee;

CREATE VIEW vItineraire AS
SELECT vAI.id, vDI.depart, vDI.horaire_depart, vAI.arrivee, vAI.horaire_arrivee, I.type_train
FROM vArriveeItineraire vAI, vDepartItineraire vDI, Itineraire I
WHERE vAI.id = vDI.id AND vAI.id = I.id;

CREATE VIEW vPortionBillet AS
SELECT  P.depart, P.arrivee, B.heure_achat, B.voyageur, B.paiement, B.internet, B.assurance, T.siege, T.train, T.depart AS horaire_depart, P.prix
FROM Portion P, Billet B, Trajet T
WHERE (T.billet_heure = B.heure_achat) AND (T.voyageur = B.voyageur) AND (T.itineraire = P.itineraire) AND (T.depart = P.horaire_depart)
GROUP BY P.depart, P.arrivee, B.heure_achat, B.voyageur, B.paiement, B.internet, B.assurance, T.siege, T.train, T.depart, P.prix;

CREATE VIEW vPrixInternet AS
SELECT heure_achat, voyageur, SUM(prix) * 0.9 AS "prix"
FROM vPortionBillet
WHERE internet
GROUP BY heure_achat, voyageur;

CREATE VIEW vPrixNonInternet AS
SELECT heure_achat, voyageur, SUM(prix) AS "prix"
FROM vPortionBillet
WHERE NOT(internet)
GROUP BY heure_achat, voyageur;

CREATE VIEW vPrixBillet AS
SELECT heure_achat, voyageur, prix FROM vPrixNonInternet
UNION
SELECT heure_achat, voyageur, prix FROM vPrixInternet;

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

CREATE FUNCTION fonction_contrat()
  RETURNS trigger AS
$func$
BEGIN
IF EXISTS
    (
        (SELECT employe FROM Temps_plein)
        INTERSECT
        (SELECT employe FROM Mi_temps)
    )
THEN
   RAISE EXCEPTION 'Non, un employe ne peut pas être en mi temps et en plein temps à la fois';
END IF;
RETURN NEW;
END
$func$  LANGUAGE plpgsql;


CREATE CONSTRAINT TRIGGER trig_insff_Temps_plein
  AFTER INSERT OR UPDATE
  ON Temps_plein
  FOR EACH ROW EXECUTE PROCEDURE fonction_contrat();


CREATE CONSTRAINT TRIGGER trig_insff_Mi_temps
  AFTER INSERT OR UPDATE
  ON Mi_temps
  FOR EACH ROW EXECUTE PROCEDURE fonction_contrat();


CREATE FUNCTION fonction_Mi_temps()
  RETURNS trigger AS
$func$
BEGIN
IF EXISTS
    (
        (SELECT employe FROM Mi_temps GROUP BY employe HAVING COUNT(employe) > 2)
    )
THEN
   RAISE EXCEPTION 'Non, un employe ne peut pas avoir plus de 2 mi temps';
END IF;
RETURN NEW;
END
$func$  LANGUAGE plpgsql;


CREATE CONSTRAINT TRIGGER trig_insff_2_Mi_temps
  AFTER INSERT OR UPDATE
  ON Mi_temps
  FOR EACH ROW EXECUTE PROCEDURE fonction_Mi_temps();


CREATE FUNCTION fonction_siege()
  RETURNS trigger AS
$func$
BEGIN
IF EXISTS
    (
        (SELECT Tra.siege, Type.nb_place_max FROM Trajet Tra, Type_train Type, Itineraire WHERE Tra.itineraire = Itineraire.id AND Itineraire.type_train = Type.nom AND Tra.siege > Type.nb_place_max)
    )
THEN
   RAISE EXCEPTION 'Le numero du siege ne peut être supperieur au nombre de siege maximal';
END IF;
RETURN NEW;
END
$func$  LANGUAGE plpgsql;


CREATE CONSTRAINT TRIGGER trig_insff_siege
  AFTER INSERT OR UPDATE
  ON Trajet
  FOR EACH ROW EXECUTE PROCEDURE fonction_siege();

CREATE FUNCTION fonction_Type_Train_Trajet()
  RETURNS trigger AS
$func$
BEGIN
IF EXISTS
    (
        (SELECT Trajet.train FROM Trajet, Type_train Type, Train, Itineraire, Portion WHERE Trajet.train = Train.numero AND Trajet.itineraire = Portion.itineraire AND Portion.itineraire = Itineraire.id AND Train.type != Itineraire.type_train)
    )
THEN
   RAISE EXCEPTION 'Le type de train que vous entrez ne correspond pas au type de train pour cet itineraire';
END IF;
RETURN NEW;
END
$func$  LANGUAGE plpgsql;


CREATE CONSTRAINT TRIGGER trig_insff_Type_Train_Trajet
  AFTER INSERT OR UPDATE
  ON Trajet
  FOR EACH ROW EXECUTE PROCEDURE fonction_Type_Train_Trajet();
