TRUNCATE TABLE Hotel cascade;
TRUNCATE TABLE Gare cascade;
TRUNCATE TABLE Hotel_Gare cascade;
TRUNCATE TABLE Taxi cascade;
TRUNCATE TABLE Taxis_Gare cascade;
TRUNCATE TABLE Voyageur cascade;
TRUNCATE TABLE Employe cascade;
TRUNCATE TABLE Type_train cascade;
TRUNCATE TABLE Train cascade;
TRUNCATE TABLE Itineraire cascade;
TRUNCATE TABLE Billet cascade;

INSERT INTO Gare(nom, adresse, min_tps_plein)
VALUES('St Lazare', '{"numero":13, "rue": "Rue d Amsterdam", "cp":75002, "ville": "Paris", "GMT" : 1}', 5);

INSERT INTO Gare(nom, adresse, min_tps_plein)
VALUES('Montparnasse', '{"numero" : 13, "rue": "Rue de Montparnasse", "cp" : 75012, "ville" : "Paris", "GMT" : 1}', 5);

INSERT INTO Gare(nom, adresse, min_tps_plein)
VALUES('King Cross', '{"rue": "Euston Road", "cp" : 55555, "ville" : "Londres", "GMT" : 0}', 5);

INSERT INTO Gare(nom, adresse, min_tps_plein)
VALUES('St Laud', '{"numero": 1, "rue": "Esplanade de la Gare", "cp" : 49000, "ville" : "Angers", "GMT" : 1}', 3);

INSERT INTO Gare(nom, adresse, min_tps_plein)
VALUES('Oriente', '{"rue": "Avenida Dom João II MB", "cp" : 88888, "ville" : "Lisbonne", "GMT" : -1}', 2);

INSERT INTO Gare(nom, adresse, min_tps_plein)
VALUES('Leningrad', '{"rue": "place Komsomolskaïa", "cp" : 88888, "ville" : "Moscou", "GMT" : 6}', 2);

INSERT INTO Gare(nom, adresse, min_tps_plein)
VALUES('Termini', '{"rue": "Piazza dei Cinquecento", "cp" : 88888, "ville" : "Rome", "GMT" : 2}', 2);

INSERT INTO Gare(nom, adresse, min_tps_plein)
VALUES('Beijing', '{"numero" : 13, "rue": "Hutongjia, Maojiawan, District de Dongcheng", "cp" : 99999, "ville" : "Pekin", "GMT" : 10}', 2);


INSERT INTO Hotel(id, nom, adresse, tel)
VALUES(101, 'Lucien et Marinette', '{"numero" : 11, "rue": "Rue de Chabrol", "cp" : 75001, "ville" : "Paris"}', 331234567);

INSERT INTO Hotel(id, nom, adresse, tel)
VALUES(102, 'Le Wit', '{"numero" : 8, "rue": "Rue de la Boule Rouge", "cp" : 75001, "ville" : "Paris"}', 331234577);

INSERT INTO Hotel(id, nom, adresse, tel)
VALUES(103, 'Les plumes Hotel', '{"numero" : 10, "rue": "Rue Lamartine", "cp" : 75001, "ville" : "Paris"}', 331934567);

INSERT INTO Hotel(id, nom, adresse, tel)
VALUES(104, 'Hôtel des Métallos', '{"numero" : 50, "rue": "Rue de la Folie Méricourt", "cp" : 75001, "ville" : "Paris"}', 331234562);

INSERT INTO Hotel(id, nom, adresse, tel)
VALUES(201, 'Hotel de la Gare', '{"numero" : 50, "rue": "Place de la gare", "cp" : 49000, "ville" : "Angers"}', 332234792);

INSERT INTO Hotel(id, nom, adresse, tel)
VALUES(301, 'Hotel de la Gare', '{"numero" : 50, "rue": "Place de la gare", "cp" : 55555, "ville" : "Londres"}', 441234792);

INSERT INTO Hotel(id, nom, adresse, tel)
VALUES(401, 'Hotel de la Plage', '{"numero" : 50, "rue": "Place de la plage", "cp" : 88888, "ville" : "Lisbonne"}', 35236792);

INSERT INTO Hotel(id, nom, adresse, tel)
VALUES(501, 'Hotel de la Pizza', '{"numero" : 50, "rue": "Place de la Bolognaise", "cp" : 99999, "ville" : "Rome"}', 393456792);


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


