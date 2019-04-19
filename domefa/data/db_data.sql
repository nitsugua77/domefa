-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 11 déc. 2018 à 05:16
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
-- Base de données :  `la_phasmitude`
--

CREATE DATABASE IF NOT EXISTS `la_phasmitude`;

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `customers`
--

INSERT INTO `customers` (`id`, `firstname`, `lastname`) VALUES
(1, 'Paul', 'George'),
(2, 'Jill', 'Lewis'),
(3, 'Jack', 'Brown'),
(4, 'Bill', 'Wright'),
(5, 'John', 'Bernstein');

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_date` varchar(32) NOT NULL,
  `order_status` varchar(16) NOT NULL,
  `amount` int(11) NOT NULL,
  `description` text NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `order_date`, `order_status`, `amount`, `description`, `customer_id`) VALUES
(1, '1520308800', 'open', 560, 'Coffee Table Books', 4),
(2, '1520222400', 'open', 9800, 'JavaScript Books', 3),
(3, '1520136000', 'complete', 300, 'Web Development Books', 2),
(4, '1520136000', 'invoiced', 500, 'PHP Books', 5),
(5, '1520308800', 'open', 50, 'Newspapers', 3),
(6, '1520308800', 'held', 300, 'Candy', 3),
(7, '1520222400', 'invoiced', 1200, 'Smart Phones', 5);

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` varchar(100) NOT NULL,
  `image` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `description`, `image`) VALUES
(1, 'Computer', '100.99', 'Laptop', 'computer_laptop.png'),
(2, 'Diskettes', '1.99', '3.5 Diskettes', 'computer_3.5_diskettes.png'),
(3, 'LCD Monitor', '150.99', 'Monitor', 'computer_lcd_monitor.png'),
(4, 'HP Computer', '1200.99', 'HP Computer', 'computer_hp.png'),
(5, 'Computer relic', '20000.00', 'Old Compaq Computer', 'computer_original_compaq.png');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'Doug', '$2y$10$Fo4bJd7cGn8moBj8V4Kjme2KnQGPwn7nfFLJF8/rmF0l/8kDcjGyW'),
(2, 'Andrew', '$2y$10$Fo4bJd7cGn8moBj8V4Kjme2KnQGPwn7nfFLJF8/rmF0l/8kDcjGyW'),
(0, 'Rene', '$2y$10$BQe9sdPFbDRZ1MVtblsVLeuOJ4U356CDaMh12vCsQ2q2TiH8pMQSW'),
(0, 'Jeanne', '$2y$10$eACeBmZTAbkOiQbin1Y/HuRF6LaNbM5T7UezSE9vp.Fyllj2genf2'),
(0, 'Leo', '$2y$10$S3DXdqNU.5fZs8kyAq2FZOSdyagY0drBpSMlRXab3iaCRh6sGDo0O'),
(0, 'PA', '$2y$10$LpDA631PU62HzZeqL0J49eFUTM2Psw.Ai7i1CSrXIKalC9HGkEhYC'),
(0, 'Paul', '$2y$10$FMawATefn9cwY5UKaKggJul2C4HRBZxqiG6iW2e96Ew4/DDBzPYTm'),
(0, 'henri', '$2y$10$Ud4cki9.oiAAZ6zEG3BScevgnvTM58zoGmRaqcFbReFYdzLgSoKjq'),
(0, 'jose', '$2y$10$snsRM3qcNG9kMQkVdGCWDOIqYNwFrbkPRRnrqc5yUuU5MtbDpMVgW'),
(0, 'gerard', '$2y$10$nzz7p9m5pN1EtFRHEJfR9eoYX6Z4yabz/PIZ/0.5aeMrhglIiG5ve'),
(0, 'jeanne', '$2y$10$1yaTFlqjQBYuBz8TTNEV3eUzGy31Lmo1kLU/mSPZibQjS/Gp6ue5m'),
(0, 'marine', '$2y$10$eamTfXfgMR4Z1GIaFBAEQusNO7gRFNZGpvA/aje6IKdqifz30Or3u');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
