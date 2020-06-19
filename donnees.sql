TRUNCATE TABLE Ville cascade;
TRUNCATE TABLE Hotel cascade;
TRUNCATE TABLE Gare cascade;
TRUNCATE TABLE Hotel_Gare cascade;
TRUNCATE TABLE Taxi cascade;
TRUNCATE TABLE Taxis_Gare cascade;
TRUNCATE TABLE Voyageur cascade;
TRUNCATE TABLE Employe cascade;
TRUNCATE TABLE Temps_plein cascade;
TRUNCATE TABLE Mi_temps cascade;
TRUNCATE TABLE Type_train cascade;
TRUNCATE TABLE Train cascade;
TRUNCATE TABLE Itineraire cascade;
TRUNCATE TABLE Portion cascade;
TRUNCATE TABLE Billet cascade;
TRUNCATE TABLE Trajet cascade;


INSERT INTO Ville(nom, GMT)
VALUES('Paris', 1);

INSERT INTO Ville(nom, GMT)
VALUES('Vincennes', 1);

INSERT INTO Ville(nom, GMT)
VALUES('Angers', 1);

INSERT INTO Ville(nom, GMT)
VALUES('Londres', 0);

INSERT INTO Ville(nom, GMT)
VALUES('Lisbonne', 0);

INSERT INTO Ville(nom, GMT)
VALUES('Moscou', 3);

INSERT INTO Ville(nom, GMT)
VALUES('Rome', 2);

INSERT INTO Ville(nom, GMT)
VALUES('Pekin', 8);


INSERT INTO Gare(nom, adresse, min_tps_plein, ville)
VALUES('St Lazare', '13 Rue d Amsterdam', 5, 'Paris');

INSERT INTO Gare(nom, adresse, min_tps_plein, ville)
VALUES('Montparnasse', '13 Rue de Montparnasse', 5, 'Paris');

INSERT INTO Gare(nom, adresse, min_tps_plein, ville)
VALUES('King Cross', 'Euston Road', 5, 'Londres');

INSERT INTO Gare(nom, adresse, min_tps_plein, ville)
VALUES('St Laud', '1, esplanade de la gare ', 3, 'Angers');

INSERT INTO Gare(nom, adresse, min_tps_plein, ville)
VALUES('Oriente', 'Avenida Dom João II MB', 2, 'Lisbonne');

INSERT INTO Gare(nom, adresse, min_tps_plein, ville)
VALUES('Leningrad', 'place Komsomolskaïa', 2, 'Moscou');

INSERT INTO Gare(nom, adresse, min_tps_plein, ville)
VALUES('Termini', ' Piazza dei Cinquecento, Termini', 2, 'Rome');

INSERT INTO Gare(nom, adresse, min_tps_plein, ville)
VALUES('Beijing', 'No.13 Hutongjia, Maojiawan, District de Dongcheng', 2, 'Pekin');


INSERT INTO Hotel(id, nom, adresse, tel, ville)
VALUES(101, 'Lucien et Marinette', '11 Rue de Chabrol', 331234567, 'Paris');

INSERT INTO Hotel(id, nom, adresse, tel, ville)
VALUES(102, 'Le Wit', '8 Rue de la Boule Rouge', 331234577, 'Paris');

INSERT INTO Hotel(id, nom, adresse, tel, ville)
VALUES(103, 'Les plumes Hotel', '10 Rue Lamartine', 331934567, 'Paris');

INSERT INTO Hotel(id, nom, adresse, tel, ville)
VALUES(104, 'Hôtel des Métallos', '50 Rue de la Folie Méricourt', 331234562, 'Paris');

INSERT INTO Hotel(id, nom, adresse, tel, ville)
VALUES(201, 'Hotel de la Gare', '50 Place de la gare', 332234792, 'Angers');

INSERT INTO Hotel(id, nom, adresse, tel, ville)
VALUES(301, 'Hotel de la Gare', '50 Place de la gare', 441234792, 'Londres');

INSERT INTO Hotel(id, nom, adresse, tel, ville)
VALUES(401, 'Hotel de la Plage', '50 Place de la plage', 35236792, 'Lisbonne');

INSERT INTO Hotel(id, nom, adresse, tel, ville)
VALUES(501, 'Hotel de la Pizza', '50 Place de la Bolognaise', 393456792, 'Rome');


INSERT INTO Hotel_Gare(hotel, gare)
VALUES(101, 'St Lazare');

