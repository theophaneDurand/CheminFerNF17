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

### 1) UML.png

Fichiers permettant de visualiser le diagramme UML en format png.

### 2) UML.png

Fichiers permettant de visualiser le diagramme UML en format png.

### 3) Note de clarification.md

Fichier contenant la note de clarification du projet.

### 4) Relationnel_Héritage.md

Fichier contenant le MLD relationnel et les justification des héritages.
*La note de clarification n'a pas été mise à jour pour le projet avc implementation JSON*


### 5) creationTable.sql

Fichier contenant le code SQL permettant la création des tables de la base de donnée du projet.

### 6) donnees.sql

Fichier contenant des données de test afin de verifier le bon fonctionnement de la base de donnée.

Ce fichier est le code SQL permettant d'insérer les données directement dans les tables crées par le fichier creationTables.sql.

### 7) creationTableJSON.sql

Fichier contenant le code SQL permettant la création des tables de la base de donnée du projet avec la version JSON.

### 8) donnees.sql

Fichier contenant des données de test afin de verifier le bon fonctionnement de la base de donnée avec la version JSON.

Ce fichier est le code SQL permettant d'insérer les données directement dans les tables crées par le fichier creationTablesJSON.sql.

### 9) suppressionTables.sql

Fichier contenant le code SQL permettant de supprimer toutes les tables crées pour ce projet.


### 10) requetes.sql

Fichier contenant le code SQL des différetnes requetes demandées par le client (ainsi que certaines requêtes en algèbre relationnelle en commentaires).

Les requetes fonctionnent pour la version JSON du projet.

Ce fichier est composé de 4 requetes : 
##### Requete 1 : Nombre de voyageurs sur chacun des trains.

Cette requete donne le nombre de voyageur (toutes portions confondues) sur un même train. 

Son retour donne le numéro du train et le nombre de personnes sous ce format :

|numero_train | nombre de voyageurs|
|-|-|
| | | 
 
##### Requete 2 : Pour une gare d'arrivée, une de départ et un interval de prix, renvoit les trajets correspondant.

Les gare de départ et d'arrivée dont à entrer dans la section *WHERE*
la fourchette de prix est à entrer dans la section * HAVING*

Le retour est sous cette forme : 

numero train | horaire depart | gare depart | horaire arrvee | gare arrivee | prix
-|-|-|-|-|-
|||||

##### Requete 3 : Obtenir la liste des gares en sureffectifs avec le nombre d'equivalent temps plein en trop.

Le retour est sous cette forme :

|gare | ETP exedentaire|
|-|-|
|||

##### Requete 4 : Pour chaque portion d'itinéraire : obtenir l'age moyen des voyageurs.

Le retour est sous cette forme : 

itineraire | gare depart | gare arrivee | moyenne d'age
-|-|-|-
|||