INSERT INTO Taxi(id, nom, adresse, tel)
VALUES(111, 'Jacky', '{"numero" : 2, "rue": "Place de la zouaves", "cp" : 75000, "ville" : "Paris"}', 331222222);

INSERT INTO Taxi(id, nom, adresse, tel)
VALUES(112, 'Rene', '{"numero" : 2, "rue": "Place de la poules", "cp" : 75000, "ville" : "Paris"}', 331322222);

INSERT INTO Taxi(id, nom, adresse, tel)
VALUES(113, 'Patrick', '{"numero" : 3, "rue": "Place de la zouaves", "cp" : 74200, "ville" : "Vincennes"}', 331227222);

INSERT INTO Taxi(id, nom, adresse, tel)
VALUES(211, 'Paul', '{"numero" : 2, "rue": "Place de la Chicanes", "cp" : 49000, "ville" : "Angers"}', 331272222);

INSERT INTO Taxi(id, nom, adresse, tel)
VALUES(311, 'Paulo', '{"numero" : 2, "rue": "Place de la loukoums", "cp" : 88888, "ville" : "Lisbonne"}', 35112222);

INSERT INTO Taxi(id, nom, adresse, tel)
VALUES(711, 'Lenin', '{"numero" : 2, "rue": "Place des rouges", "cp" : 77777, "ville" : "Moscou"}', 71222222);

INSERT INTO Taxi(id, nom, adresse, tel)
VALUES(811, 'Chin', '{"numero" : 2, "rue": "Place de la bourse", "cp" : 99999, "ville" : "Pekin"}', 861222222);

INSERT INTO Taxi(id, nom, adresse, tel)
VALUES(812, 'Chao', '{"numero" : 2, "rue": "Place de la bourse", "cp" : 99999, "ville" : "Pekin"}', 861227222);