INSERT INTO Hotel_Gare(hotel, gare)
VALUES(101, 'Montparnasse');

INSERT INTO Hotel_Gare(hotel, gare)
VALUES(102, 'St Lazare');

INSERT INTO Hotel_Gare(hotel, gare)
VALUES(102, 'Montparnasse');

INSERT INTO Hotel_Gare(hotel, gare)
VALUES(103, 'St Lazare');

INSERT INTO Hotel_Gare(hotel, gare)
VALUES(104, 'St Lazare');

INSERT INTO Hotel_Gare(hotel, gare)
VALUES(201, 'St Laud');

INSERT INTO Hotel_Gare(hotel, gare)
VALUES(301, 'King Cross');

INSERT INTO Hotel_Gare(hotel, gare)
VALUES(401, 'Oriente');

INSERT INTO Hotel_Gare(hotel, gare)
VALUES(501, 'Termini');


INSERT INTO Taxi(id, nom, adresse, tel, ville)
VALUES(111, 'Jacky', '2 rue des zouaves', 331222222, 'Paris');

INSERT INTO Taxi(id, nom, adresse, tel, ville)
VALUES(112, 'Rene', '2 rue des Poules', 331322222, 'Paris');

INSERT INTO Taxi(id, nom, adresse, tel, ville)
VALUES(113, 'Patrick', '3 rue des zouaves', 331227222, 'Vincennes');

INSERT INTO Taxi(id, nom, adresse, tel, ville)
VALUES(211, 'Paul', '2 rue des Chicanes', 331272222, 'Angers');

INSERT INTO Taxi(id, nom, adresse, tel, ville)
VALUES(311, 'Paulo', '2 rue des Loukoum', 35112222, 'Lisbonne');

INSERT INTO Taxi(id, nom, adresse, tel, ville)
VALUES(711, 'Lenin', '2 rue des Rouges', 71222222, 'Moscou');

INSERT INTO Taxi(id, nom, adresse, tel, ville)
VALUES(811, 'Chin', '2 rue des travailleurs', 861222222, 'Pekin');

INSERT INTO Taxi(id, nom, adresse, tel, ville)
VALUES(812, 'Chao', '2 Avenue des zouaves', 861227222, 'Pekin');

INSERT INTO Taxi(id, nom, adresse, tel, ville)
VALUES(813, 'Zen', '3 rue des zouaves', 862222222, 'Pekin');


INSERT INTO Taxis_Gare(taxi, gare)
VALUES(111, 'St Lazare');

INSERT INTO Taxis_Gare(taxi, gare)
VALUES(111, 'Montparnasse');

INSERT INTO Taxis_Gare(taxi, gare)
VALUES(112, 'St Lazare');

INSERT INTO Taxis_Gare(taxi, gare)
VALUES(112, 'Montparnasse');

INSERT INTO Taxis_Gare(taxi, gare)
VALUES(113, 'St Lazare');

INSERT INTO Taxis_Gare(taxi, gare)
VALUES(113, 'St Laud');

INSERT INTO Taxis_Gare(taxi, gare)
VALUES(211, 'St Laud');

INSERT INTO Taxis_Gare(taxi, gare)
VALUES(311, 'Oriente');

INSERT INTO Taxis_Gare(taxi, gare)
VALUES(711, 'Leningrad');

INSERT INTO Taxis_Gare(taxi, gare)
VALUES(811, 'Beijing');

INSERT INTO Taxis_Gare(taxi, gare)
VALUES(812, 'Beijing');

INSERT INTO Taxis_Gare(taxi, gare)
VALUES(813, 'Beijing');


INSERT INTO Voyageur(id, nom, prenom, adresse, tel, ddn)
VALUES(1000, 'Paul', 'Durand', '2 rue des roses', 331111111, TO_DATE('17/12/2000', 'DD/MM/YYYY'));

INSERT INTO Voyageur(id, nom, prenom, adresse, tel, ddn)
VALUES(1001, 'Rene', 'Durand', '2 rue des roses', 331111112, TO_DATE('17/12/1995', 'DD/MM/YYYY'));

INSERT INTO Voyageur(id, nom, prenom, adresse, tel, ddn)
VALUES(1002, 'Paul', 'Dupont', '2 rue des Lilas', 331111113, TO_DATE('17/12/1996', 'DD/MM/YYYY'));

