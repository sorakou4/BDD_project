-- =========================
-- JEU D’ESSAI COMPLET
-- =========================

-- SALLE
INSERT INTO SALLE VALUES
('S_A1','Salle A1','A',100),
('S_A2','Salle A2','A',80),
('S_B1','Salle B1','B',120),
('S_C1','Salle C1','C',60),
('S_D1','Salle D1','D',200);

-- INTERVENTION
INSERT INTO INTERVENTION VALUES
('INT_INST','Institution'),
('INT_ENT','Entreprise'),
('INT_IND','Individuel');

-- THEME
INSERT INTO THEME VALUES
('TH_EXP','Expérience personnelle'),
('TH_INFO','Informations pratiques'),
('TH_ECO','Écologie'),
('TH_SEJ','Séjours linguistiques');

-- LANGUE
INSERT INTO LANGUE VALUES
('FR','Français'),
('EN','Anglais'),
('IT','Italien'),
('CA','Catalan');

-- MATERIEL
INSERT INTO MATERIEL VALUES
('MAT_PROJ','Vidéoprojecteur'),
('MAT_MIC','Microphone'),
('MAT_SON','Sonorisation');

-- CONFERENCIER
INSERT INTO CONFERENCIER VALUES
('CONF1','Munie','Béatrice','Voyageuse',NULL),
('CONF2','Totte','Gilbert','Voyageur',NULL),
('CONF3','Pasteur','Luc','Responsable vaccination','Ministère de la Santé'),
('CONF4','Durand','Anne','Chargée de mission','Ministère des Affaires étrangères'),
('CONF5','Dupont','Jean','Chargé de mission','Ministère Enseignement Supérieur'),
('CONF6','Droco','Leo','Conseiller','Ambassade d’Australie'),
('CONF7','Lafond','Brice','Directeur','Sans Frontières'),
('CONF8','Slide','Jane','Consultante','Ecolang');

-- EQUIPE
INSERT INTO EQUIPE VALUES
('E1','Martin','Paul','Responsable technique'),
('E2','Lopez','Maria','Responsable organisation'),
('E3','Bernard','Luc','Technicien'),
('E4','Petit','Sophie','Agent accueil');

-- JOUR
INSERT INTO JOUR VALUES
('2025-06-10','E1','E2'),
('2025-06-11','E1','E2'),
('2025-06-12','E1','E2');

-- CONFERENCE
INSERT INTO CONFERENCE VALUES
('C1','3 ans, 30 000 km en bicyclette','2025-06-10','10:00',2.0,'Voyage à vélo','Tour du monde en bicyclette.','INT_IND','S_A1'),
('C2','La santé en voyage','2025-06-10','14:00',1.5,'Conseils santé','Préparation sanitaire au voyage.','INT_INST','S_B1'),
('C3','Étudier à l’étranger','2025-06-11','09:00',2.0,'Études internationales','Dispositifs pour étudier hors de France.','INT_INST','S_D1'),
('C4','Voyager écologique','2025-06-11','14:00',1.5,'Tourisme responsable','Voyager en respectant l’environnement.','INT_ENT','S_C1'),
('C5','Séjours linguistiques','2025-06-12','10:00',1.5,'Apprendre les langues','Séjours linguistiques à l’étranger.','INT_ENT','S_A2');

-- ANIME
INSERT INTO Anime VALUES
('C1','CONF1'),('C1','CONF2'),
('C2','CONF3'),
('C3','CONF4'),('C3','CONF5'),
('C4','CONF7'),
('C5','CONF8');

-- TRAITE
INSERT INTO Traite VALUES
('C1','TH_EXP'),
('C2','TH_INFO'),
('C3','TH_SEJ'),
('C4','TH_ECO'),
('C5','TH_SEJ');

-- EST
INSERT INTO Est VALUES
('C1','FR'),
('C2','FR'),
('C3','FR'),('C3','EN'),
('C4','FR'),
('C5','EN');

-- BESOIN
INSERT INTO Besoin VALUES
('C1','MAT_PROJ'),('C1','MAT_MIC'),
('C2','MAT_MIC'),
('C3','MAT_PROJ'),
('C4','MAT_SON'),
('C5','MAT_PROJ');

-- AFFECTE (conférence)
INSERT INTO Affecte VALUES
('C1','E1'),('C2','E1'),('C3','E1'),('C4','E1'),('C5','E1'),
('C1','E3'),('C2','E3'),
('C3','E4');

-- AFFECTE JOUR
INSERT INTO AffecteJour VALUES
('E1','2025-06-10'),('E1','2025-06-11'),('E1','2025-06-12'),
('E3','2025-06-10'),('E3','2025-06-11'),
('E4','2025-06-12');

-- PARTICIPANT
INSERT INTO PARTICIPANT VALUES
('P1','Durieux','Alice','28','alice@mail.com','Paris','0601',NULL,NULL),
('P2','Moreau','Thomas','35','thomas@mail.com','Lyon','0602','E4',NULL),
('P3','Petit','Emma','42','emma@mail.com','Nantes','0603',NULL,'P1'),

('P10','Inv1','Test','30','i1@mail.com','Paris','0610',NULL,'P1'),
('P11','Inv2','Test','31','i2@mail.com','Paris','0611',NULL,'P1'),
('P12','Inv3','Test','32','i3@mail.com','Paris','0612',NULL,'P1'),
('P13','Inv4','Test','33','i4@mail.com','Paris','0613',NULL,'P1'),
('P14','Inv5','Test','34','i5@mail.com','Paris','0614',NULL,'P1'),
('P15','Inv6','Test','35','i6@mail.com','Paris','0615',NULL,'P1'),
('P16','Inv7','Test','36','i7@mail.com','Paris','0616',NULL,'P1'),
('P17','Inv8','Test','37','i8@mail.com','Paris','0617',NULL,'P1'),
('P18','Inv9','Test','38','i9@mail.com','Paris','0618',NULL,'P1'),
('P19','Inv10','Test','39','i10@mail.com','Paris','0619',NULL,'P1'),
('P20','Inv11','Test','40','i11@mail.com','Paris','0620',NULL,'P1');

-- PARTICIPANT PRO
INSERT INTO PARTICIPANTPRO VALUES
('PP1','Chargée RH','0101','pro@mail.com','GlobalCorp','P2');

-- INSCRIT
INSERT INTO Inscrit VALUES
('C1','P1'),('C1','P2'),
('C2','P3'),
('C3','P2'),
('C4','P1'),
('C5','P1'),('C5','P2');

-- PROJET
INSERT INTO PROJET VALUES
('PR1','École solidaire','Soutien éducatif','ONG Monde','Sophie Leroy','C1'),
('PR2','Culture sans frontières','Échanges culturels','Assoc CSC','Marc Vidal','C3');

-- COLLECTE JOUR
INSERT INTO COLLECTE_JOUR VALUES
('COL1','2025-06-10',12000,'PR1'),
('COL2','2025-06-10',9000,'PR2'),
('COL3','2025-06-11',5000,'PR1'),
('COL4','2025-06-12',15000,'PR2'),
('COL5','2025-06-12',9000,'PR1');

-- CHEQUE
INSERT INTO CHEQUE VALUES
('CH1','CHK001',150,'BNP','Alice Durieux','2025-06-10','PR1'),
('CH2','CHK002',200,'CA','Thomas Moreau','2025-06-11','PR2'),
('CH3','CHK003',300,'LCL','Emma Petit','2025-06-12','PR1');