INSERT INTO Taxi(id, nom, adresse, tel)
VALUES(813, 'Zen', '{"numero" : 2, "rue": "Place de la bourse", "cp" : 99999, "ville" : "Pekin"}', 862222222);


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
VALUES(2000, 'Theo', 'Macron', '2 rue du riz', 331111118, '{"metier" : "guichetier", "contrat" : "Temps_plein", "gare" : ["St Lazare"]}');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2001, 'Paul', 'Macron', '2 rue du riz', 331111119, '{"metier" : "aiguilleur", "contrat" : "Temps_plein", "gare" : ["St Lazare"]}');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2002, 'Brigitte', 'Macron', '2 rue du riz', 331111120, '{"metier" : "guichetier", "contrat" : "Temps_plein", "gare" : ["St Lazare"]}');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2003, 'Emmanuel', 'Macron', '2 rue du riz', 331111121, '{"metier" : "aiguilleur", "contrat" : "Mi_temps", "gare" : ["St Lazare", "Montparnasse"]}');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2004, 'Bruno', 'Macron', '2 rue du riz', 331111122, '{"metier" : "guichetier", "contrat" : "Mi_temps", "gare" : ["St Lazare", "Montparnasse"]}');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2005, 'Joseph', 'Macron', '2 rue du riz', 331111123, '{"metier" : "guichetier", "contrat" : "Mi_temps", "gare" : ["St Lazare", "Montparnasse"]}');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2006, 'Edouard', 'Macron', '2 rue du riz', 331111124, '{"metier" : "guichetier", "contrat" : "Mi_temps", "gare" : ["Montparnasse", "Leningrad"]}');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2007, 'Rene', 'Macron', '2 rue du riz', 331111125, '{"metier" : "guichetier", "contrat" : "Temps_plein", "gare" : ["Montparnasse"]}');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2008, 'Jose', 'Macron', '2 rue du riz', 331111126, '{"metier" : "aiguilleur", "contrat" : "Temps_plein", "gare" : ["Montparnasse"]}');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2009, 'Lucie', 'Macron', '2 rue du riz', 331111127, '{"metier" : "guichetier", "contrat" : "Temps_plein", "gare" : ["Montparnasse"]}');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2010, 'Anna', 'Macron', '2 rue du riz', 331111128, '{"metier" : "guichetier", "contrat" : "Temps_plein", "gare" : ["St Laud"]}');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2011, 'Gabrielle', 'Macron', '2 rue du riz', 331111129, '{"metier" : "guichetier", "contrat" : "Temps_plein", "gare" : ["St Laud"]}');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2012, 'Gabrielle', 'Macron', '2 rue du riz', 331111130, '{"metier" : "aiguilleur", "contrat" : "Temps_plein", "gare" : ["King Cross"]}');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2013, 'Ursula', 'Macron', '2 rue du riz', 331111131, '{"metier" : "guichetier", "contrat" : "Temps_plein", "gare" : ["St Laud"]}');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2014, 'Louana', 'Macron', '2 rue du riz', 331111132, '{"metier" : "aiguilleur", "contrat" : "Mi_temps", "gare" : ["St Lazare", "King Cross"]}');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2015, 'Philippe', 'Macron', '2 rue du riz', 331111133, '{"metier" : "guichetier", "contrat" : "Temps_plein", "gare" : ["King Cross"]}');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2016, 'Helene', 'Macron', '2 rue du riz', 331111134, '{"metier" : "aiguilleur", "contrat" : "Temps_plein", "gare" : ["King Cross"]}');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2017, 'Leonie', 'Macron', '2 rue du riz', 331111135, '{"metier" : "guichetier", "contrat" : "Temps_plein", "gare" : ["King Cross"]}');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2018, 'Jeanne', 'Macron', '2 rue du riz', 331111136, '{"metier" : "aiguilleur", "contrat" : "Temps_plein", "gare" : ["King Cross"]}');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2019, 'Alice', 'Macron', '2 rue du riz', 331111137, '{"metier" : "guichetier", "contrat" : "Temps_plein", "gare" : ["Oriente"]}');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2020, 'Alice', 'Macron', '2 rue du riz', 331111138, '{"metier" : "aiguilleur", "contrat" : "Temps_plein", "gare" : ["Leningrad"]}');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2021, 'Alice', 'Macron', '2 rue du riz', 331111139, '{"metier" : "guichetier", "contrat" : "Temps_plein", "gare" : ["Leningrad"]}');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2022, 'Alice', 'Macron', '2 rue du riz', 331111140, '{"metier" : "aiguilleur", "contrat" : "Temps_plein", "gare" : ["Termini"]}');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2023, 'Alice', 'Macron', '2 rue du riz', 331111141, '{"metier" : "guichetier", "contrat" : "Temps_plein", "gare" : ["Termini"]}');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2024, 'Alice', 'Macron', '2 rue du riz', 331111142, '{"metier" : "aiguilleur", "contrat" : "Temps_plein", "gare" : ["Beijing"]}');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2025, 'Alice', 'Macron', '2 rue du riz', 331111143, '{"metier" : "guichetier", "contrat" : "Temps_plein", "gare" : ["Beijing"]}');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2026, 'Jeanne', 'Macron', '2 rue du riz', 331111144, '{"metier" : "aiguilleur", "contrat" : "Temps_plein", "gare" : ["Beijing"]}');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2027, 'Alice', 'Macron', '2 rue du riz', 331111145, '{"metier" : "guichetier", "contrat" : "Temps_plein", "gare" : ["Beijing"]}');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2028, 'Alice', 'Macron', '2 rue du riz', 331111146, '{"metier" : "aiguilleur", "contrat" : "Temps_plein", "gare" : ["King Cross"]}');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2029, 'Alice', 'Macron', '2 rue du riz', 331111147, '{"metier" : "guichetier", "contrat" : "Mi_temps", "gare" : ["St Laud"]}');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2030, 'Alice', 'Macron', '2 rue du riz', 331111148, '{"metier" : "aiguilleur", "contrat" : "Mi_temps", "gare" : ["St Laud"]}');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2031, 'Alice', 'Macron', '2 rue du riz', 331111149, '{"metier" : "guichetier", "contrat" : "Mi_temps", "gare" : ["Montparnasse"]}');

INSERT INTO Employe(id, nom, prenom, adresse, tel, metier)
VALUES(2033, 'Alice', 'Macron', '2 rue du riz', 331111151, '{"metier" : "guichetier", "contrat" : "Temps_plein", "gare" : ["Oriente"]}');


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

