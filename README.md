# projetNF17TD1CheminDeFer

UV : NF17
Projet TD1 
Nom du projet : Agence de chemin de fer : Projet n°3

Chargé de TD : Benjamin Lussier

| Nom | Prénom | Rôle |
| ------ | ------ | ------ |
| Lussier | Benjamin | Client | 
| Durand | Théophane | Développeur|

## Contexte du projet : 

Votre client est une agence de chemins de fer, qui veut gérer ses gares, ses trains et ses billets. Une gare a un nom, une adresse, une ville, et une zone horaire (GMT). Y travaille des aiguilleurs et des guichetiers, qui peuvent faire un temps plein ou un mi-temps dans une gare, ou deux mi-temps dans des gares différentes. Chaque gare a un nombre minimal d'emploi temps plein nécessaire pour fonctionner.

Les trains ont un numéro et un type (TGV, TER, etc.), ce dernier conditionnant le nombre de places maximal dans le train, les classes disponibles (première et seconde ou seulement seconde), sa vitesse maximale, etc. L'agence gère des itinéraires d'une gare de départ à une gare terminus, avec un ensemble de gares sur le trajet, chacune desservie à un horaire donné. Chaque itinéraire a un type de train spécifique.

La réservation de billet est faite par un voyageur, dont on veut garder le nom, prénom, adresse, numéro de téléphone, et le moyen de paiement utilisé pour le billet (carte bleue, espèce, chèque, etc.). Un billet peut être composé de plusieurs trajets d'une ville de départ à une ville d'arrivée. Chaque trajet a une date de départ, une date d'arrivée, une durée, et comporte un numéro de train et de place. Les billets achetés par internet ont une réduction de 10%. De plus, un client peut acheter avec le billet une assurance qui lui permettra d'annuler gratuitement son billet (10% du prix du billet est retenu autrement) ou de changer ses dates. Lors de la réservation du billet, le système de réservation peut proposer des adresses d'hôtels ou de taxis à la gare d'arrivée du voyageur.
Objectifs

L'agence de chemin de fer vous demande de mettre en place une base de données et un système de gestion permettant de :

gérer les gares, le personnel, les trains et leurs itinéraires,

permettre à des clients de consulter les horaires des trains et chercher des trajets en fonction des villes de départ et d'arrivée, des dates du voyage, et de facteurs de prix (prix minimum ou maximum),

permettre à des clients de réserver des billets, annuler leur réservation ou la modifier (seulement s'ils ont une assurance, pour ce dernier cas),

obtenir des statistiques sur le fonctionnement de l'agence : taux de remplissage des trains, age des voyageurs, gares les plus en sureffectifs, etc.


## Description du dépot :
Le dépot est constitué de plusieurs fichiers et dossiers.
Ce projet a été réalisé en SQL pour le SGBD Postgres.

### 1) Dossier UML files

##### UML.png et UML.svg 

Fichiers permettant de visualiser le diagramme UML en format png ou svg.

### 2) Note de clarification.md

Fichier contenant la note de clarification du projet.

# ------------Non implémenté sous cette ligne-----------------------

### 3) Relationnel_Normalisation_Héritage.md

Fichier contenant le MLD relationnel, l'explication et les justifications de la normalisation et les justification des héritages.

### 4) creationTable.sql

Fichier contenant le code SQL permettant la création des tables de la base de donnée du projet.

### 5) donnees.sql 

Fichier contenant des données de test afin de verifier le bon fonctionnement de la base de donnée.
Ce fichier est le code SQL permettant d'insérer les données directement dans les tables crées par le fichier creationTables.sql.

### 6) requetes.sql

Fichier contenant le code SQL des différetnes requetes demandées par le client (ainsi que certaines requêtes en algèbre relationnelle en commentaires).

### 7) suppressionTables.sql

Fichier contenant le code SQL permettant de supprimer toutes les tables crées pour ce projet.