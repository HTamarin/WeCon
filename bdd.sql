-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- H�te : localhost:8889
-- G�n�r� le :  lun. 20 mai 2019 � 15:38
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de donn�es :  bdr
--

-- --------------------------------------------------------

--
-- Structure de la table questionsrep
--

CREATE TABLE questionsrep (
  id int(11) NOT NULL,
  question text NOT NULL,
  reponse text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- D�chargement des donn�es de la table questionsrep
--

INSERT INTO questionsrep (id, question, reponse) VALUES
(1, 'Que se passe-t-il en cas de coupure de courant ?', 'Une batterie de secours prendra le relais pour 3-4 cycles d�ouverture/fermeture.'),
(2, 'Quelle cr�maill�re dois-je choisir ? Droite ou gauche ?', 'Cela d�pend de votre installation initiale, g�n�ralement il faut alterner entre une cr�maill�re droite puis une gauche.'),
(3, 'Quelle est la diff�rence entre une cr�maill�re droite et une cr�maill�re gauche ?', 'Quand on regarde le portail du c�t� o� les cr�maill�res sont fix�es, il y a 2 pattes de fixation rapproch�es, si elles sont � droite, c�est une cr�maill�re droite, vis-versa pour la gauche.'),
(4, 'Peut-on avoir plusieurs platines de rue ?', 'Les produits propos�s par WeCon ne permettent pas d�avoir plusieurs platines de rue.'),
(5, 'Peut-on avoir plusieurs moniteurs ?', 'Certains visiophones peuvent �tre �quip�s de 2 moniteurs maximum.'),
(6, 'Mon installation est sur 4 fils, puis-je installer un visiophone 2 fils ?', 'Oui, prenez uniquement 2 fils sur les 4. La diff�rence entre un 4 fils et un 2 fils, c�est l�envoi d�informations entre la platine de rue et le moniteur qui est optimis�.'),
(7, 'Je veux contr�ler diff�rents �l�ments de ma maison quand je suis hors de chez moi (exemple : je veux que mes volets/lumi�res s�actionnent automatiquement). Quel type de produit dois-je installer ?', 'Les produits propos�s par WeCon qui r�pondent parfaitement � ces besoins sont les box domotiques.'),
(8, 'Que puis-je piloter avec une box domotique ?', 'Vous pouvez contr�ler l��clairage, les motorisations de volet, l�ouverture de votre portail,\r\n			le chauffage �lectrique, des prises t�l�command�es, une alarme (g�n�ralement int�gr�e).\r\n		De plus, vous pouvez aussi recevoir diff�rentes informations � l�aide de d�tecteurs de pluie, de gaz, de mouvement ou d�ouverture.\r\n		\r\n		Vous pouvez �galement calculer la consommation �lectrique ainsi qu�avoir tous les retours d��tat (si une lumi�re est rest�e allum�e, un volet est ferm�, etc.).\r\n		\r\n		Toutes ces informations sont envoy�es et disponibles sur votre smartphone pour assurer votre tranquillit� lors de vos d�placements.\r\n		\r\n		Vous pouvez programmer la box pour qu�elle contr�le certains �l�ments, notamment l�ouverture/fermeture des volets de la maison le matin et le soir.'),
(9, 'Qu�est-ce un chauffage �lectrique dit � rayonnant � ?', 'C�est un chauffage qui dispose d�une plaque chauff�e par une r�sistance. Il ne chauffe pas seulement l�air mais les personnes et les meubles ; ce qui donne une impression de chaleur. Id�al dans les pi�ces telles qu�une chambre, le bureau, la cuisine, la salle de bain. L�inconv�nient majeur de ce type de chauffage, est qu�il n�a pas d�inertie lorsque l�appareil se coupe.'),
(10, 'Qu�est-ce un chauffage �lectrique dit � fluide � ?', 'C�est un chauffage qui dispose d�une r�sistance �lectrique qui chauffe un fluide dans le radiateur. Cela permet d�absorber et de restituer rapidement la chaleur produite. Ce type de radiateur a une meilleure inertie qu�un radiateur dit � rayonnant �. Id�al dans les pi�ces comme le s�jour ou une chambre d�enfant.'),
(11, 'Qu�est-ce un chauffage �lectrique dit � inertie s�che � ?', 'C�est un chauffage qui dispose d�une r�sistance �lectrique qui chauffe un fluide dans le radiateur. Cela permet d�absorber et de restituer rapidement la chaleur produite. Ce type de radiateur a une meilleure inertie qu�un radiateur dit � rayonnant �. Id�al dans les pi�ces comme le s�jour ou une chambre d�enfant.');

--
-- Index pour les tables d�charg�es
--

--
-- Index pour la table questionsrep
--
ALTER TABLE questionsrep
  ADD PRIMARY KEY (id);

--
-- AUTO_INCREMENT pour les tables d�charg�es
--

--
-- AUTO_INCREMENT pour la table questionsrep
--
ALTER TABLE questionsrep
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;