INSERT INTO Itineraire(id, type_train, numero_train, portions)
VALUES(10000, 'TGV', 8000,
  '[
  {
  "horaire_depart" : "2020-07-19 00:00:00",
  "gare_depart" : "St Laud",
  "horaire_arrivee" : "2020-07-19 02:00:00",
  "gare_arrivee" : "Montparnasse",
  "prix" : 30
  },
  {
  "horaire_depart" : "2020-07-19 02:03:00",
  "gare_depart" : "Montparnasse",
  "horaire_arrivee" : "2020-07-19 15:00:00",
  "gare_arrivee" : "Leningrad",
  "prix" : 200
  }
  ]'
  );

INSERT INTO Itineraire(id, type_train, numero_train, portions)
VALUES(10001, 'TGV', 8001,
  '[
  {
  "horaire_depart" : "2020-07-19 00:00:00",
  "gare_depart" : "St Laud",
  "horaire_arrivee" : "2020-07-19 02:00:00",
  "gare_arrivee" : "Montparnasse",
  "prix" : 30
  },
  {
  "horaire_depart" : "2020-07-19 02:03:00",
  "gare_depart" : "Montparnasse",
  "horaire_arrivee" : "2020-07-19 15:00:00",
  "gare_arrivee" : "Leningrad",
  "prix" : 200
  },
  {
  "horaire_depart" : "2020-07-19 15:03:00",
  "gare_depart" : "Leningrad",
  "horaire_arrivee" : "2020-07-19 23:00:00",
  "gare_arrivee" : "Beijing",
  "prix" : 500
  }
  ]'
  );

INSERT INTO Itineraire(id, type_train, numero_train, portions)
VALUES(10002, 'TER', 8011,
  '[
  {
  "horaire_depart" : "2020-07-19 00:00:00",
  "gare_depart" : "Oriente",
  "horaire_arrivee" : "2020-07-19 10:00:00",
  "gare_arrivee" : "St Laud",
  "prix" : 100
  },
  {
  "horaire_depart" : "2020-07-19 10:03:00",
  "gare_depart" : "St Laud",
  "horaire_arrivee" : "2020-07-19 13:00:00",
  "gare_arrivee" : "Montparnasse",
  "prix" : 30
  },
  {
  "horaire_depart" : "2020-07-19 13:03:00",
  "gare_depart" : "Montparnasse",
  "horaire_arrivee" : "2020-07-19 17:00:00",
  "gare_arrivee" : "Termini",
  "prix" : 80
  }
  ]'
  );

INSERT INTO Itineraire(id, type_train, numero_train, portions)
VALUES(10003, 'Intercite', 8021,
  '[
  {
  "horaire_depart" : "2020-07-19 00:00:00",
  "gare_depart" : "Oriente",
  "horaire_arrivee" : "2020-07-19 05:00:00",
  "gare_arrivee" : "St Laud",
  "prix" : 100
  },
  {
  "horaire_depart" : "2020-07-19 05:03:00",
  "gare_depart" : "St Laud",
  "horaire_arrivee" : "2020-07-19 08:00:00",
  "gare_arrivee" : "St Lazare",
  "prix" : 30
  },
  {
  "horaire_depart" : "2020-07-19 08:03:00",
  "gare_depart" : "St Lazare",
  "horaire_arrivee" : "2020-07-19 10:00:00",
  "gare_arrivee" : "Termini",
  "prix" : 80
  },
  {
  "horaire_depart" : "2020-07-19 10:03:00",
  "gare_depart" : "Termini",
  "horaire_arrivee" : "2020-07-19 13:00:00",
  "gare_arrivee" : "Montparnasse",
  "prix" : 100
  },
  {
  "horaire_depart" : "2020-07-19 13:03:00",
  "gare_depart" : "Montparnasse",
  "horaire_arrivee" : "2020-07-19 17:00:00",
  "gare_arrivee" : "Leningrad",
  "prix" : 200
  },
  {
  "horaire_depart" : "2020-07-19 17:03:00",
  "gare_depart" : "Leningrad",
  "horaire_arrivee" : "2020-07-19 23:00:00",
  "gare_arrivee" : "Beijing",
  "prix" : 500
  }
  ]'
  );

