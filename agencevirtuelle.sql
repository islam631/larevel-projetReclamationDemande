-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 15 déc. 2023 à 16:03
-- Version du serveur : 8.0.31
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `agencevirtuelle`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id_admin` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom_ad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom_ad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_ad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_ad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_admin`),
  UNIQUE KEY `admins_email_ad_unique` (`email_ad`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admins`
--

INSERT INTO `admins` (`id_admin`, `nom_ad`, `prenom_ad`, `email_ad`, `password_ad`, `created_at`, `updated_at`) VALUES
(12, 'CHOHRA', 'ChamesEddine', 'chohrachamesdine@gmail.com', '$2y$10$IOOHWCMaOpa3c0Wy2A1ZeexlQ16FnAghCsM0V0M8uolkQhUpA9tpe', '2023-05-31 11:22:28', '2023-05-31 11:22:28');

-- --------------------------------------------------------

--
-- Structure de la table `demandes`
--

DROP TABLE IF EXISTS `demandes`;
CREATE TABLE IF NOT EXISTS `demandes` (
  `id_dmnd` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `date_dmnd` date NOT NULL,
  `piece_did` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acte_Prop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `autors_Apc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_admin` int UNSIGNED DEFAULT NULL,
  `id_user` int UNSIGNED DEFAULT NULL,
  `id_typeprd` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id_dmnd`),
  KEY `demandes_id_admin_foreign` (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `demandes`
--

INSERT INTO `demandes` (`id_dmnd`, `date_dmnd`, `piece_did`, `acte_Prop`, `autors_Apc`, `statu`, `created_at`, `updated_at`, `id_admin`, `id_user`, `id_typeprd`) VALUES
(34, '2023-06-01', '1685625195.png', '1685625195.jpg', '1685625195.jpg', 'en cours', '2023-06-01 12:13:15', '2023-06-06 08:51:40', NULL, 7, 1),
(35, '2023-06-02', '1685734568.jpg', '1685734568.jpg', '1685734568.jpg', NULL, '2023-06-02 18:36:08', '2023-06-02 18:36:08', NULL, 11, 1);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2023_05_27_144414_create_admins_table', 1),
(5, '2023_05_27_144415_create_users_table', 1),
(6, '2023_05_27_144416_create_typerecs_table', 1),
(7, '2023_05_27_144417_create_typeprds_table', 1),
(8, '2023_05_27_144420_create_recus_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reclamations`
--

DROP TABLE IF EXISTS `reclamations`;
CREATE TABLE IF NOT EXISTS `reclamations` (
  `id_Rec` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `date_rec` date NOT NULL,
  `contenu_rec` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statu_rec` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_admin` int UNSIGNED DEFAULT NULL,
  `id_typeprd` int UNSIGNED DEFAULT NULL,
  `id_typerec` int UNSIGNED DEFAULT NULL,
  `id_user` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id_Rec`),
  KEY `reclamations_id_admin_foreign` (`id_admin`),
  KEY `reclamations_id_typeprd_foreign` (`id_typeprd`),
  KEY `reclamations_id_typerec_foreign` (`id_typerec`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reclamations`
--

INSERT INTO `reclamations` (`id_Rec`, `date_rec`, `contenu_rec`, `statu_rec`, `created_at`, `updated_at`, `id_admin`, `id_typeprd`, `id_typerec`, `id_user`) VALUES
(13, '2023-06-01', NULL, 'en cours de traitemens', '2023-06-01 12:12:37', '2023-06-06 08:51:57', NULL, NULL, 1, 7),
(14, '2023-06-06', 'dbadob', NULL, '2023-06-06 10:03:57', '2023-06-06 10:03:57', NULL, NULL, 2, 7);

-- --------------------------------------------------------

--
-- Structure de la table `recus`
--

DROP TABLE IF EXISTS `recus`;
CREATE TABLE IF NOT EXISTS `recus` (
  `id_recu` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `date_recu` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_dmnd` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id_recu`),
  KEY `recus_id_dmnd_foreign` (`id_dmnd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `typeprds`
--

DROP TABLE IF EXISTS `typeprds`;
CREATE TABLE IF NOT EXISTS `typeprds` (
  `id_typeprd` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nomtypeprd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_admin` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id_typeprd`),
  KEY `typeprds_id_admin_foreign` (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `typeprds`
--

INSERT INTO `typeprds` (`id_typeprd`, `nomtypeprd`, `created_at`, `updated_at`, `id_admin`) VALUES
(1, 'Energie Gaz', NULL, NULL, NULL),
(30, 'Energi Electricité', '2023-05-31 11:24:15', '2023-05-31 11:24:15', 12),
(31, 'Mixte', '2023-05-31 11:24:22', '2023-05-31 11:24:22', 12);

-- --------------------------------------------------------

--
-- Structure de la table `typerecs`
--

DROP TABLE IF EXISTS `typerecs`;
CREATE TABLE IF NOT EXISTS `typerecs` (
  `id_typerec` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom_typerec` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_admin` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id_typerec`),
  KEY `typerecs_id_admin_foreign` (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `typerecs`
--

INSERT INTO `typerecs` (`id_typerec`, `nom_typerec`, `created_at`, `updated_at`, `id_admin`) VALUES
(1, 'Compteur Detectuerux', NULL, NULL, NULL),
(2, 'Retard dans la mise en service', NULL, NULL, NULL),
(11, 'Mauvaise qualité d\'alimentation', '2023-06-06 08:52:17', '2023-06-06 08:52:17', 12);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_admin` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_id_admin_foreign` (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `nom`, `prenom`, `adress`, `telephone`, `email`, `email_verified_at`, `password`, `remember_token`, `id_admin`, `created_at`, `updated_at`) VALUES
(7, 'Mosbah', 'Oussama', 'Rokniya, Guelma', '0672647744', 'mosbahoussama@gmail.com', NULL, '$2y$10$.dNFzYj1zLlqxduprTLR6.mR4Nas.4oxAbUTyPNgohdFWpqATejt6', NULL, NULL, '2023-05-31 11:15:14', '2023-05-31 11:15:14'),
(8, 'Chena', 'Taha El Amine', 'zimou, guelma', '0688990099', 'tahaelamine@gmail.com', NULL, '$2y$10$Bj/PM/ZtXBSR9aR50LE45.nBkTht1jiztNkRc68n2ty.2S1S3DCxW', NULL, NULL, '2023-05-31 11:16:01', '2023-05-31 11:16:01'),
(9, 'Lacheheub', 'Sami Ismail', 'constantine', '0777889988', 'lacheheubsamy@gmail.com', NULL, '$2y$10$YLiHn/mLqBpy54RIJ8DocORNZnYr7yBOCRizvzDcHdGlklLVw0UO.', NULL, NULL, '2023-05-31 11:16:48', '2023-05-31 11:16:48'),
(11, 'TEBAIBIA', 'Islam', 'rue zemouri hamidou, guelaatt bousbaa, Guelma', '0660699796', 'tebaibiaislam0@gmail.com', NULL, '$2y$10$IexSQ24Is8pFGi5bpDLhUuMIXgy3nSsAyjcGZ1D0TxF6L2lLcrsK6', NULL, NULL, '2023-06-02 17:11:54', '2023-06-02 17:14:23');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `demandes`
--
ALTER TABLE `demandes`
  ADD CONSTRAINT `demandes_id_admin_foreign` FOREIGN KEY (`id_admin`) REFERENCES `admins` (`id_admin`) ON DELETE CASCADE;

--
-- Contraintes pour la table `reclamations`
--
ALTER TABLE `reclamations`
  ADD CONSTRAINT `reclamations_id_admin_foreign` FOREIGN KEY (`id_admin`) REFERENCES `admins` (`id_admin`) ON DELETE CASCADE,
  ADD CONSTRAINT `reclamations_id_typeprd_foreign` FOREIGN KEY (`id_typeprd`) REFERENCES `typeprds` (`id_typeprd`) ON DELETE CASCADE,
  ADD CONSTRAINT `reclamations_id_typerec_foreign` FOREIGN KEY (`id_typerec`) REFERENCES `typerecs` (`id_typerec`) ON DELETE CASCADE;

--
-- Contraintes pour la table `recus`
--
ALTER TABLE `recus`
  ADD CONSTRAINT `recus_id_dmnd_foreign` FOREIGN KEY (`id_dmnd`) REFERENCES `demandes` (`id_dmnd`) ON DELETE CASCADE;

--
-- Contraintes pour la table `typeprds`
--
ALTER TABLE `typeprds`
  ADD CONSTRAINT `typeprds_id_admin_foreign` FOREIGN KEY (`id_admin`) REFERENCES `admins` (`id_admin`) ON DELETE CASCADE;

--
-- Contraintes pour la table `typerecs`
--
ALTER TABLE `typerecs`
  ADD CONSTRAINT `typerecs_id_admin_foreign` FOREIGN KEY (`id_admin`) REFERENCES `admins` (`id_admin`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_admin_foreign` FOREIGN KEY (`id_admin`) REFERENCES `admins` (`id_admin`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