INSERT INTO Voyageur(id, nom, prenom, adresse, tel, ddn)
VALUES(1003, 'Rene', 'Dupont', '2 rue des Lilas', 331111114, TO_DATE('17/12/1950', 'DD/MM/YYYY'));

INSERT INTO Voyageur(id, nom, prenom, adresse, tel, ddn)
VALUES(1004, 'Lucie', 'Martin', '2 rue des fleurs', 331111115, TO_DATE('17/12/1934', 'DD/MM/YYYY'));

INSERT INTO Voyageur(id, nom, prenom, adresse, tel, ddn)
VALUES(1005, 'Ursul', 'Le Coz', '2 rue des tours', 331111116, TO_DATE('17/12/1974', 'DD/MM/YYYY'));

INSERT INTO Voyageur(id, nom, prenom, adresse, tel, ddn)
VALUES(1006, 'Theo', 'Macron', '2 rue du riz', 331111117, TO_DATE('17/12/1953', 'DD/MM/YYYY'));


INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2000, 'Theo', 'Macron', '2 rue du riz', 331111118, 'Guichetier');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2001, 'Paul', 'Macron', '2 rue du riz', 331111119, 'Aiguilleur');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2002, 'Brigitte', 'Macron', '2 rue du riz', 331111120, 'Guichetier');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2003, 'Emmanuel', 'Macron', '2 rue du riz', 331111121, 'Aiguilleur');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2004, 'Bruno', 'Macron', '2 rue du riz', 331111122, 'Guichetier');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2005, 'Joseph', 'Macron', '2 rue du riz', 331111123, 'Guichetier');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2006, 'Edouard', 'Macron', '2 rue du riz', 331111124, 'Aiguilleur');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2007, 'Rene', 'Macron', '2 rue du riz', 331111125, 'Guichetier');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2008, 'Jose', 'Macron', '2 rue du riz', 331111126, 'Aiguilleur');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2009, 'Lucie', 'Macron', '2 rue du riz', 331111127, 'Guichetier');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2010, 'Anna', 'Macron', '2 rue du riz', 331111128, 'Aiguilleur');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2011, 'Gabrielle', 'Macron', '2 rue du riz', 331111129, 'Guichetier');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2012, 'Gabrielle', 'Macron', '2 rue du riz', 331111130, 'Aiguilleur');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2013, 'Ursula', 'Macron', '2 rue du riz', 331111131, 'Guichetier');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2014, 'Louana', 'Macron', '2 rue du riz', 331111132, 'Aiguilleur');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2015, 'Philippe', 'Macron', '2 rue du riz', 331111133, 'Guichetier');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2016, 'Helene', 'Macron', '2 rue du riz', 331111134, 'Aiguilleur');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2017, 'Leonie', 'Macron', '2 rue du riz', 331111135, 'Guichetier');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2018, 'Jeanne', 'Macron', '2 rue du riz', 331111136, 'Aiguilleur');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2019, 'Alice', 'Macron', '2 rue du riz', 331111137, 'Guichetier');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2020, 'Alice', 'Macron', '2 rue du riz', 331111138, 'Aiguilleur');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2021, 'Alice', 'Macron', '2 rue du riz', 331111139, 'Guichetier');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2022, 'Alice', 'Macron', '2 rue du riz', 331111140, 'Aiguilleur');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2023, 'Alice', 'Macron', '2 rue du riz', 331111141, 'Guichetier');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2024, 'Alice', 'Macron', '2 rue du riz', 331111142, 'Aiguilleur');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2025, 'Alice', 'Macron', '2 rue du riz', 331111143, 'Guichetier');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2026, 'Jeanne', 'Macron', '2 rue du riz', 331111144, 'Aiguilleur');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2027, 'Alice', 'Macron', '2 rue du riz', 331111145, 'Guichetier');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2028, 'Alice', 'Macron', '2 rue du riz', 331111146, 'Aiguilleur');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2029, 'Alice', 'Macron', '2 rue du riz', 331111147, 'Guichetier');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2030, 'Alice', 'Macron', '2 rue du riz', 331111148, 'Aiguilleur');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2031, 'Alice', 'Macron', '2 rue du riz', 331111149, 'Guichetier');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2032, 'Alice', 'Macron', '2 rue du riz', 331111150, 'Aiguilleur');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2033, 'Alice', 'Macron', '2 rue du riz', 331111151, 'Guichetier');

INSERT INTO Temps_plein(employe, gare)
VALUES(2000, 'St Lazare');