INSERT INTO Itineraire(id, type_train, numero_train, portions)
VALUES(10004, 'Intercite', 8023,
  '[
  {
  "horaire_depart" : "2020-07-19 10:03:00",
  "gare_depart" : "King Cross",
  "horaire_arrivee" : "2020-07-19 12:00:00",
  "gare_arrivee" : "St Lazare",
  "prix" : 80
  },
  {
  "horaire_depart" : "2020-07-19 12:03:00",
  "gare_depart" : "St Lazare",
  "horaire_arrivee" : "2020-07-19 12:10:00",
  "gare_arrivee" : "Montparnasse",
  "prix" : 2
  },
  {
  "horaire_depart" : "2020-07-19 12:13:00",
  "gare_depart" : "Montparnasse",
  "horaire_arrivee" : "2020-07-19 17:10:00",
  "gare_arrivee" : "Termini",
  "prix" : 80
  }
  ]'
  );

INSERT INTO Itineraire(id, type_train, numero_train, portions)
VALUES(10005, 'TER', 8010,
  '[
  {
  "horaire_depart" : "2020-07-19 13:03:00",
  "gare_depart" : "King Cross",
  "horaire_arrivee" : "2020-07-19 17:00:00",
  "gare_arrivee" : "St Lazare",
  "prix" : 60
  },
  {
  "horaire_depart" : "2020-07-19 17:03:00",
  "gare_depart" : "St Lazare",
  "horaire_arrivee" : "2020-07-19 19:00:00",
  "gare_arrivee" : "St Laud",
  "prix" : 30
  },
  {
  "horaire_depart" : "2020-07-19 19:03:00",
  "gare_depart" : "St Laud",
  "horaire_arrivee" : "2020-07-19 22:00:00",
  "gare_arrivee" : "Termini",
  "prix" : 80
  }
  ]'
  );

INSERT INTO Billet(heure_achat, voyageur, paiement, internet, assurance, trajet)
VALUES('2020-05-19 12:13:00', 1000, 'CB', true, false,
  '[
  {"itineraire" : 10000, "depart": "2020-07-19 00:00:00", "arrivee" : "2020-07-19 02:00:00", "siege" : 1},
  {"itineraire" : 10002, "depart": "2020-07-19 00:00:00", "arrivee" : "2020-07-19 13:00:00", "siege" : 12}
  ]');


INSERT INTO Billet(heure_achat, voyageur, paiement, internet, assurance, trajet)
VALUES('2020-05-17 12:13:00', 1002, 'cheque', true, true,
  '[
  {"itineraire" : 10001, "depart": "2020-07-19 00:00:00", "arrivee" : "2020-07-19 02:00:00", "siege" : 11}
  ]  ');


INSERT INTO Billet(heure_achat, voyageur, paiement, internet, assurance, trajet)
VALUES('2020-05-15 12:13:00', 1002, 'CB', true, true,
  '[
  {"itineraire" : 10002, "depart": "2020-07-19 00:00:00", "arrivee" : "2020-07-19 13:00:00", "siege" : 10}
  ]');;


INSERT INTO Billet(heure_achat, voyageur, paiement, internet, assurance, trajet)
VALUES('2020-05-19 12:13:00', 1003, 'espece', false, false,
  '[
  {"itineraire" : 10003, "depart": "2020-07-19 05:03:00", "arrivee" : "2020-07-19 10:00:00", "siege" : 80}
  ]');


INSERT INTO Billet(heure_achat, voyageur, paiement, internet, assurance, trajet)
VALUES('2020-05-13 12:13:00', 1004, 'cheque', true, true,
  '[
  {"itineraire" : 10004, "depart": "2020-07-19 12:03:00", "arrivee" : "2020-07-19 12:10:00", "siege" : 100}
  ]');


INSERT INTO Billet(heure_achat, voyageur, paiement, internet, assurance, trajet)
VALUES('2020-05-14 12:13:00', 1005, 'CB', true, false,
  '[
  {"itineraire" : 10005, "depart": "2020-07-19 13:03:00", "arrivee" : "2020-07-19 22:00:00", "siege" : 100}
  ]');


INSERT INTO Billet(heure_achat, voyageur, paiement, internet, assurance, trajet)
VALUES('2020-05-11 12:13:00', 1005, 'espece', false, true,
  '[
  {"itineraire" : 10004, "depart": "2020-07-19 12:03:00", "arrivee" : "2020-07-19 12:10:00", "siege" : 140}
  ]');
