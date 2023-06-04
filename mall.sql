-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 19 mai 2023 à 21:16
-- Version du serveur : 8.0.30
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mall`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int NOT NULL,
  `qteStk` int NOT NULL,
  `qteMin` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `produitId` int DEFAULT NULL,
  `tailleId` int DEFAULT NULL,
  `couleurId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `qteStk`, `qteMin`, `image`, `produitId`, `tailleId`, `couleurId`) VALUES
(1, 50, 0, 'https://static.zara.net/photos///2023/V/0/2/p/7545/512/800/2/w/850/7545512800_6_1_1.jpg?ts=1680174585198', 1, 2, 4),
(2, 50, 0, 'https://static.zara.net/photos///2023/V/0/2/p/7545/512/800/2/w/850/7545512800_6_1_1.jpg?ts=1680174585198', 1, 3, 4),
(3, 50, 0, 'https://static.zara.net/photos///2023/V/0/2/p/7545/512/800/2/w/850/7545512800_6_1_1.jpg?ts=1680174585198', 1, 4, 4),
(4, 50, 0, 'https://static.zara.net/photos///2023/V/0/2/p/7545/512/800/2/w/850/7545512800_6_1_1.jpg?ts=1680174585198', 1, 6, 4),
(5, 50, 0, 'https://static.zara.net/photos///2023/V/0/2/p/7545/512/711/2/w/850/7545512711_6_1_1.jpg?ts=1680174562223', 1, 2, 10),
(6, 50, 0, 'https://static.zara.net/photos///2023/V/0/2/p/7545/512/711/2/w/850/7545512711_6_1_1.jpg?ts=1680174562223', 1, 3, 10),
(7, 50, 0, 'https://static.zara.net/photos///2023/V/0/2/p/7545/512/711/2/w/850/7545512711_6_1_1.jpg?ts=1680174562223', 1, 4, 10),
(8, 50, 0, 'https://static.zara.net/photos///2023/V/0/2/p/7545/512/711/2/w/850/7545512711_6_1_1.jpg?ts=1680174562223', 1, 5, 10),
(9, 50, 101, 'https://static.zara.net/photos///2023/V/0/1/p/2183/060/064/2/w/850/2183060064_1_1_1.jpg?ts=1679046795849', 19, 6, 4),
(10, 50, 0, 'https://static.zara.net/photos///2023/V/0/1/p/2183/060/064/2/w/850/2183060064_1_1_1.jpg?ts=1679046795849', 19, 3, 10),
(11, 40, 0, 'mmmm', 21, 2, 4),
(12, 40, 0, 'mmmm', 21, 2, 3),
(13, 40, 0, 'mmmm', 22, 2, 3),
(14, 40, 0, 'mmmm', 22, 2, 4);

-- --------------------------------------------------------

--
-- Structure de la table `boutiques`
--

