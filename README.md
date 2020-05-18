# projetNF17TD1CheminDeFer

Contexte

Votre client est une agence de chemins de fer, qui veut gérer ses gares, ses trains et ses billets. Une gare a un nom, une adresse, une ville, et une zone horaire (GMT). Y travaille des aiguilleurs et des guichetiers, qui peuvent faire un temps plein ou un mi-temps dans une gare, ou deux mi-temps dans des gares différentes. Chaque gare a un nombre minimal d'emploi temps plein nécessaire pour fonctionner.

Les trains ont un numéro et un type (TGV, TER, etc.), ce dernier conditionnant le nombre de places maximal dans le train, les classes disponibles (première et seconde ou seulement seconde), sa vitesse maximale, etc. L'agence gère des itinéraires d'une gare de départ à une gare terminus, avec un ensemble de gares sur le trajet, chacune desservie à un horaire donné. Chaque itinéraire a un type de train spécifique.

La réservation de billet est faite par un voyageur, dont on veut garder le nom, prénom, adresse, numéro de téléphone, et le moyen de paiement utilisé pour le billet (carte bleue, espèce, chèque, etc.). Un billet peut être composé de plusieurs trajets d'une ville de départ à une ville d'arrivée. Chaque trajet a une date de départ, une date d'arrivée, une durée, et comporte un numéro de train et de place. Les billets achetés par internet ont une réduction de 10%. De plus, un client peut acheter avec le billet une assurance qui lui permettra d'annuler gratuitement son billet (10% du prix du billet est retenu autrement) ou de changer ses dates. Lors de la réservation du billet, le système de réservation peut proposer des adresses d'hôtels ou de taxis à la gare d'arrivée du voyageur.
Objectifs

L'agence de chemin de fer vous demande de mettre en place une base de données et un système de gestion permettant de :

    gérer les gares, le personnel, les trains et leurs itinéraires,

    permettre à des clients de consulter les horaires des trains et chercher des trajets en fonction des villes de départ et d'arrivée, des dates du voyage, et de facteurs de prix (prix minimum ou maximum),

    permettre à des clients de réserver des billets, annuler leur réservation ou la modifier (seulement s'ils ont une assurance, pour ce dernier cas),

    obtenir des statistiques sur le fonctionnement de l'agence : taux de remplissage des trains, age des voyageurs, gares les plus en sureffectifs, etc.
