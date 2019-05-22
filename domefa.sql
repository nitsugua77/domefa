-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 01 mars 2019 à 14:05
-- Version du serveur :  10.1.36-MariaDB
-- Version de PHP :  7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `domefa`
--

-- --------------------------------------------------------

--
-- Structure de la table `compterendu`
--

CREATE TABLE `compterendu` (
  `IdCompteRendu` int(11) NOT NULL,
  `DateCR` date NOT NULL,
  `Prescription` text COLLATE utf8_bin NOT NULL,
  `Description` text COLLATE utf8_bin NOT NULL,
  `DocumentComplementaire` blob NOT NULL,
  `IdMedecin` int(11) NOT NULL,
  `RPPSAdeli` int(11) NOT NULL,
  `IdPatient` int(11) NOT NULL,
  `NumeroCarteVitale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `compterendu_médicament`
--

CREATE TABLE `compterendu_médicament` (
  `IdCompteRendu` int(11) NOT NULL,
  `IdMédicament` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `maladie`
--

CREATE TABLE `maladie` (
  `IdMaladie` int(11) NOT NULL,
  `Nom` varchar(100) COLLATE utf8_bin NOT NULL,
  `Description` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `medecin`
--

CREATE TABLE `medecin` (
  `IdMedecin` int(11) NOT NULL,
  `RPPSAdeli` int(11) NOT NULL,
  `Signature` blob NOT NULL,
  `Specialisation` varchar(15) COLLATE utf8_bin NOT NULL,
  `IdUtilisateur` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `médicament`
--

CREATE TABLE `médicament` (
  `IdMédicament` int(11) NOT NULL,
  `Nom` varchar(50) COLLATE utf8_bin NOT NULL,
  `GrammageVolume` int(11) NOT NULL,
  `Description` text COLLATE utf8_bin NOT NULL,
  `PrincipeActif` varchar(50) COLLATE utf8_bin NOT NULL,
  `Exciptients` text COLLATE utf8_bin NOT NULL,
  `Laboratoire` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

CREATE TABLE `patient` (
  `IdPatient` int(11) NOT NULL,
  `NumeroCarteVitale` int(11) NOT NULL,
  `DateNaissance` date NOT NULL,
  `GroupeSanguin` char(3) COLLATE utf8_bin NOT NULL,
  `CarteMutuelle` blob NOT NULL,
  `Sexe` tinyint(1) NOT NULL,
  `IdUtilisateur` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `patient_maladie`
--

CREATE TABLE `patient_maladie` (
  `IdMaladie` int(11) NOT NULL,
  `IdPatient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `patient_vaccin`
--

CREATE TABLE `patient_vaccin` (
  `IdVaccin` int(11) NOT NULL,
  `IdPatient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `IdUtilisateur` int(11) NOT NULL,
  `Nom` varchar(50) COLLATE utf8_bin NOT NULL,
  `Prenom` varchar(50) COLLATE utf8_bin NOT NULL,
  `Adresse` varchar(50) COLLATE utf8_bin NOT NULL,
  `AddresseMail` varchar(50) COLLATE utf8_bin NOT NULL,
  `Telephone` int(11) NOT NULL,
  `TypeUtilisateur` varchar(50) COLLATE utf8_bin NOT NULL,
  `IdPatient` int(11) DEFAULT NULL,
  `IdMedecin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `vaccin`
--

CREATE TABLE `vaccin` (
  `IdVaccin` int(11) NOT NULL,
  `Nom` varchar(50) COLLATE utf8_bin NOT NULL,
  `Reference` int(11) NOT NULL,
  `DateAdministration` date NOT NULL,
  `DateRappel` date DEFAULT NULL,
  `Description` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `compterendu`
--
ALTER TABLE `compterendu`
  ADD PRIMARY KEY (`IdCompteRendu`),
  ADD KEY `IdPatient` (`IdPatient`),
  ADD KEY `IdMedecin` (`IdMedecin`);

--
-- Index pour la table `compterendu_médicament`
--
ALTER TABLE `compterendu_médicament`
  ADD PRIMARY KEY (`IdCompteRendu`,`IdMédicament`);

--
-- Index pour la table `maladie`
--
ALTER TABLE `maladie`
  ADD PRIMARY KEY (`IdMaladie`);

--
-- Index pour la table `medecin`
--
ALTER TABLE `medecin`
  ADD PRIMARY KEY (`IdMedecin`),
  ADD KEY `IdUtilisateur` (`IdUtilisateur`);

--
-- Index pour la table `médicament`
--
ALTER TABLE `médicament`
  ADD PRIMARY KEY (`IdMédicament`);

--
-- Index pour la table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`IdPatient`),
  ADD KEY `IdUtilisateur` (`IdUtilisateur`);

--
-- Index pour la table `patient_maladie`
--
ALTER TABLE `patient_maladie`
  ADD PRIMARY KEY (`IdMaladie`,`IdPatient`);

--
-- Index pour la table `patient_vaccin`
--
ALTER TABLE `patient_vaccin`
  ADD PRIMARY KEY (`IdVaccin`,`IdPatient`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`IdUtilisateur`);

--
-- Index pour la table `vaccin`
--
ALTER TABLE `vaccin`
  ADD PRIMARY KEY (`IdVaccin`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `compterendu`
--
ALTER TABLE `compterendu`
  MODIFY `IdCompteRendu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `maladie`
--
ALTER TABLE `maladie`
  MODIFY `IdMaladie` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `medecin`
--
ALTER TABLE `medecin`
  MODIFY `IdMedecin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `médicament`
--
ALTER TABLE `médicament`
  MODIFY `IdMédicament` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `patient`
--
ALTER TABLE `patient`
  MODIFY `IdPatient` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `IdUtilisateur` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `vaccin`
--
ALTER TABLE `vaccin`
  MODIFY `IdVaccin` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `compterendu`
--
ALTER TABLE `compterendu`
  ADD CONSTRAINT `compterendu_ibfk_1` FOREIGN KEY (`IdPatient`) REFERENCES `patient` (`IdPatient`),
  ADD CONSTRAINT `compterendu_ibfk_2` FOREIGN KEY (`IdMedecin`) REFERENCES `medecin` (`IdMedecin`);

--
-- Contraintes pour la table `medecin`
--
ALTER TABLE `medecin`
  ADD CONSTRAINT `medecin_ibfk_1` FOREIGN KEY (`IdUtilisateur`) REFERENCES `utilisateur` (`IdUtilisateur`);

--
-- Contraintes pour la table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`IdUtilisateur`) REFERENCES `utilisateur` (`IdUtilisateur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