CREATE TABLE `boutiques` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `site_web` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `utilisateurId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Déchargement des données de la table `boutiques`
--

INSERT INTO `boutiques` (`id`, `name`, `email`, `adresse`, `logo`, `image`, `latitude`, `longitude`, `site_web`, `utilisateurId`) VALUES
(1, 'Zara', 'ZARA@gmail.com', 'Azur City Mall', 'https://logos-marques.com/wp-content/uploads/2020/08/Zara-log%D0%BE.png', 'https://cdn.dribbble.com/users/1849236/screenshots/13972040/media/393d1e02b9f5411f7c9c2a89de0ec664.png', NULL, NULL, 'https://www.zara.com/tn/', 1),
(2, 'H&M', 'HM@gmail.com', 'Azur City Mall', 'https://logos-marques.com/wp-content/uploads/2021/03/HM-Logo.png', 'https://www.hm.com/nt-north/uploads/2023/04/2007-Henrick-NTM-NT-alt-TOP-1920x1280.jpg', NULL, NULL, 'https://www.hm.com/tn/', 2),
(3, 'Stradivarius', 'Stradivarius@gmail.com', 'Mall of Sousse', 'https://logo-marque.com/wp-content/uploads/2020/12/Stradivarius-Logo.png', 'https://logo-marque.com/wp-content/uploads/2020/12/Stradivarius-Logo.png', NULL, NULL, 'https://www.stradivarius.com/tn/', 3),
(4, 'Bershka', 'Bershka@gmail.com', 'Mall of Sousse', 'https://logos-marques.com/wp-content/uploads/2021/03/Bershka-Logo.png', 'https://logos-marques.com/wp-content/uploads/2021/03/Bershka-Logo.png', NULL, NULL, 'https://www.bershka.com/tn/h-man.html', 4),
(5, 'Pull&Bear', 'Pull&Bear@gmail.com', 'MaMall Azur City', 'https://upload.wikimedia.org/wikipedia/commons/4/49/Actual_logo_pull_and_bear.jpg', 'https://upload.wikimedia.org/wikipedia/commons/4/49/Actual_logo_pull_and_bear.jpg', NULL, NULL, 'https://www.pullandbear.com/', 5),
(6, 'Mango', 'Mango@gmail.com', 'MaMall Azur City', 'https://logos-marques.com/wp-content/uploads/2020/04/Mango-logo.png', 'https://logos-marques.com/wp-content/uploads/2020/04/Mango-logo.png', NULL, NULL, 'https://shop.mango.com/fr/femme', 6),
(11, NULL, 'nn@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, NULL, 'boutique@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 11);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(6, 'Chaussures'),
(3, 'Enfant'),
(2, 'Femme'),
(1, 'Homme');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `dateNaiss` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `utilisateurId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Structure de la table `couleurs`
--

CREATE TABLE `couleurs` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Déchargement des données de la table `couleurs`
--

INSERT INTO `couleurs` (`id`, `name`) VALUES
(10, 'Beige'),
(5, 'blanc'),
(1, 'bleu'),
(3, 'jeune'),
(9, 'marron'),
(4, 'noir'),
(7, 'rose'),
(2, 'rouge'),
(8, 'vert');

-- --------------------------------------------------------

--
-- Structure de la table `livreures`
--

