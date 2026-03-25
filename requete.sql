-- « Primeurs-Passion » souhaiterait pouvoir disposer de vues permettant de répondre à des questionnements tels que :  

-- Quels sont les jours où plus de 20000€ ont été réceptionnés dans les urnes en espèces ?  

SELECT Date_, 
       SUM(MontantEspeces) AS TotalEspeces 
FROM SAE_COLLECTE_JOUR 
GROUP BY Date_ 
HAVING SUM(MontantEspeces) > 20000; 

 
-- Quels sont les techniciens qui ont été présents à toutes les conférences ?  

SELECT e.IdMembre, 
      e.Nom, 
      e.Prenom 
FROM EQUIPE e, 
    Affecte a 
WHERE e.IdMembre = a.IdMembre 
 AND e.Role LIKE '%technique%' 
GROUP BY e.IdMembre, 
        e.Nom, 
        e.Prenom 
HAVING COUNT(DISTINCT a.IdConf) = 
 (SELECT COUNT(*) 
  FROM CONFERENCE); 

 
-- Quels sont les participants qui ont invité plus de 10 personnes ? 

SELECT p.IdParticipant, 
       p.Nom, 
       p.Prenom, 
       COUNT(i.IdParticipant) AS NbInvites 
FROM SAE_PARTICIPANT p, 
     SAE_PARTICIPANT i 
WHERE i.IdParticipant_1 = p.IdParticipant 
GROUP BY p.IdParticipant, 
         p.Nom, 
         p.Prenom 
HAVING COUNT(i.IdParticipant) > 10; 

 
-- Nombre de conférences animées par chaque conférencier. 

SELECT c.IdConfer, 

       c.Nom, 

       c.Prenom, 

       COUNT(a.IdConf) AS NbConferences 

FROM SAE_CONFERENCIER c, 

       SAE_ANIME a 

WHERE c.IdConfer = a.IdConfer 

GROUP BY c.IdConfer, c.Nom, c.Prenom 

ORDER BY NbConferences DESC; 

 

-- Liste des conférences avec leurs thèmes et leurs langues. 

SELECT conf.IdConf, 

       conf.Titre, 

       t.LibelleTheme, 

       l.LibelleLangue 

FROM SAE_CONFERENCE conf, 

     SAE_TRAITE tr, 

     SAE_THEME t, 

     SAE_EST e, 

     SAE_LANGUE l 

WHERE conf.IdConf = tr.IdConf 

  AND tr.IdTheme = t.IdTheme 

  AND conf.IdConf = e.IdConf 

  AND e.CodeLangue = l.CodeLangue 

ORDER BY conf.IdConf; 

 

-Pour chaque conférence, la salle utilisée et sa capacité. 

SELECT c.IdConf, 
      c.Titre, 
      s.NomSalle, 
      s.Capacité, 
      COUNT(i.IdParticipant) AS NbInscrits 
FROM CONFERENCE c 
JOIN SALLE s ON c.CodeSalle = s.CodeSalle 
LEFT JOIN Inscrit i ON c.IdConf = i.IdConf 
GROUP BY c.IdConf, 
        c.Titre, 
        s.NomSalle, 
        s.Capacité 
ORDER BY NbInscrits DESC; 