INSERT INTO Temps_plein(employe, gare)
VALUES(2001, 'St Lazare');

INSERT INTO Temps_plein(employe, gare)
VALUES(2002, 'St Lazare');

INSERT INTO Mi_temps(employe, gare)
VALUES(2003, 'St Lazare');

INSERT INTO Mi_temps(employe, gare)
VALUES(2004, 'St Lazare');

INSERT INTO Mi_temps(employe, gare)
VALUES(2005, 'St Lazare');

INSERT INTO Mi_temps(employe, gare)
VALUES(2006, 'St Lazare');

INSERT INTO Mi_temps(employe, gare)
VALUES(2003, 'Montparnasse');

INSERT INTO Mi_temps(employe, gare)
VALUES(2004, 'Montparnasse');

INSERT INTO Mi_temps(employe, gare)
VALUES(2005, 'Montparnasse');

INSERT INTO Mi_temps(employe, gare)
VALUES(2006, 'Montparnasse');

INSERT INTO Temps_plein(employe, gare)
VALUES(2007, 'Montparnasse');

INSERT INTO Temps_plein(employe, gare)
VALUES(2008, 'Montparnasse');

INSERT INTO Temps_plein(employe, gare)
VALUES(2009, 'Montparnasse');

INSERT INTO Temps_plein(employe, gare)
VALUES(2010, 'St Laud');

INSERT INTO Temps_plein(employe, gare)
VALUES(2011, 'St Laud');

INSERT INTO Mi_temps(employe, gare)
VALUES(2013, 'St Laud');

INSERT INTO Mi_temps(employe, gare)
VALUES(2014, 'St Laud');

INSERT INTO Temps_plein(employe, gare)
VALUES(2012, 'King Cross');

INSERT INTO Temps_plein(employe, gare)
VALUES(2015, 'King Cross');

INSERT INTO Temps_plein(employe, gare)
VALUES(2016, 'King Cross');

INSERT INTO Temps_plein(employe, gare)
VALUES(2017, 'King Cross');

INSERT INTO Temps_plein(employe, gare)
VALUES(2018, 'King Cross');

INSERT INTO Temps_plein(employe, gare)
VALUES(2019, 'Oriente');

INSERT INTO Temps_plein(employe, gare)
VALUES(2020, 'Leningrad');

INSERT INTO Temps_plein(employe, gare)
VALUES(2021, 'Leningrad');

INSERT INTO Temps_plein(employe, gare)
VALUES(2022, 'Termini');

INSERT INTO Temps_plein(employe, gare)
VALUES(2023, 'Termini');

INSERT INTO Temps_plein(employe, gare)
VALUES(2024, 'Beijing');

INSERT INTO Temps_plein(employe, gare)
VALUES(2025, 'Beijing');

INSERT INTO Temps_plein(employe, gare)
VALUES(2026, 'Beijing');

INSERT INTO Temps_plein(employe, gare)
VALUES(2027, 'Beijing');

INSERT INTO Temps_plein(employe, gare)
VALUES(2029, 'St Laud');

INSERT INTO Mi_temps(employe, gare)
VALUES(2030, 'St Laud');

INSERT INTO Mi_temps(employe, gare)
VALUES(2031, 'Montparnasse');

INSERT INTO Temps_plein(employe, gare)
VALUES(2033, 'Oriente');

INSERT INTO Temps_plein(employe, gare)
VALUES(2028, 'King Cross');

INSERT INTO Type_train(nom, nb_place_max, premiere_classe_dispo, vitesse_max)
VALUES('TGV', 500, true, 500);

INSERT INTO Type_train(nom, nb_place_max, premiere_classe_dispo, vitesse_max)
VALUES('TER', 250, true, 200);

INSERT INTO Type_train(nom, nb_place_max, premiere_classe_dispo, vitesse_max)
VALUES('Intercite', 250, false, 200);


INSERT INTO Train(numero, type)
VALUES(8000, 'TGV');

INSERT INTO Train(numero, type)
VALUES(8001, 'TGV');

INSERT INTO Train(numero, type)
VALUES(8002, 'TGV');

INSERT INTO Train(numero, type)
VALUES(8010, 'TER');

INSERT INTO Train(numero, type)
VALUES(8011, 'TER');

INSERT INTO Train(numero, type)
VALUES(8012, 'TER');

INSERT INTO Train(numero, type)
VALUES(8020, 'Intercite');

INSERT INTO Train(numero, type)
VALUES(8021, 'Intercite');