CREATE TABLE `livreures` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `fraisLivraison` int DEFAULT NULL,
  `utilisateurId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Déchargement des données de la table `livreures`
--

INSERT INTO `livreures` (`id`, `name`, `prenom`, `email`, `photo`, `tel`, `fraisLivraison`, `utilisateurId`) VALUES
(3, NULL, NULL, 'livreure@gmail.com', NULL, NULL, NULL, 15);

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `prix` int NOT NULL,
  `souscategorieId` int DEFAULT NULL,
  `boutiqueId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id`, `name`, `reference`, `image`, `description`, `video`, `prix`, `souscategorieId`, `boutiqueId`) VALUES
(1, 'CHEMISE EN LIN', 'CHEL', 'https://static.zara.net/photos///2023/V/0/2/p/7545/512/711/2/w/850/7545512711_1_1_1.jpg?ts=1682499540963', 'Chemise en lin coupe décontractée. collier de boules. Manches courtes. Fentes latérales à l\'ourlet. Patte de boutonnage à l\'avant.', 'string', 90, 1, 1),
(2, 'CHEMISE EN SOI', 'CHES', 'https://static.zara.net/photos///2023/V/0/2/p/4475/498/403/2/w/1920/4475498403_6_1_1.jpg?ts=1680174553125', 'Chemise en soie coupe décontractée. collier de boules. Manches courtes. Fentes latérales à l\'ourlet. Patte de boutonnage à l\'avant.', '', 80, 1, 1),
(3, 'CHEMISE EN SOI', 'CHES', 'https://static.zara.net/photos///2023/V/0/2/p/4475/498/403/2/w/1920/4475498403_6_1_1.jpg?ts=1680174553125', 'Chemise en soie coupe décontractée. collier de boules. Manches courtes. Fentes latérales à l\'ourlet. Patte de boutonnage à l\'avant.', '', 80, 1, 2),
(4, 'CHEMISE À MOTIF TEXTURÉ - ENTRETIEN', 'CHAMT', 'https://static.zara.net/photos///2023/V/0/2/p/4694/301/250/2/w/1920/4694301250_6_1_1.jpg?ts=1682592766679', 'Chemise adaptée à un usage quotidien en tissu avec une structure facile d\'entretien.', NULL, 60, 1, 1),
(5, 'CHEMISE À MOTIF TEXTURÉ - ENTRETIEN', 'CHAMT', 'https://static.zara.net/photos///2023/V/0/2/p/4694/301/250/2/w/1920/4694301250_6_1_1.jpg?ts=1682592766679', 'Chemise adaptée à un usage quotidien en tissu avec une structure facile d\'entretien.', NULL, 60, 1, 3),
(6, 'CHEMISE RAYÉE', 'CR', 'https://static.zara.net/photos///2023/V/0/1/p/3564/105/060/2/w/1920/3564105060_6_1_1.jpg?ts=1682666431347', 'Chemise à col rond et encolure en V. Manche longue. Poche avant plaquée. Ourlet asymétrique avec fentes latérales. Patte de boutonnage à l\'avant.', NULL, 65, 2, 1),
(7, 'CHEMISE RAYÉE', 'CR', 'https://static.zara.net/photos///2023/V/0/1/p/3564/105/060/2/w/1920/3564105060_6_1_1.jpg?ts=1682666431347', 'Chemise à col rond et encolure en V. Manche longue. Poche avant plaquée. Ourlet asymétrique avec fentes latérales. Patte de boutonnage à l\'avant.', NULL, 65, 2, 5),
(8, 'CHEMISE OVERSIZE EN LIN', 'COEL', 'https://static.zara.net/photos///2023/V/0/1/p/3461/707/250/2/w/850/3461707250_6_1_1.jpg?ts=1682437259648', 'Chemise en pur lin. Avec col rond et encolure en V. Manches courtes.', NULL, 80, 2, 1),
(9, 'CHEMISE OVERSIZE EN LIN', 'COEL', 'https://static.zara.net/photos///2023/V/0/1/p/3461/707/250/2/w/850/3461707250_6_1_1.jpg?ts=1682437259648', 'Chemise en pur lin. Avec col rond et encolure en V. Manches courtes.', NULL, 80, 2, 6),
(10, 'CHEMISE OVERSIZE EN RAMIE', 'COER', 'https://static.zara.net/photos///2023/V/0/1/p/2731/064/400/2/w/850/2731064400_6_1_1.jpg?ts=1682604202643', 'Chemise ample en ramie. col rabattu. Manches longues avec revers. Poche poitrine plaquée. Ourlet asymétrique. Patte de boutonnage à l\'avant.', NULL, 90, 2, 1),
(11, 'CHEMISE OVERSIZE EN RAMIE', 'COER', 'https://static.zara.net/photos///2023/V/0/1/p/2731/064/400/2/w/850/2731064400_6_1_1.jpg?ts=1682604202643', 'Chemise ample en ramie. col rabattu. Manches longues avec revers. Poche poitrine plaquée. Ourlet asymétrique. Patte de boutonnage à l\'avant.', NULL, 90, 2, 4),
(12, 'PANTALON LONG FLUIDE.', 'PLF', 'https://static.zara.net/photos///2022/I/0/1/p/2731/271/800/2/w/850/2731271800_6_1_1.jpg?ts=1661163058236', 'Chemise ample en ramie. col rabattu. Manches longues avec revers. Poche poitrine plaquée. Ourlet asymétrique. Patte de boutonnage à l\'avant.', NULL, 120, 5, 1),
(13, 'PANTALON TAILLE HAUTE', 'PTH', 'https://static.zara.net/photos///2023/V/0/1/p/2162/888/704/2/w/850/2162888704_6_1_1.jpg?ts=1677581919950', 'Pantalon taille haute. Coutures décoratives distinctives à l\'avant et à l\'arrière. Poches passepoilées à l\'avant.', NULL, 90, 5, 3),
(14, 'PANTALON TAILLE HAUTE', 'PTH', 'https://static.zara.net/photos///2023/V/0/1/p/2162/888/704/2/w/850/2162888704_6_1_1.jpg?ts=1677581919950', 'Pantalon taille haute. Coutures décoratives distinctives à l\'avant et à l\'arrière. Poches passepoilées à l\'avant.', NULL, 90, 5, 1),
(15, 'PANTALON PLEIN LONGUEUR', 'PPL', 'https://static.zara.net/photos///2023/V/0/1/p/7385/431/727/2/w/850/7385431727_6_1_1.jpg?ts=1679988876291', 'Pantalon taille haute. poches avant. Poches passepoilées aveugles aux hanches. plis décoratifs. Fermeture', NULL, 150, 5, 1),
(16, 'PANTALON PLEIN LONGUEUR', 'PPL', 'https://static.zara.net/photos///2023/V/0/1/p/7385/431/727/2/w/850/7385431727_6_1_1.jpg?ts=1679988876291', 'Pantalon taille haute. poches avant. Poches passepoilées aveugles aux hanches. plis décoratifs. Fermeture', NULL, 150, 5, 6),
(17, 'BLAZER OVERSIZE À DOUBLE BOUTONNAGE', 'BOADB', 'https://static.zara.net/photos///2023/V/0/1/p/2753/132/803/2/w/594/2753132803_2_1_1.jpg?ts=1674039989580', 'Blazer large avec col à revers. Manche longue. épaulettes. Poches à rabat à l\'avant. Patte de boutonnage croisée sur le devant.', NULL, 200, 17, 1),
(19, 'zuhj', 'kvhj', 'https://static.zara.net/photos///2023/V/0/1/p/2183/060/064/2/w/850/2183060064_1_1_1.jpg?ts=1679046795849', 'ö.iul,zikujzh', NULL, 200, 5, 1),
(20, 'Blazer', 'aaaaa', 'https://static.zara.net/photos///2023/V/0/1/p/2120/408/802/2/w/850/2120408802_6_1_1.jpg?ts=1676285777195', 'aaaaaaaaaaa', NULL, 155, 17, 1),
(21, 'xxxx', 'xxxx', 'xxxxx', 'xxxxxx', 'xxxxx', 90, 1, 1),
(22, 'yyyyy', 'xxxx', 'xxxxx', 'xxxxxx', 'xxxxx', 120, 1, 1),
(23, 'Mocassin plat', 'MP', 'https://static.e-stradivarius.net/5/photos3/2023/V/1/1/p/9114/170/092/9114170092_2_1_2.jpg?t=1679473388993', 'comfy', NULL, 120, 23, 4),
(24, 'Mocassin ', 'M', 'https://static.e-stradivarius.net/5/photos3/2023/V/1/1/p/9106/170/040/9106170040_2_1_2.jpg?t=1679472958741', 'ccc', NULL, 200, 23, 4);

-- --------------------------------------------------------

--
-- Structure de la table `sous_categories`
--

CREATE TABLE `sous_categories` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `categorieId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Déchargement des données de la table `sous_categories`
--

