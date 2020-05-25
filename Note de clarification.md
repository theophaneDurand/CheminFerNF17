# Note de clarification projet 3 : Agence de chemin de fer

## Contexte du projet

Dans le cadre de l'UV NF17, je suis amené à mettre en place une base de données pour agence de chemin de fer.       

### Acteurs du projet

Maîtrise d'ouvrage : M. Lussier, représentant de l'agence

Maîtrise d'oeuvre :

- Théophane Durand

### Références du projet   


- Cahier des charges : https://librecours.net/dawa/projets-2020-II/co/billets-trains.html
- Définition des contraintes : https://librecours.net/dawa/projets-2020-II/co/billets-trains.html
- Définition des livrables attendus : https://librecours.net/dawa/projets-2020-II/co/billets-trains.html

### Objet du projet

Ce projet à pour but de mettre en place une base de données et un système de gestion permettant de :
- gérer les gares, le personnel, les trains et leurs itinéraires,
- permettre à des clients de consulter les horaires des trains et chercher des trajets en fonction des villes de départ et d'arrivée, des dates du voyage, et de facteurs de prix (prix minimum ou maximum),
- permettre à des clients de réserver des billets, annuler leur réservation ou la modifier (seulement s'ils ont une assurance, pour ce dernier cas),
 -obtenir des statistiques sur le fonctionnement de l'agence : taux de remplissage des trains, age des voyageurs, gares les plus en sureffectifs, etc.

La phase de formalisation du projet a été menée avec le maître d'ouvrage.

### Synthèse des livrables attendus :

- Note de clarification du projet         
- Modèle Conceptuel de Données         (MCD)         
- Modèle Logique de Données         (MLD)         
- Base de données relationnelle  avec ses principales requêtes SQL et des données de test         

### Objets principaux de la base de données
Les principaux objets manipulés par la base de données sont les suivants :

- Garre        
- Personne     (Voyageurs et Employés)
- Billets      
- Trajets   
- Itinéraires
- Trains

### Description des Gares :

Une gare est identifiée par son nom. elle à une adresse, une ville, et une zone horaire sous format GMT. Une gare à besoin d'un nombre minimum d'équivalent temps plein pour fonctionnner.
Une gare à aussi des hotels et des taxis afiliés afin de les proposer aux voyageur dont la gare est l'arrivée de leur trajet.

### Description des employés :

Il existe deux types d'employes, les aiguilleurs et les guichetiers.
On souhaite connaître leur adresse, leur nom et leur prénom et leur numéro de téléphone.

Les employés peuvent être à plein temps ou à mi-temps dans une gare.
Un employer peut avoir deux mi-temps dans deux gares différentes.

Un employé est soit un guichetier soit un aiguilleur. Il ne peut pas être les deux.

### Gestion des billets :

Les billets sont achetés par des passagers dont on souhaite connaître le nom, le prénom, l'adresse et le numéro de téléphone.
On souhaite aussi connaître la méthode de paiement (chèque, espèce, CB...).
Le prix du billet est diminué de 10% si la vente s'est fait en ligne. Il est aussi possible de souscrire à une assurance qui permet de modifier les dates du billet. Cette assurance permet aussi d'annuler gratuitement le billet. Sans l'assurance, l'anulation coute 10% du prix du billet.

Un billet peut être composé de plusieurs trajet.
A chaque trajet est associé un train et un numéro de siège. Un trajet effecute une portion d'itinéraire. Le trajet est identifié par le billet qui lui correspond et par l'horaire de départ de sa portion.

### Gestion des trains :

Un train à un numéro unique et un type. Les types de trains ont un nom et définissent le nombre de places maximum, les classes disponibles (1ere et 2nd classe ou seulement 2nd classe). Le type de train définit aussi la vitesse maximale du train.

### Gestion des itinéraires :

Les itinéraires sont composé de différentes portions. Un type de train est associé à chaque itinéraire.
Les portions sont composées d'une gare de départ et d'une d'arrivée. Ainsi que d'une heure de départ et d'une heure d'arrivée. La durée de parcours d'une portion se calcule avec les heures de départ et d'arrivée.

### Requêtes :

Les clients doivent pouvoir accéder aux horaires des trains, aux trajets en fonction des villes de départ et d'arrivée, des dates de voyage, et de prix minimum ou maximum.

L'agence doit pouvoir accéder au taux de remplissage des trains, à l'âge des voyageurs, aux gares étant le plus en sureffectifs.