INSERT INTO Train(numero, type)
VALUES(8022, 'Intercite');

INSERT INTO Train(numero, type)
VALUES(8023, 'Intercite');


INSERT INTO Itineraire(id, type_train, train)
VALUES(10000, 'TGV', 8000);

INSERT INTO Itineraire(id, type_train, train)
VALUES(10001, 'TGV', 8001);

INSERT INTO Itineraire(id, type_train, train)
VALUES(10002, 'TER', 8011);

INSERT INTO Itineraire(id, type_train, train)
VALUES(10005, 'TER', 8010);

INSERT INTO Itineraire(id, type_train, train)
VALUES(10003, 'Intercite', 8021);

INSERT INTO Itineraire(id, type_train, train)
VALUES(10004, 'Intercite', 8023);


INSERT INTO Portion(itineraire, horaire_depart, depart, arrivee, horaire_arrivee, prix)
VALUES(10000, '2020-07-19 00:00:00', 'St Laud', 'Montparnasse', '2020-07-19 02:00:00', 30);

INSERT INTO Portion(itineraire, horaire_depart, depart, arrivee, horaire_arrivee, prix)
VALUES(10000, '2020-07-19 02:03:00', 'Montparnasse', 'King Cross', '2020-07-19 05:00:00', 35);

INSERT INTO Portion(itineraire, horaire_depart, depart, arrivee, horaire_arrivee, prix)
VALUES(10001, '2020-07-19 00:00:00', 'St Laud', 'Montparnasse', '2020-07-19 02:00:00', 30);

INSERT INTO Portion(itineraire, horaire_depart, depart, arrivee, horaire_arrivee, prix)
VALUES(10001, '2020-07-19 02:03:00', 'Montparnasse', 'Leningrad', '2020-07-19 15:00:00', 200);

INSERT INTO Portion(itineraire, horaire_depart, depart, arrivee, horaire_arrivee, prix)
VALUES(10001, '2020-07-19 15:03:00', 'Leningrad', 'Beijing', '2020-07-19 23:00:00', 500);

INSERT INTO Portion(itineraire, horaire_depart, depart, arrivee, horaire_arrivee, prix)
VALUES(10002, '2020-07-19 00:00:00', 'Oriente', 'St Laud', '2020-07-19 10:00:00', 100);

INSERT INTO Portion(itineraire, horaire_depart, depart, arrivee, horaire_arrivee, prix)
VALUES(10002, '2020-07-19 10:03:00', 'St Laud', 'Montparnasse', '2020-07-19 13:00:00', 30);

INSERT INTO Portion(itineraire, horaire_depart, depart, arrivee, horaire_arrivee, prix)
VALUES(10002, '2020-07-19 13:03:00', 'Montparnasse', 'Termini', '2020-07-19 17:00:00', 80);

INSERT INTO Portion(itineraire, horaire_depart, depart, arrivee, horaire_arrivee, prix)
VALUES(10005, '2020-07-19 13:03:00', 'King Cross', 'St Lazare', '2020-07-19 17:00:00', 60);

INSERT INTO Portion(itineraire, horaire_depart, depart, arrivee, horaire_arrivee, prix)
VALUES(10005, '2020-07-19 17:03:00', 'St Lazare', 'St Laud', '2020-07-19 19:00:00', 30);

INSERT INTO Portion(itineraire, horaire_depart, depart, arrivee, horaire_arrivee, prix)
VALUES(10005, '2020-07-19 19:03:00', 'St Laud', 'Termini', '2020-07-19 22:00:00', 80);

INSERT INTO Portion(itineraire, horaire_depart, depart, arrivee, horaire_arrivee, prix)
VALUES(10003, '2020-07-19 00:00:00', 'Oriente', 'St Laud', '2020-07-19 05:00:00', 100);

INSERT INTO Portion(itineraire, horaire_depart, depart, arrivee, horaire_arrivee, prix)
VALUES(10003, '2020-07-19 05:03:00', 'St Laud', 'St Lazare', '2020-07-19 08:00:00', 30);

INSERT INTO Portion(itineraire, horaire_depart, depart, arrivee, horaire_arrivee, prix)
VALUES(10003, '2020-07-19 08:03:00', 'St Lazare', 'Termini', '2020-07-19 10:00:00', 80);

INSERT INTO Portion(itineraire, horaire_depart, depart, arrivee, horaire_arrivee, prix)
VALUES(10003, '2020-07-19 10:03:00', 'Termini', 'Montparnasse', '2020-07-19 13:00:00', 100);

