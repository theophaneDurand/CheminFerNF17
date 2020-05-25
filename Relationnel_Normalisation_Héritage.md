# Relationnel :
## Relations :
### Tables :

**Ville**(#nom : string, GMT : integer)

**Gare**(#nom : string, adresse : string, min_tps_plein : integer, ville => Ville.nom)

**Hotel**(#id, nom : string, adresse : string, tel : integer, ville => Ville.nom)

**Hotel_Gare**(#hotel => Hotel.id, #gare => Gare.nom)

**Taxi**(#id, nom : string, adresse : string, tel : integer, ville => Ville.nom)

**Taxis_Hotel**(#taxi => Taxi.id, #gare => Gare.nom)

**Voyageur**(#id : integer, nom : string, prenom : string, adresse : string, tel : integer)

**Employe**(#id : integer, nom : string, prenom : string, adresse : string, tel : integer, metier : {Guichetier, Aiguilleur})

**Temps_plein**(#employe => Employer.id, #gare => Gare.nom)

**Mi_temps**(#employe => Employer.id, #gare => Gare.nom)

**Type_train**(#nom : string, nb_place_max : integer, premiere_classe_dispo : boolean, vitesse_max : integer)

**Train**(#numero, type => Type_train.nom)

**Itineraire**(#id : int, type_train => Type_train)

**Portion**(#itineraire => Itineraire.id, #horaire_depart = timestamp, depart => Gare.nom, arrivee => Gare.nom, horaire_arrivee = timestamp)

**Billet**(#heure_achat : timestamp, #voyageur => Voyageur.id, paiement : {CB, espece, cheque}, prix : integer, internet : boolean,
assurance : integer)

**Trajet**(#billet_heure => Billet.heure_achat, #billet_voyageur => Billet.voyageur, #itineraire_portion => Portion.itineraire, #depart => Portion.horaire_depart, siege : int, train => Train.numero)



### Vues :

vPersonne = UNION(PROJECTION(**Employe**, nom, prenom, adresse, tel), PROJECTION(**Voyageur**, nom, prenom, adresse, tel))

vGuichetier = PROJECTION(RESTRICTION(**Employe**, metier = Guichetier) nom, prenom, adresse, tel)

vAiguilleur = PROJECTION(RESTRICTION(**Employe**, metier = Aiguilleur) nom, prenom, adresse, tel)

vContrat = UNION(PROJECTION(**Temps_plein**, employe, gare), PROJECTION(**Mi_temps**, employer, gare))

## contraintes

Toues les attributs sont NOT NULL

**Ville**.GMT est compris entre -12 et 12

**Gare**.adresse est UNIQUE

**Hotel**.adresse et **Hotel**.tel est UNIQUE

**Taxi**.adresse et **Taxi**.tel est UNIQUE

**Temps_plein**.employe est UNIQUE

**Type_train**.nb_place_max > 0

**Type_train**.vitesse_max > 0

**Trajet**.siege est compris entre 0 et **Trajet**.train.nb_place_max

**Portion**.horaire_depart < **Portion**.horaire_arrivee

INTERSECTION(PROJECTION(**Voyageur**, id), PROJECTION(**Employe**, id)) = {}

INTERSECTION(PROJECTION(**Temps_plein**, employe), PROJECTION(**Mi_temps**, employe)) = {}

Il y a au plus 2 fois le même employé dans la table **Mi_temps**

# DF et Normalisation :



# Justification des héritages :
### Classe Personne (Voyageur et Employe)

J'ai choisi un héritage par classe fille car la classe mère est abstraite et l'héritage est exclusif. De plus l'héritage est non complet, en effet Voyageur et Employe ont des associations propres.

### Classe Employer (Guichetier et Aiguilleur)

J'ai  choisi un héritage par classe mère car l'héritage est exclusif et complet. De plus la classe mère a des associations.

### Classe Contrat (Temps_plein et Mi_temps)

j'ai choisi un héritage par classe fille car classe mère abstraite et l'héritage est exclusif. De plus il y les classes filles ont des associations propres et aucune au niveau de la mère.
