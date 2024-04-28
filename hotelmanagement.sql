-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 28 avr. 2024 à 13:54
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `hotelmanagement`
--

-- --------------------------------------------------------

--
-- Structure de la table `guide`
--

CREATE TABLE `guide` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `guide`
--

INSERT INTO `guide` (`id`, `name`, `designation`, `contact`, `instagram`, `created_at`, `images`) VALUES
(1, 'AMTDI HANANE', 'guide', '0767899763', 'https://www.instagram.com/achrafhakimi/', NULL, NULL),
(2, 'guide Marrakech', 'guide légal', 'https://www.facebook.com/profile.php?id=100009662569804&locale=fr_FR', 'https://www.instagram.com/social_guide_marrakech/', NULL, NULL),
(3, 'guide Marrakech', 'guide légal', 'https://www.facebook.com/profile.php?id=100009662569804&locale=fr_FR', 'klrghr', NULL, '1713889514440_marakkech.jpg'),
(4, 'guide Marrakech', 'guide légal', 'https://www.facebook.com/profile.php?id=100009662569804&locale=fr_FR', 'klrghr', NULL, '1713889710933_marakkech.jpg'),
(5, 'guide Marrakech', 'guide légal', 'https://www.facebook.com/profile.php?id=100009662569804&locale=fr_FR', 'efef', NULL, '1713890471921_marakkech.jpg'),
(6, 'guide Marrakech', 'guide légal', 'https://www.facebook.com/profile.php?id=100009662569804&locale=fr_FR', 'efef', NULL, '1713890477297_marakkech.jpg'),
(7, 'guide Marrakech', 'guide légal', 'https://www.facebook.com/profile.php?id=100009662569804&locale=fr_FR', 'efef', NULL, '1713890900891_marakkech.jpg'),
(8, 'guide Marrakech', 'guide légal', 'https://www.facebook.com/profile.php?id=100009662569804&locale=fr_FR', 'efef', NULL, '1713890905372_marakkech.jpg'),
(9, 'guide fes', 'guide légal', 'https://www.facebook.com/profile.php?id=100009662569804&locale=fr_FR', 'urlInsta', NULL, '1713896687250_fes.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `hotel`
--

CREATE TABLE `hotel` (
  `id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `prix` double DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `hotel`
--

INSERT INTO `hotel` (`id`, `address`, `description`, `images`, `name`, `prix`, `created_at`) VALUES
(23, 'Marrakech', 'Situé à proximité des monuments les plus célèbres de Marrakech, comme Cyber Parc Arsat Moulay Abdeslam (1,1 km) et Marrakech Train Station (2,0 km), le Four Seasons Resort Marrakech est une destination idéale pour les touristes.', '1713715951134_marakkech.jpg', 'Four Seasons Resort Marrakech Hotel', 3000, '2024-04-21 17:12:31.000000'),
(24, 'Fez', 'Embedded deep in the jumble of passageways that make up Fez’s mystical medina, Riad Fes fuses sumptuous décor, old-world serenity, and smart luxury.', '1713895403950_fes.jpg', 'Riad Fes', 3000, '2024-04-23 19:03:23.000000');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id` bigint(20) NOT NULL,
  `check_in` varchar(255) DEFAULT NULL,
  `check_out` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `rooms` int(11) NOT NULL,
  `hotel_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`id`, `check_in`, `check_out`, `email`, `name`, `phone`, `rooms`, `hotel_id`) VALUES
(12, '2024-04-08', '2024-05-08', 'hanane.amtdi@usmba.ac.ma', 'AMTDI HANANE', '0657188896', 1, 23),
(13, '2024-04-03', '2024-05-08', 'khadija@gmail.com', 'Belmadani khadija', '0657188896', 1, 23),
(14, '2024-04-03', '2024-05-08', 'khadija@gmail.com', 'Belmadani khadija', '0657188896', 1, 23),
(15, '2024-04-03', '2024-05-08', 'khadija@gmail.com', 'Belmadani khadija', '0657188896', 1, 23),
(16, '2024-04-28', '2024-05-09', 'khadija@gmail.com', 'Belmadani khadija', '0657188896', 1, 23),
(17, '2024-04-30', '2024-05-10', 'hanane.amtdi@usmba.ac.ma', 'AMTDI HANANE', '0657188896', 1, 23),
(18, '2024-04-30', '2024-05-10', 'hanane.amtdi@usmba.ac.ma', 'AMTDI HANANE', '0657188896', 1, 23),
(19, '2024-04-07', '2024-04-23', 'hanane.amtdi@usmba.ac.ma', 'AMTDI HANANE', '0657188896', 1, 23);

-- --------------------------------------------------------

--
-- Structure de la table `review`
--

CREATE TABLE `review` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `review_text` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `review`
--

INSERT INTO `review` (`id`, `email`, `name`, `review_text`) VALUES
(1, 'hanane.amtdi@usmba.ac.ma', 'AMTDI HANANE', 'c\'est trés interessnt'),
(2, 'hanane.amtdi@usmba.ac.ma', 'Hanane', 'un site impeccable'),
(3, 'hanane.amtdi@usmba.ac.ma', 'Hanane', 'une experience inoubliable');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `role` enum('ADMIN','USER') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `guide`
--
ALTER TABLE `guide`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKkrmw55mlm5an5ca5qnmrs3pbe` (`hotel_id`);

--
-- Index pour la table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`),
  ADD UNIQUE KEY `UK_kiqfjabx9puw3p1eg7kily8kg` (`password`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `guide`
--
ALTER TABLE `guide`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `review`
--
ALTER TABLE `review`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `FKkrmw55mlm5an5ca5qnmrs3pbe` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