INSERT INTO Portion(itineraire, horaire_depart, depart, arrivee, horaire_arrivee, prix)
VALUES(10003, '2020-07-19 13:03:00', 'Montparnasse', 'Leningrad', '2020-07-19 17:00:00', 200);

INSERT INTO Portion(itineraire, horaire_depart, depart, arrivee, horaire_arrivee, prix)
VALUES(10003, '2020-07-19 17:03:00', 'Leningrad', 'Beijing', '2020-07-19 23:00:00', 500);

INSERT INTO Portion(itineraire, horaire_depart, depart, arrivee, horaire_arrivee, prix)
VALUES(10004, '2020-07-19 10:03:00', 'King Cross', 'St Lazare', '2020-07-19 12:00:00', 80);

INSERT INTO Portion(itineraire, horaire_depart, depart, arrivee, horaire_arrivee, prix)
VALUES(10004, '2020-07-19 12:03:00', 'St Lazare', 'Montparnasse', '2020-07-19 12:10:00', 2);

INSERT INTO Portion(itineraire, horaire_depart, depart, arrivee, horaire_arrivee, prix)
VALUES(10004, '2020-07-19 12:13:00', 'Montparnasse', 'Termini', '2020-07-19 17:10:00', 80);


INSERT INTO Billet(heure_achat, voyageur, paiement, internet, assurance)
VALUES('2020-05-19 12:13:00', 1000, 'CB', true, false);

INSERT INTO Billet(heure_achat, voyageur, paiement, internet, assurance)
VALUES('2020-05-18 12:13:00', 1001, 'espece', false, false);

INSERT INTO Billet(heure_achat, voyageur, paiement, internet, assurance)
VALUES('2020-05-17 12:13:00', 1002, 'cheque', true, true);

INSERT INTO Billet(heure_achat, voyageur, paiement, internet, assurance)
VALUES('2020-05-15 12:13:00', 1002, 'CB', true, true);

INSERT INTO Billet(heure_achat, voyageur, paiement, internet, assurance)
VALUES('2020-05-19 12:13:00', 1003, 'espece', false, false);

INSERT INTO Billet(heure_achat, voyageur, paiement, internet, assurance)
VALUES('2020-05-13 12:13:00', 1004, 'cheque', true, true);

INSERT INTO Billet(heure_achat, voyageur, paiement, internet, assurance)
VALUES('2020-05-14 12:13:00', 1005, 'CB', true, false);

INSERT INTO Billet(heure_achat, voyageur, paiement, internet, assurance)
VALUES('2020-05-11 12:13:00', 1005, 'espece', false, true);


INSERT INTO Trajet(billet_heure, voyageur, itineraire, depart, arrivee, siege)
VALUES('2020-05-19 12:13:00', 1000, 10000, '2020-07-19 00:00:00', '2020-07-19 02:03:00', 1);


INSERT INTO Trajet(billet_heure, voyageur, itineraire, depart, arrivee, siege)
VALUES('2020-05-17 12:13:00', 1002, 10001, '2020-07-19 00:00:00', '2020-07-19 02:03:00', 11);


INSERT INTO Trajet(billet_heure, voyageur, itineraire, depart, arrivee, siege)
VALUES('2020-05-15 12:13:00', 1002, 10002, '2020-07-19 00:00:00', '2020-07-19 13:03:00', 10);


INSERT INTO Trajet(billet_heure, voyageur, itineraire, depart, arrivee, siege)
VALUES('2020-05-19 12:13:00', 1003, 10003, '2020-07-19 05:03:00', '2020-07-19 10:03:00', 80);


INSERT INTO Trajet(billet_heure, voyageur, itineraire, depart, arrivee, siege)
VALUES('2020-05-13 12:13:00', 1004, 10004, '2020-07-19 12:03:00', '2020-07-19 12:03:00', 100);


INSERT INTO Trajet(billet_heure, voyageur, itineraire, depart, arrivee, siege)
VALUES('2020-05-14 12:13:00', 1005, 10005, '2020-07-19 13:03:00', '2020-07-19 13:03:00', 100);


INSERT INTO Trajet(billet_heure, voyageur, itineraire, depart, arrivee, siege)
VALUES('2020-05-11 12:13:00', 1005, 10004, '2020-07-19 12:03:00', '2020-07-19 12:13:00', 140);
