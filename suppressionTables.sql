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
DROP VIEW IF EXISTS vPersonne cascade;
DROP VIEW IF EXISTS vGuichetier cascade;
DROP VIEW IF EXISTS vAiguilleur cascade;
DROP VIEW IF EXISTS vContrat cascade;
DROP VIEW IF EXISTS vMi_temps cascade;
DROP FUNCTION IF EXISTS fonction_personne;
DROP FUNCTION IF EXISTS fonction_contrat;
DROP FUNCTION IF EXISTS fonction_Mi_temps;
DROP FUNCTION IF EXISTS fonction_siege;
DROP FUNCTION IF EXISTS fonction_Type_Train_Trajet;