INSERT INTO `sous_categories` (`id`, `name`, `categorieId`) VALUES
(1, 'chemise', 1),
(2, 'chemise', 2),
(3, 'chemise', 3),
(4, 'pantalon', 3),
(5, 'pantalon', 2),
(6, 'pantalon', 1),
(7, 'T-shirts', 1),
(9, 'Shorts', 1),
(10, 'Polo', 1),
(11, 'Robe', 2),
(12, 'Jupe', 2),
(13, 'Crops-Tops', 2),
(14, 'Vestes', 2),
(17, 'blazer', 2),
(23, 'Derbies', 6),
(24, 'chaussure plat', 6);

-- --------------------------------------------------------

--
-- Structure de la table `tailles`
--

CREATE TABLE `tailles` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Déchargement des données de la table `tailles`
--

INSERT INTO `tailles` (`id`, `name`) VALUES
(8, '34'),
(9, '35'),
(10, '36'),
(11, '37'),
(12, '38'),
(13, '39'),
(14, '40'),
(15, '41'),
(16, '42'),
(17, '43'),
(4, 'l'),
(3, 'm'),
(2, 's'),
(5, 'xl'),
(1, 'xs'),
(6, 'xxl'),
(7, 'xxxl');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `role` int NOT NULL DEFAULT '2',
  `login` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `villeId` int DEFAULT NULL,
  `boutiqueId` int DEFAULT NULL,
  `clientId` int DEFAULT NULL,
  `livreureId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `name`, `email`, `adresse`, `role`, `login`, `password`, `villeId`, `boutiqueId`, `clientId`, `livreureId`) VALUES
(1, 'ZaraAdmin', 'Zara@gmail.com', 'Mall Azur City', 2, 'ZaraAdmin', '$2b$12$Qj0UL3uAPlcf4eh9ikx.B.9YuLsO1RSpkXs8fDbY9x4ZKN.z0GLdK', 23, 1, NULL, NULL),
(2, 'HMdmin', 'HM@gmail.com', 'Mall of Sousse', 1, 'AdminHM', '$2b$12$J//ntY.ZQtN7MEwYajlyDuW2OsY2zgGSldtzP0pO.06Tlodjs.nAe', 20, 2, NULL, NULL),
(3, 'AdminStradivarius', 'Stradivarius@gmail.com', 'Mall of Sousse', 2, 'AdminStradivarius', '$2b$12$SNmA4.pTBYIQOG19n.NWuumb6ey/2b9KQgJYnvgoG1KskkVHILtU6', 20, 3, NULL, NULL),
(4, 'AdminBershka', 'Bershka@gmail.com', 'Mall of sousse', 1, 'AdminBershka', '$2b$12$MLNSICs0raG8ZeZZvuLL/.vENxvDJU5Am3.VK.fhEhwG1nsirg4ye', 20, 4, NULL, NULL),
(5, 'AdminPull&Bear', 'Pull&Bear@gmail.com', 'Azur City Mall', 1, 'AdminPull&Bear', '$2b$12$F0veIkRhz9PvnDarlbPoSeITZgTe.Ks.hWAv.GlqNUtB9CBlDi5cy', 23, 5, NULL, NULL),
(6, 'AdminMango', 'Mango@gmail.com', 'Azur City Mall', 2, 'AdminMango', '$2b$12$HkUZPxVw5YW6tytvxunE1O5Mos1rd/mg3uPY/GRcTlVwTwblpGZYy', 23, 6, NULL, NULL),
(10, NULL, 'nn@gmail.com', NULL, 2, 'nn', '$2b$12$/ZRUeWAIQqaswk9NTULzueHt56BPxXRYzXi8vIDGB7bUuOESntorW', NULL, NULL, NULL, NULL),
(11, NULL, 'boutique@gmail.com', NULL, 2, 'boutique', '$2b$12$ufgQKjvEqTaN2GDrcg4IYuZ52Bx0vn6FMlcwDAsGjkwdjvl3P.n5e', NULL, 12, NULL, NULL),
(15, NULL, 'livreure@gmail.com', NULL, 3, 'livreure', '$2b$12$8yffdTzh2lwphmIa3PiZFetdEZgX9n8jaBYYitW4xO/hkT05G36me', NULL, NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Structure de la table `villes`
--

CREATE TABLE `villes` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Déchargement des données de la table `villes`
--

INSERT INTO `villes` (`id`, `name`) VALUES
(1, 'Ariana'),
(2, 'Béja'),
(3, 'Ben Arous'),
(4, 'Bizerte'),
(5, 'Gabes'),
(6, 'Gafsa'),
(7, 'Jendouba'),
(8, 'Kairouan'),
(9, 'Kasserine'),
(10, 'Kebili'),
(11, 'La Manouba'),
(12, 'Le Kef'),
(13, 'Mahdia'),
(14, 'Médenine'),
(15, 'Monastir'),
(16, 'Nabeul'),
(17, 'Sfax'),
(18, 'Sidi Bouzid'),
(19, 'Siliana'),
(20, 'Sousse'),
(21, 'Tataouine'),
(22, 'Tozeur'),
(23, 'Tunis'),
(24, 'Zaghouan');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_d8ea6be45d134bdb1bd88224e51` (`produitId`),
  ADD KEY `FK_e90af8a4aa12832086fe782c6f2` (`tailleId`),
  ADD KEY `FK_54365460d56b1705b0f250fd205` (`couleurId`);

