--Requete 1 :
-- Nombre de voyageurs sur chacun des trains.

SELECT I.train, COUNT(T.voyageur) AS "nombre de voyageurs"
FROM Itineraire I, Trajet T
WHERE I.id = T.itineraire
GROUP BY I.train
ORDER BY I.train;

--Requete 2 :
-- Pour une gare d'arrivée et une gare de départ ainsi qu'un prix minimum
--    et un prix maximum : Rechercher les trajets possibles avec dates et prix.

SELECT I.train, P.horaire_depart, P.depart, P.horaire_arrivee, P.arrivee, SUM(P.prix) AS prix
FROM Itineraire I, Portion P
WHERE (P.depart = 'St Laud' AND P.arrivee = 'Montparnasse') AND (P.itineraire = I.id)
GROUP BY I.id, P.horaire_depart, P.depart, P.horaire_arrivee, P.arrivee
HAVING SUM(P.prix)< 500 AND SUM(P.prix) > 20;

--Requete 3 :
-- Obtenir la liste des gares en sureffectifs avec le nombre d'equivalent temps plein en trop.

SELECT G.nom AS gare, (0.5*MT.mt + TP.tp ) - G.min_tps_plein AS "ETP Exedentaire"
FROM vNb_TP_Gare TP, vNb_MT_Gare MT, Gare G
WHERE G.nom = MT.gare AND MT.gare = TP.gare AND G.min_tps_plein < (0.5*MT.mt + TP.tp);



--Requete 4 :
-- Pour chaque portion d'itinéraire : obtenir l'age moyen des voyageurs.
SELECT T.itineraire, P.depart, P.arrivee, AVG(EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM V.ddn)) AS "moyenne d'âge"
FROM Voyageur V, Trajet T, Portion P
WHERE
T.depart <= P.horaire_depart AND
T.arrivee >= P.horaire_arrivee AND
V.id = T.voyageur

GROUP BY T.itineraire, P.depart, P.arrivee;
