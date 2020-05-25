# Relationnel :
## Relations :
### Tables :

**Gare**(#nom : string, adresse : string, min_tps_plein : integer, ville => Ville.nom) avec adresse UNIQUE NOT NULL, min_tps_plein NOT NULL, ville NOT NULL
**Ville**(#nom : string, GMT : integer) avec GMT NOT NULL et -12 < GMT > 12
**Hotel**(#?, nom : string, adresse : string, tel : integer, ville => Ville.nom) avec adresse et tel UNIQUE NOT NULL, nom et ville NOT NULL
**Taxi**(#?, nom : string, adresse : string, tel : integer) avec adresse et tel UNIQUE NOT NULL, nom NOT NULL
**Taxis_dessert**(#taxi => Taxis, #ville => Ville.nom)
**Voyageur**(#id : integer, nom : string, prenom : string, adresse : string, tel : integer) avec nom, prenom, adresse, tel NOT NULL
**Employe**(#id : integer, nom : string, prenom : string, adresse : string, tel : integer, metier : {Guichetier, Aiguilleur}) avec nom, prenom, adresse, tel, metier NOT NULL
**Temps_plein**(#employe => Employer.id, #gare => Gare.nom) avec employe UNIQUE
**Mi_temps**(#employe => Employer.id, #gare => Gare.nom)
**billet**(#?, voyageur => Voyageur.id, paiement : {CB, espece, cheque}, prix : integer, internet : boolean, assurance : integer)
**Trajet**()
**itineraire**()
**Type_train**(#nom : string, nb_place_max : integer, premiere_classe_dispo : boolean, vitesse_max : integer) avec nb_place_max, premiere_classe_dispo, vitesse_max NOT NULL
**Train**(#numero, type => Type_train.nom) avec type NOT NULL






**Logiciel**(#NomDeve: string , Nom: string, DateLancement: date) avec Nom UNIQUE

**Achat**(#NomLogiciel=>Logiciel.NomDeve,#Client=>Client.Telephone, #Date: date)






























Personne > Voyageur / Employe = Héritage exclusif non complet
Je choisi par classe fille car classe mere abstraite et exclusif et plus clair je trouve de différencier les deux
de plus associations sur les classes filles

Employer > Guichetier / aiguilleur = Héritage complet exclusif
Je choisi par classe mere car associations avec la classe mere

Contrat > Temps_plein / Mi_temps = Héritage exclusif non complet
je choisi par classe fille car classe mere abstraite + association sur classes filles





Questions à poser au prof :
- dans itinéraire, part de et arrive à pourrient être fusionner avec dessert ? Comment différencier la ville de départ et celle d'arrivée ?
- Trajet est il une composition de Itinéraires ? Car ça me semble être deux notions différentes (l'une plus coté agence et l'autre plus coté client. Entre autre à cause du numéro de siège)
- Un même billet peut il être pour plusieurs voyageurs ?
- Quelle clé doner à billet ?


Bonjour,

Les problèmes de votre MCD sont les suivants :
- quel est le type de moyen de paiement ?
- trajet doit être relié avec itinéraire, pour savoir de quel itinéraire
le trajet fait partie
- dans itinéraire, part de et arrive à pourrient être fusionner avec dessert
- il peut y avoir plusieurs gares dans la même ville, il y a donc une
redondance dans gare eavec ville et GMT
- un hotel peut être proposé par plusieurs gares
- il manque de nombreuses contraintes (clé, heure départ < heure
arrivée, nb_place >0)
- pourquoi un trajet peut-il être affecté à plusieurs billets ?

Pour ces raisons, je vous mets 1/3.

Cordialement,
-- Benjamin Lussier