--
-- Index pour la table `boutiques`
--
ALTER TABLE `boutiques`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_30ea804888d8d2b37a88b50e3e` (`email`),
  ADD UNIQUE KEY `REL_550fb94b1911f74410247fdc57` (`utilisateurId`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_8b0be371d28245da6e4f4b6187` (`name`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_b48860677afe62cd96e1265948` (`email`),
  ADD UNIQUE KEY `REL_809b5f43fef1919d2be2364426` (`utilisateurId`);

--
-- Index pour la table `couleurs`
--
ALTER TABLE `couleurs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_914aef0f97b43a38a0b5e6026b` (`name`);

--
-- Index pour la table `livreures`
--
ALTER TABLE `livreures`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_b85cceda056bc0ee5114554757` (`email`),
  ADD UNIQUE KEY `REL_ca32681fccbe078d9b776b814c` (`utilisateurId`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_b55d804c8d7a7729715662790f5` (`souscategorieId`),
  ADD KEY `FK_8ee4589aa715ce3e1167eb69b40` (`boutiqueId`);

--
-- Index pour la table `sous_categories`
--
ALTER TABLE `sous_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_494e407ac2ab3e018aa6e33df9c` (`categorieId`);

--
-- Index pour la table `tailles`
--
ALTER TABLE `tailles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_db0a3cbce0c41b7bdadffc5b52` (`name`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_6b14325a486fe68d16aa889e4d` (`email`),
  ADD UNIQUE KEY `IDX_189fdf5180b09409bccf122dc1` (`login`),
  ADD UNIQUE KEY `REL_e253aaa8707d71193773fe886b` (`boutiqueId`),
  ADD UNIQUE KEY `REL_3cb2ac76f0478544879b2ddaa7` (`clientId`),
  ADD UNIQUE KEY `REL_ec6dd03345bb3ed39cf50d4a35` (`livreureId`),
  ADD KEY `FK_fdf0ad76711942c5549dcdd4afb` (`villeId`);

--
-- Index pour la table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_f6826f7b95df205eaec03b0030` (`name`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `boutiques`
--
ALTER TABLE `boutiques`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `couleurs`
--
ALTER TABLE `couleurs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `livreures`
--
ALTER TABLE `livreures`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `sous_categories`
--
ALTER TABLE `sous_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `tailles`
--
ALTER TABLE `tailles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `villes`
--
ALTER TABLE `villes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `FK_54365460d56b1705b0f250fd205` FOREIGN KEY (`couleurId`) REFERENCES `couleurs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_d8ea6be45d134bdb1bd88224e51` FOREIGN KEY (`produitId`) REFERENCES `produits` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_e90af8a4aa12832086fe782c6f2` FOREIGN KEY (`tailleId`) REFERENCES `tailles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `boutiques`
--
ALTER TABLE `boutiques`
  ADD CONSTRAINT `FK_550fb94b1911f74410247fdc576` FOREIGN KEY (`utilisateurId`) REFERENCES `utilisateurs` (`id`);

--
-- Contraintes pour la table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `FK_809b5f43fef1919d2be2364426b` FOREIGN KEY (`utilisateurId`) REFERENCES `utilisateurs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `livreures`
--
ALTER TABLE `livreures`
  ADD CONSTRAINT `FK_ca32681fccbe078d9b776b814cc` FOREIGN KEY (`utilisateurId`) REFERENCES `utilisateurs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `FK_8ee4589aa715ce3e1167eb69b40` FOREIGN KEY (`boutiqueId`) REFERENCES `boutiques` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_b55d804c8d7a7729715662790f5` FOREIGN KEY (`souscategorieId`) REFERENCES `sous_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `sous_categories`
--
ALTER TABLE `sous_categories`
  ADD CONSTRAINT `FK_494e407ac2ab3e018aa6e33df9c` FOREIGN KEY (`categorieId`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD CONSTRAINT `FK_3cb2ac76f0478544879b2ddaa79` FOREIGN KEY (`clientId`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_e253aaa8707d71193773fe886bd` FOREIGN KEY (`boutiqueId`) REFERENCES `boutiques` (`id`),
  ADD CONSTRAINT `FK_ec6dd03345bb3ed39cf50d4a35c` FOREIGN KEY (`livreureId`) REFERENCES `livreures` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_fdf0ad76711942c5549dcdd4afb` FOREIGN KEY (`villeId`) REFERENCES `villes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
