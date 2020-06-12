--Requete 1 :
-- Nombre de voyageurs sur chacun des trains.

SELECT I.numero_train, COUNT(B.voyageur) AS "nombre de voyageurs"
FROM Billet B, Itineraire I, JSON_TO_RECORDSET(B.trajet) it (itineraire INTEGER)
WHERE itineraire = I.id
GROUP BY I.numero_train
ORDER BY I.numero_train;

--Requete 2 :
-- Pour une gare d'arrivée et une gare de départ ainsi qu'un prix minimum
--    et un prix maximum : Rechercher les trajets possibles avec dates et prix.
SELECT I.numero_train, P.horaire_depart, P.gare_depart, P.horaire_arrivee, P.gare_arrivee, SUM(P.prix) AS prix
FROM Itineraire I,
JSON_TO_RECORDSET(I.portions) P (horaire_depart TIMESTAMP, gare_depart VARCHAR, horaire_arrivee TIMESTAMP, gare_arrivee VARCHAR, prix INTEGER)
WHERE
(P.gare_depart = 'St Laud' OR P.gare_arrivee = 'Montparnasse')
GROUP BY I.id, P.horaire_depart, P.gare_depart, P.horaire_arrivee, P.gare_arrivee
HAVING SUM(P.prix)< 500 AND SUM(P.prix) > 20;


--Requete 3 :
-- Obtenir la liste des gares en sureffectifs avec le nombre d'equivalent temps plein en trop.

SELECT G.nom AS gare, (0.5*C.MT + C.TP ) - G.min_tps_plein AS "ETP Exedentaire"
FROM vContrat C, Gare G
WHERE G.nom = C.gare and G.min_tps_plein < 0.5*C.MT + C.TP;


--Requete 4 :
-- Pour chaque portion d'itinéraire : obtenir l'age moyen des voyageurs.

SELECT I.id AS itineraire, P.gare_depart, P.gare_arrivee, AVG(EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM V.ddn)) AS "moyenne d'âge"
FROM Voyageur V, Billet B, Itineraire I,
     JSON_TO_RECORDSET(B.trajet) T (itineraire INTEGER, depart TIMESTAMP, arrivee TIMESTAMP),
     JSON_TO_RECORDSET(I.portions) P (horaire_depart TIMESTAMP, gare_depart VARCHAR, horaire_arrivee TIMESTAMP, gare_arrivee VARCHAR)
WHERE
I.id = T.itineraire AND
T.depart <= P.horaire_depart AND
T.arrivee >= P.horaire_arrivee AND
V.id = B.voyageur

GROUP BY I.id, P.gare_depart, P.gare_arrivee;
