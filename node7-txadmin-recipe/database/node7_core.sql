-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2026 at 08:07 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `node7_core`
--

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

CREATE TABLE `bans` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `license` varchar(50) DEFAULT NULL,
  `discord` varchar(50) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `expire` int(11) DEFAULT NULL,
  `bannedby` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hud_settings`
--

CREATE TABLE `hud_settings` (
  `citizenid` varchar(64) NOT NULL,
  `settings` longtext NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hud_settings`
--

INSERT INTO `hud_settings` (`citizenid`, `settings`, `updated_at`) VALUES
('UQZEXN8N9V', '{\"opacity\":1,\"hudY\":15.27777777777777,\"globalScale\":0.69,\"version\":7,\"hudX\":-2.86458333333333,\"gridSize\":5,\"elements\":{\"stamina\":{\"x\":42.9,\"visible\":true,\"scale\":0.9,\"y\":94.6},\"cleanliness\":{\"x\":59.7,\"visible\":true,\"scale\":0.9,\"y\":94.6},\"voice\":{\"x\":30.3,\"visible\":true,\"scale\":0.9,\"y\":94.6},\"temp\":{\"x\":34.5,\"visible\":true,\"scale\":0.9,\"y\":94.6},\"mail\":{\"x\":68.1,\"visible\":true,\"scale\":0.9,\"y\":94.6},\"outlaw\":{\"x\":72.3,\"visible\":true,\"scale\":0.9,\"y\":94.6},\"horse-health\":{\"x\":47.1,\"visible\":true,\"scale\":0.88,\"y\":88.2},\"hunger\":{\"x\":51.3,\"visible\":true,\"scale\":0.9,\"y\":94.6},\"horse-clean\":{\"x\":55.5,\"visible\":true,\"scale\":0.88,\"y\":88.2},\"stress\":{\"x\":63.9,\"visible\":true,\"scale\":0.9,\"y\":94.6},\"horse-stamina\":{\"x\":51.3,\"visible\":true,\"scale\":0.88,\"y\":88.2},\"thirst\":{\"x\":55.5,\"visible\":true,\"scale\":0.9,\"y\":94.6},\"armor\":{\"x\":47.1,\"visible\":true,\"scale\":0.9,\"y\":94.6},\"health\":{\"x\":38.7,\"visible\":true,\"scale\":0.9,\"y\":94.6}}}', '2026-07-26 15:46:24');

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `identifier` varchar(100) NOT NULL,
  `items` longtext NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`identifier`, `items`, `updated_at`) VALUES
('fart SSE317', '[]', '2026-07-27 17:43:55'),
('medic_valmedic', '[]', '2026-07-25 06:12:09');

-- --------------------------------------------------------

--
-- Table structure for table `node7_admin_actions`
--

CREATE TABLE `node7_admin_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(64) NOT NULL,
  `admin_name` varchar(100) DEFAULT NULL,
  `admin_license` varchar(100) DEFAULT NULL,
  `target_name` varchar(100) DEFAULT NULL,
  `target_license` varchar(100) DEFAULT NULL,
  `reason` varchar(500) DEFAULT NULL,
  `metadata` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `node7_admin_reports`
--

CREATE TABLE `node7_admin_reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `reporter_source` int(11) DEFAULT NULL,
  `reporter_name` varchar(100) DEFAULT NULL,
  `reporter_license` varchar(100) DEFAULT NULL,
  `message` varchar(500) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'open',
  `claimed_by` varchar(100) DEFAULT NULL,
  `claimed_by_license` varchar(100) DEFAULT NULL,
  `closed_by` varchar(100) DEFAULT NULL,
  `closed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `node7_admin_warnings`
--

CREATE TABLE `node7_admin_warnings` (
  `id` int(10) UNSIGNED NOT NULL,
  `player_name` varchar(100) DEFAULT NULL,
  `player_license` varchar(100) NOT NULL,
  `reason` varchar(500) NOT NULL,
  `warned_by` varchar(100) DEFAULT NULL,
  `warned_by_license` varchar(100) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `node7_bank_accounts`
--

CREATE TABLE `node7_bank_accounts` (
  `account_name` varchar(64) NOT NULL,
  `balance` decimal(14,2) NOT NULL DEFAULT 0.00,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `account_number` varchar(32) NOT NULL DEFAULT '',
  `owner_citizenid` varchar(50) NOT NULL DEFAULT '',
  `frozen` tinyint(1) NOT NULL DEFAULT 0,
  `label` varchar(128) NOT NULL DEFAULT '',
  `account_type` varchar(32) NOT NULL DEFAULT 'society',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `node7_bank_accounts`
--

INSERT INTO `node7_bank_accounts` (`account_name`, `balance`, `updated_at`, `account_number`, `owner_citizenid`, `frozen`, `label`, `account_type`, `created_at`) VALUES
('blklaw', 0.00, '2026-07-26 12:14:21', 'N7S-9936-6675', '', 0, 'Blackwater Law Enforcement', 'society', '2026-07-26 12:14:21'),
('farmer', 0.00, '2026-07-27 22:03:18', 'N7S-3666-7459', '', 0, 'Farmer', 'society', '2026-07-27 22:03:18'),
('fisherman', 0.00, '2026-07-27 22:03:18', 'N7S-1158-0620', '', 0, 'Fisherman', 'society', '2026-07-27 22:03:18'),
('gang_anderson', 0.00, '2026-07-26 12:14:21', 'N7S-7395-4630', '', 0, 'Anderson Boys', 'gang', '2026-07-26 12:14:21'),
('gang_dellobo', 0.00, '2026-07-26 12:14:21', 'N7S-5330-9862', '', 0, 'Del Lobo Gang', 'gang', '2026-07-26 12:14:21'),
('gang_foreman', 0.00, '2026-07-26 12:14:21', 'N7S-4400-3554', '', 0, 'Foreman Brothers', 'gang', '2026-07-26 12:14:21'),
('gang_laramie', 0.00, '2026-07-26 12:14:21', 'N7S-3806-5375', '', 0, 'Laramie Gang', 'gang', '2026-07-26 12:14:21'),
('gang_lemoyne', 0.00, '2026-07-26 12:14:21', 'N7S-7755-2021', '', 0, 'Lemoyne Raiders', 'gang', '2026-07-26 12:14:21'),
('gang_murfree', 0.00, '2026-07-26 12:14:21', 'N7S-0209-9661', '', 0, 'Murfree Brood', 'gang', '2026-07-26 12:14:21'),
('gang_night', 0.00, '2026-07-26 12:14:21', 'N7S-3144-1785', '', 0, 'Night Folk', 'gang', '2026-07-26 12:14:21'),
('gang_odriscoll', 0.00, '2026-07-26 12:14:21', 'N7S-6145-8415', '', 0, 'O Driscoll Boys', 'gang', '2026-07-26 12:14:21'),
('gang_skinner', 0.00, '2026-07-26 12:14:21', 'N7S-5865-2426', '', 0, 'Skinner Brothers', 'gang', '2026-07-26 12:14:21'),
('gang_watson', 0.00, '2026-07-26 12:14:21', 'N7S-6139-7660', '', 0, 'Watson Boys', 'gang', '2026-07-26 12:14:21'),
('hunter', 0.00, '2026-07-27 22:03:18', 'N7S-9445-5572', '', 0, 'Hunter', 'society', '2026-07-27 22:03:18'),
('lumberjack', 0.00, '2026-07-27 22:03:18', 'N7S-0607-1752', '', 0, 'Lumberjack', 'society', '2026-07-27 22:03:18'),
('medic', 0.00, '2026-07-26 12:14:21', 'N7S-8127-3325', '', 0, 'Medic', 'society', '2026-07-26 12:14:21'),
('miner', 0.00, '2026-07-27 22:03:18', 'N7S-0013-1532', '', 0, 'Miner', 'society', '2026-07-27 22:03:18'),
('postal', 0.00, '2026-07-27 22:03:18', 'N7S-6168-6239', '', 0, 'Postal Courier', 'society', '2026-07-27 22:03:18'),
('railroad', 0.00, '2026-07-29 01:36:04', 'N7S-1582-4625', '', 0, 'NODE7 Railroad', 'society', '2026-07-29 01:36:04'),
('ranchhand', 0.00, '2026-07-27 22:03:18', 'N7S-1905-0874', '', 0, 'Ranch Hand', 'society', '2026-07-27 22:03:18'),
('rholaw', 0.00, '2026-07-26 12:14:21', 'N7S-2383-5233', '', 0, 'Rhodes Law Enforcement', 'society', '2026-07-26 12:14:21'),
('stablehand', 0.00, '2026-07-27 22:03:18', 'N7S-2336-8334', '', 0, 'Stable Hand', 'society', '2026-07-27 22:03:18'),
('stdenlaw', 0.00, '2026-07-26 12:14:21', 'N7S-1897-4657', '', 0, 'Saint Denis Law Enforcement', 'society', '2026-07-26 12:14:21'),
('strlaw', 0.00, '2026-07-26 12:14:21', 'N7S-6221-8269', '', 0, 'Strawberry Law Enforcement', 'society', '2026-07-26 12:14:21'),
('townworker', 0.00, '2026-07-27 22:03:18', 'N7S-7535-6519', '', 0, 'Town Worker', 'society', '2026-07-27 22:03:18'),
('vallaw', 0.00, '2026-07-26 12:14:21', 'N7S-7277-9516', '', 0, 'Valentine Law Enforcement', 'society', '2026-07-26 12:14:21'),
('wagoner', 0.00, '2026-07-27 22:03:18', 'N7S-4609-1793', '', 0, 'Freight Wagoner', 'society', '2026-07-27 22:03:18');

-- --------------------------------------------------------

--
-- Table structure for table `node7_bank_account_members`
--

CREATE TABLE `node7_bank_account_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_name` varchar(64) NOT NULL,
  `citizenid` varchar(50) NOT NULL,
  `member_name` varchar(128) NOT NULL DEFAULT '',
  `role` varchar(24) NOT NULL DEFAULT 'member',
  `can_deposit` tinyint(1) NOT NULL DEFAULT 1,
  `can_withdraw` tinyint(1) NOT NULL DEFAULT 0,
  `can_transfer` tinyint(1) NOT NULL DEFAULT 0,
  `can_manage` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` varchar(50) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `node7_bank_account_transactions`
--

CREATE TABLE `node7_bank_account_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_name` varchar(64) NOT NULL,
  `transaction_type` varchar(32) NOT NULL,
  `amount` decimal(18,2) NOT NULL DEFAULT 0.00,
  `balance_after` decimal(18,2) NOT NULL DEFAULT 0.00,
  `description` varchar(255) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `actor_citizenid` varchar(50) NOT NULL DEFAULT '',
  `actor_name` varchar(128) NOT NULL DEFAULT '',
  `counterparty` varchar(128) NOT NULL DEFAULT '',
  `reference` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `node7_bank_transactions`
--

CREATE TABLE `node7_bank_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `citizenid` varchar(50) NOT NULL,
  `account_number` varchar(100) NOT NULL,
  `bank_key` varchar(32) NOT NULL,
  `transaction_type` varchar(32) NOT NULL,
  `amount` decimal(14,2) NOT NULL DEFAULT 0.00,
  `balance_after` decimal(14,2) NOT NULL DEFAULT 0.00,
  `description` varchar(120) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `counterparty` varchar(128) NOT NULL DEFAULT '',
  `reference` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `node7_bank_transactions`
--

INSERT INTO `node7_bank_transactions` (`id`, `citizenid`, `account_number`, `bank_key`, `transaction_type`, `amount`, `balance_after`, `description`, `created_at`, `counterparty`, `reference`) VALUES
(1, 'UQZEXN8N9V', 'US02Node7Core2805868866', '', 'deposit', 200.00, 5425.00, 'Cash deposit', '2026-07-26 11:52:31', '', 'N7-20260726045231-2587'),
(2, 'UQZEXN8N9V', 'US02Node7Core2805868866', '', 'withdrawal', -0.01, 5499.99, 'Cash withdrawal', '2026-07-26 11:57:16', '', 'N7-20260726045716-3942'),
(3, 'UQZEXN8N9V', 'US02Node7Core2805868866', '', 'withdrawal', -300.00, 5199.99, 'Cash withdrawal', '2026-07-26 11:57:23', '', 'N7-20260726045723-3587'),
(4, 'UQZEXN8N9V', 'US02Node7Core2805868866', '', 'deposit', 50.00, 5324.99, 'Cash deposit', '2026-07-26 12:18:24', '', 'N7-20260726051824-0888'),
(5, 'UQZEXN8N9V', 'US02Node7Core2805868866', '', 'deposit', 350.01, 6275.00, 'Cash deposit', '2026-07-26 13:57:56', '', 'N7-20260726065756-0569'),
(6, 'UQZEXN8N9V', 'US02Node7Core2805868866', '', 'withdrawal', -50.00, 6300.00, 'Cash withdrawal', '2026-07-26 13:59:11', '', 'N7-20260726065911-4818'),
(7, 'UQZEXN8N9V', 'US02Node7Core2805868866', '', 'withdrawal', -100.00, 6200.00, 'Cash withdrawal', '2026-07-26 13:59:25', '', 'N7-20260726065925-5212'),
(8, 'UQZEXN8N9V', 'US02Node7Core2805868866', '', 'deposit', 150.00, 6350.00, 'Cash deposit', '2026-07-26 14:02:34', '', 'N7-20260726070234-8831'),
(9, 'UQZEXN8N9V', 'US02Node7Core2805868866', '', 'withdrawal', -500.00, 6075.00, 'Cash withdrawal', '2026-07-26 14:37:04', '', 'N7-20260726073704-2687'),
(10, 'UQZEXN8N9V', 'US02Node7Core2805868866', '', 'withdrawal', -500.00, 2100.00, 'Cash withdrawal', '2026-07-27 12:03:52', '', 'N7-20260727050352-1134'),
(11, 'UQZEXN8N9V', 'US02Node7Core2805868866', '', 'deposit', 500.00, 2600.00, 'Cash deposit', '2026-07-27 12:03:58', '', 'N7-20260727050358-7775');

-- --------------------------------------------------------

--
-- Table structure for table `node7_conductor_runs`
--

CREATE TABLE `node7_conductor_runs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `citizenid` varchar(64) NOT NULL,
  `route_id` varchar(64) NOT NULL,
  `stops_completed` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `safety_score` int(10) UNSIGNED NOT NULL DEFAULT 100,
  `payout` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `started_at` datetime DEFAULT NULL,
  `completed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `node7_conductor_stats`
--

CREATE TABLE `node7_conductor_stats` (
  `citizenid` varchar(64) NOT NULL,
  `routes_completed` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `stops_completed` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total_earnings` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `safety_score` int(10) UNSIGNED NOT NULL DEFAULT 100,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `node7_mail`
--

CREATE TABLE `node7_mail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_citizenid` varchar(50) NOT NULL,
  `sender_name` varchar(120) NOT NULL,
  `sender_box` int(10) UNSIGNED DEFAULT NULL,
  `recipient_citizenid` varchar(50) DEFAULT NULL,
  `recipient_name` varchar(120) DEFAULT NULL,
  `recipient_box` int(10) UNSIGNED DEFAULT NULL,
  `recipient_query` varchar(120) DEFAULT NULL,
  `subject` varchar(80) NOT NULL DEFAULT '',
  `body` mediumtext NOT NULL,
  `attachments` longtext NOT NULL,
  `status` varchar(16) NOT NULL DEFAULT 'sent',
  `recipient_read_at` timestamp NULL DEFAULT NULL,
  `attachments_claimed_at` timestamp NULL DEFAULT NULL,
  `recipient_archived` tinyint(1) NOT NULL DEFAULT 0,
  `sender_deleted_at` timestamp NULL DEFAULT NULL,
  `recipient_deleted_at` timestamp NULL DEFAULT NULL,
  `sent_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `node7_mail_boxes`
--

CREATE TABLE `node7_mail_boxes` (
  `box_number` int(10) UNSIGNED NOT NULL,
  `citizenid` varchar(50) NOT NULL,
  `character_name` varchar(120) NOT NULL,
  `home_office` varchar(64) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `node7_mail_boxes`
--

INSERT INTO `node7_mail_boxes` (`box_number`, `citizenid`, `character_name`, `home_office`, `created_at`, `updated_at`) VALUES
(1000, 'UQZEXN8N9V', 'Bjorn Edwardson', 'valentine', '2026-07-26 16:23:21', '2026-07-26 16:23:21');

-- --------------------------------------------------------

--
-- Table structure for table `node7_mail_contacts`
--

CREATE TABLE `node7_mail_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `owner_citizenid` varchar(50) NOT NULL,
  `contact_citizenid` varchar(50) NOT NULL,
  `contact_box` int(10) UNSIGNED DEFAULT NULL,
  `alias` varchar(60) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `node7_role_progress`
--

CREATE TABLE `node7_role_progress` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `citizenid` varchar(64) NOT NULL,
  `role` varchar(64) NOT NULL,
  `xp` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `completed_jobs` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `earnings` decimal(14,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `reputation` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `claimed_rewards` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `node7_trains`
--

CREATE TABLE `node7_trains` (
  `id` int(10) UNSIGNED NOT NULL,
  `citizenid` varchar(64) NOT NULL,
  `model` varchar(20) NOT NULL,
  `category` varchar(24) NOT NULL,
  `name` varchar(64) NOT NULL,
  `fuel` int(11) NOT NULL DEFAULT 100,
  `condition_value` int(11) NOT NULL DEFAULT 100,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `license` varchar(80) NOT NULL,
  `citizenid` varchar(50) NOT NULL,
  `slot` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'Unknown Unknown',
  `charinfo` longtext NOT NULL,
  `money` longtext NOT NULL,
  `job` longtext NOT NULL,
  `gang` longtext NOT NULL,
  `position` longtext NOT NULL,
  `metadata` longtext NOT NULL,
  `appearance` longtext NOT NULL,
  `inventory` longtext NOT NULL,
  `weapons` longtext NOT NULL,
  `horses` longtext NOT NULL,
  `wagons` longtext NOT NULL,
  `health` smallint(5) UNSIGNED NOT NULL DEFAULT 200,
  `stamina` smallint(5) UNSIGNED NOT NULL DEFAULT 100,
  `last_played` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `weight` int(11) NOT NULL DEFAULT 150000,
  `slots` int(11) DEFAULT 25,
  `cid` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `license`, `citizenid`, `slot`, `name`, `charinfo`, `money`, `job`, `gang`, `position`, `metadata`, `appearance`, `inventory`, `weapons`, `horses`, `wagons`, `health`, `stamina`, `last_played`, `created_at`, `updated_at`, `weight`, `slots`, `cid`) VALUES
(1, 'license:3231a41fec11bf0d4955e2eae9652e7421d1bf2b', 'UQZEXN8N9V', 1, 'GhostShift', '{\"birthdate\":\"1998-06-04\",\"backstory\":\"test\",\"nationality\":\"Canadian\",\"firstname\":\"Bjorn\",\"lastname\":\"Edwardson\",\"account\":\"US02Node7Core2805868866\",\"gender\":1}', '{\"bloodmoney\":0.0,\"gold\":500.0,\"bank\":6739.0,\"cash\":26889.0}', '{\"grade\":{\"isboss\":false,\"payment\":5,\"name\":\"Trainee\",\"level\":0},\"onduty\":true,\"isboss\":false,\"type\":\"railroad\",\"label\":\"NODE7 Railroad\",\"name\":\"railroad\",\"payment\":5}', '{\"grade\":{\"isboss\":false,\"name\":\"Unaffiliated\",\"level\":0},\"isboss\":false,\"name\":\"none\",\"label\":\"No Gang\"}', '{\"interior\":0,\"isInterior\":false,\"z\":-13.26447963714599,\"x\":-3746.248779296875,\"y\":-2595.644287109375,\"room\":0,\"w\":161.96351623535157}', '{\"injail\":0,\"bloodtype\":\"O+\",\"commandbinds\":[],\"cleanliness\":100,\"walletid\":\"NODE7-49382413\",\"thirst\":94.56,\"fingerprint\":\"hg386h42pdP2684\",\"alcohol\":0.0,\"isdead\":false,\"licences\":{\"fishing\":false,\"hunting\":false,\"weapon\":false},\"armor\":0,\"callsign\":\"NO CALLSIGN\",\"status\":[],\"stress\":0,\"jailtime\":0,\"inlaststand\":false,\"optin\":true,\"equippedweapons\":{\"44OLd3HQ376wnrT\":{\"serie\":\"44OLd3HQ376wnrT\",\"slot\":2,\"name\":\"weapon_rifle_boltaction\"}},\"inside\":[],\"equippedknives\":[],\"hunger\":94.56,\"rep\":[],\"blood\":100,\"health\":100,\"ishandcuffed\":false,\"jailitems\":[],\"criminalrecord\":{\"hasRecord\":false}}', '[]', '[{\"name\":\"weapon_melee_knife\",\"info\":{\"purchasedFrom\":\"node7-gun-catalogue\",\"quality\":100,\"purchasedAt\":1785170830},\"slot\":1,\"amount\":1,\"type\":\"equipment\"},{\"name\":\"weapon_rifle_boltaction\",\"info\":{\"serie\":\"44OLd3HQ376wnrT\",\"quality\":100,\"purchasedFrom\":\"node7-gun-catalogue\",\"purchasedAt\":1785197876},\"slot\":2,\"amount\":1,\"type\":\"weapon\"},{\"name\":\"weapon_bow_improved\",\"info\":{\"serie\":\"25jHK8lP514OBOE\",\"quality\":99.44999999999985},\"slot\":3,\"amount\":1,\"type\":\"weapon\"},{\"name\":\"weapon_shotgun_pump\",\"info\":{\"serie\":\"56bFc6af038deMU\",\"quality\":99.7499999999999,\"purchasedFrom\":\"node7-gun-catalogue\",\"purchasedAt\":1785094080},\"slot\":4,\"amount\":1,\"type\":\"weapon\"},{\"name\":\"weapon_lasso_reinforced\",\"info\":[],\"slot\":5,\"amount\":1,\"type\":\"equipment\"},{\"name\":\"kentucky_whiskey\",\"info\":[],\"slot\":6,\"amount\":6,\"type\":\"item\"},{\"name\":\"weapon_rifle_springfield\",\"info\":{\"serie\":\"87Dib8wn310vzAD\",\"quality\":99.81999999999994,\"purchasedFrom\":\"node7-gun-catalogue\",\"purchasedAt\":1785090779},\"slot\":7,\"amount\":1,\"type\":\"weapon\"},{\"name\":\"ammo_arrow\",\"info\":[],\"slot\":8,\"amount\":177,\"type\":\"item\"},{\"name\":\"weapon_revolver_doubleaction\",\"info\":{\"serie\":\"22Mfs9wI424fRDT\",\"quality\":100,\"purchasedFrom\":\"node7-gun-catalogue\",\"purchasedAt\":1785093917},\"slot\":9,\"amount\":1,\"type\":\"weapon\"},{\"name\":\"weapon_revolver_doubleaction\",\"info\":{\"serie\":\"31Nfx4as456cANU\",\"quality\":99.71999999999996,\"purchasedFrom\":\"node7-gun-catalogue\",\"purchasedAt\":1785093875},\"slot\":10,\"amount\":1,\"type\":\"weapon\"},{\"name\":\"weapon_bow\",\"info\":{\"serie\":\"75dPR9bN179RByl\",\"quality\":99.65999999999984},\"slot\":12,\"amount\":1,\"type\":\"weapon\"},{\"name\":\"cash\",\"info\":[],\"slot\":13,\"amount\":26889,\"type\":\"item\"},{\"name\":\"weapon_shotgun_semiauto\",\"info\":{\"serie\":\"96NrC0QH223yrPV\",\"quality\":100,\"purchasedFrom\":\"node7-gun-catalogue\",\"purchasedAt\":1785198029},\"slot\":14,\"amount\":1,\"type\":\"weapon\"},{\"name\":\"ammo_pistol\",\"info\":[],\"slot\":15,\"amount\":12,\"type\":\"item\"},{\"name\":\"weapon_rifle_varmint\",\"info\":{\"serie\":\"88Jym4yz048uPPL\",\"quality\":99.81999999999997,\"purchasedFrom\":\"node7-gun-catalogue\",\"purchasedAt\":1785175206},\"slot\":16,\"amount\":1,\"type\":\"weapon\"},{\"name\":\"weapon_shotgun_sawedoff\",\"info\":{\"serie\":\"67iqQ4mQ649TUgJ\",\"quality\":99.20999999999973,\"purchasedFrom\":\"node7-gun-catalogue\",\"purchasedAt\":1785094186},\"slot\":17,\"amount\":1,\"type\":\"weapon\"},{\"name\":\"ammo_repeater\",\"info\":[],\"slot\":18,\"amount\":24,\"type\":\"item\"},{\"name\":\"weapon_revolver_lemat\",\"info\":{\"serie\":\"75nlU7jI867ekVE\",\"quality\":99.66999999999986,\"purchasedFrom\":\"node7-gun-catalogue\",\"purchasedAt\":1785093926},\"slot\":19,\"amount\":1,\"type\":\"weapon\"},{\"name\":\"weapon_repeater_winchester\",\"info\":{\"serie\":\"91mIi3pp857dOXm\",\"quality\":100,\"purchasedFrom\":\"node7-gun-catalogue\",\"purchasedAt\":1785198073},\"slot\":20,\"amount\":1,\"type\":\"weapon\"},{\"name\":\"weapon_sniperrifle_rollingblock\",\"info\":{\"serie\":\"14mnd1Xi328XIBt\",\"quality\":99.99,\"purchasedFrom\":\"node7-gun-catalogue\",\"purchasedAt\":1785198093},\"slot\":21,\"amount\":1,\"type\":\"weapon\"},{\"name\":\"weapon_shotgun_doublebarrel\",\"info\":{\"serie\":\"38kQl0fl421DDYa\",\"quality\":99.97,\"purchasedFrom\":\"node7-gun-catalogue\",\"purchasedAt\":1785198163},\"slot\":22,\"amount\":1,\"type\":\"weapon\"}]', '[]', '[]', '[]', 200, 100, '2026-07-23 19:09:21', '2026-07-23 10:56:05', '2026-07-29 06:06:29', 150000, 25, 1);

-- --------------------------------------------------------

--
-- Table structure for table `player_ammo`
--

CREATE TABLE `player_ammo` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(255) NOT NULL,
  `ammo_22` int(11) NOT NULL DEFAULT 0,
  `ammo_22_tranquilizer` int(11) NOT NULL DEFAULT 0,
  `ammo_arrow` int(11) NOT NULL DEFAULT 0,
  `ammo_arrow_dynamite` int(11) NOT NULL DEFAULT 0,
  `ammo_arrow_fire` int(11) NOT NULL DEFAULT 0,
  `ammo_arrow_improved` int(11) NOT NULL DEFAULT 0,
  `ammo_arrow_poison` int(11) NOT NULL DEFAULT 0,
  `ammo_arrow_small_game` int(11) NOT NULL DEFAULT 0,
  `ammo_bolas` int(11) NOT NULL DEFAULT 0,
  `ammo_bolas_hawkmoth` int(11) NOT NULL DEFAULT 0,
  `ammo_bolas_intertwined` int(11) NOT NULL DEFAULT 0,
  `ammo_bolas_ironspiked` int(11) NOT NULL DEFAULT 0,
  `ammo_dynamite` int(11) NOT NULL DEFAULT 0,
  `ammo_hatchet` int(11) NOT NULL DEFAULT 0,
  `ammo_hatchet_cleaver` int(11) NOT NULL DEFAULT 0,
  `ammo_hatchet_hunter` int(11) NOT NULL DEFAULT 0,
  `ammo_molotov` int(11) NOT NULL DEFAULT 0,
  `ammo_pistol` int(11) NOT NULL DEFAULT 0,
  `ammo_pistol_express` int(11) NOT NULL DEFAULT 0,
  `ammo_pistol_express_explosive` int(11) NOT NULL DEFAULT 0,
  `ammo_pistol_high_velocity` int(11) NOT NULL DEFAULT 0,
  `ammo_pistol_split_point` int(11) NOT NULL DEFAULT 0,
  `ammo_poisonbottle` int(11) NOT NULL DEFAULT 0,
  `ammo_repeater` int(11) NOT NULL DEFAULT 0,
  `ammo_repeater_express` int(11) NOT NULL DEFAULT 0,
  `ammo_repeater_express_explosive` int(11) NOT NULL DEFAULT 0,
  `ammo_repeater_high_velocity` int(11) NOT NULL DEFAULT 0,
  `ammo_repeater_split_point` int(11) NOT NULL DEFAULT 0,
  `ammo_revolver` int(11) NOT NULL DEFAULT 0,
  `ammo_revolver_express` int(11) NOT NULL DEFAULT 0,
  `ammo_revolver_express_explosive` int(11) NOT NULL DEFAULT 0,
  `ammo_revolver_high_velocity` int(11) NOT NULL DEFAULT 0,
  `ammo_revolver_split_point` int(11) NOT NULL DEFAULT 0,
  `ammo_rifle` int(11) NOT NULL DEFAULT 0,
  `ammo_rifle_elephant` int(11) NOT NULL DEFAULT 0,
  `ammo_rifle_express` int(11) NOT NULL DEFAULT 0,
  `ammo_rifle_express_explosive` int(11) NOT NULL DEFAULT 0,
  `ammo_rifle_high_velocity` int(11) NOT NULL DEFAULT 0,
  `ammo_rifle_split_point` int(11) NOT NULL DEFAULT 0,
  `ammo_shotgun` int(11) NOT NULL DEFAULT 0,
  `ammo_shotgun_buckshot_incendiary` int(11) NOT NULL DEFAULT 0,
  `ammo_shotgun_slug` int(11) NOT NULL DEFAULT 0,
  `ammo_shotgun_slug_explosive` int(11) NOT NULL DEFAULT 0,
  `ammo_throwing_knives` int(11) NOT NULL DEFAULT 0,
  `ammo_throwing_knives_drain` int(11) NOT NULL DEFAULT 0,
  `ammo_throwing_knives_poison` int(11) NOT NULL DEFAULT 0,
  `ammo_tomahawk` int(11) NOT NULL DEFAULT 0,
  `ammo_tomahawk_ancient` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `player_ammo`
--

INSERT INTO `player_ammo` (`id`, `citizenid`, `ammo_22`, `ammo_22_tranquilizer`, `ammo_arrow`, `ammo_arrow_dynamite`, `ammo_arrow_fire`, `ammo_arrow_improved`, `ammo_arrow_poison`, `ammo_arrow_small_game`, `ammo_bolas`, `ammo_bolas_hawkmoth`, `ammo_bolas_intertwined`, `ammo_bolas_ironspiked`, `ammo_dynamite`, `ammo_hatchet`, `ammo_hatchet_cleaver`, `ammo_hatchet_hunter`, `ammo_molotov`, `ammo_pistol`, `ammo_pistol_express`, `ammo_pistol_express_explosive`, `ammo_pistol_high_velocity`, `ammo_pistol_split_point`, `ammo_poisonbottle`, `ammo_repeater`, `ammo_repeater_express`, `ammo_repeater_express_explosive`, `ammo_repeater_high_velocity`, `ammo_repeater_split_point`, `ammo_revolver`, `ammo_revolver_express`, `ammo_revolver_express_explosive`, `ammo_revolver_high_velocity`, `ammo_revolver_split_point`, `ammo_rifle`, `ammo_rifle_elephant`, `ammo_rifle_express`, `ammo_rifle_express_explosive`, `ammo_rifle_high_velocity`, `ammo_rifle_split_point`, `ammo_shotgun`, `ammo_shotgun_buckshot_incendiary`, `ammo_shotgun_slug`, `ammo_shotgun_slug_explosive`, `ammo_throwing_knives`, `ammo_throwing_knives_drain`, `ammo_throwing_knives_poison`, `ammo_tomahawk`, `ammo_tomahawk_ancient`) VALUES
(1, 'UQZEXN8N9V', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `player_clothing`
--

CREATE TABLE `player_clothing` (
  `citizenid` varchar(64) NOT NULL,
  `clothing` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `player_clothing`
--

INSERT INTO `player_clothing` (`citizenid`, `clothing`, `created_at`, `updated_at`) VALUES
('UQZEXN8N9V', '{\"boots\":{\"texture\":1,\"remove\":false,\"model\":10},\"shirts_full\":{\"texture\":1,\"remove\":false,\"model\":13},\"vests\":{\"texture\":1,\"remove\":false,\"model\":6},\"hats\":{\"texture\":1,\"remove\":false,\"model\":10},\"pants\":{\"texture\":1,\"remove\":false,\"model\":21}}', '2026-07-24 04:28:50', '2026-07-27 16:54:25');

-- --------------------------------------------------------

--
-- Table structure for table `player_clothing_outfits`
--

CREATE TABLE `player_clothing_outfits` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `clothing` longtext NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `player_horses`
--

CREATE TABLE `player_horses` (
  `id` int(11) NOT NULL,
  `stable` varchar(50) NOT NULL,
  `citizenid` varchar(50) NOT NULL,
  `horseid` varchar(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `horse` varchar(50) DEFAULT NULL,
  `dirt` int(11) NOT NULL DEFAULT 0,
  `horsexp` int(11) NOT NULL DEFAULT 0,
  `components` longtext NOT NULL DEFAULT '{}',
  `gender` varchar(11) NOT NULL,
  `wild` varchar(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `born` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `player_horses`
--

INSERT INTO `player_horses` (`id`, `stable`, `citizenid`, `horseid`, `name`, `horse`, `dirt`, `horsexp`, `components`, `gender`, `wild`, `active`, `born`) VALUES
(2, 'valentine', 'UQZEXN8N9V', 'SSE317', 'fart', 'a_c_horse_americanpaint_tobiano', 30, 0, '{\"Horns\":5,\"Saddlebags\":23,\"Saddles\":62,\"Bedrolls\":20,\"Tails\":49,\"Blankets\":35}', 'male', NULL, 1, 1785083570);

-- --------------------------------------------------------

--
-- Table structure for table `player_skins`
--

CREATE TABLE `player_skins` (
  `citizenid` varchar(64) NOT NULL,
  `model` varchar(64) NOT NULL DEFAULT 'mp_male',
  `skin` longtext NOT NULL,
  `clothes` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `player_skins`
--

INSERT INTO `player_skins` (`citizenid`, `model`, `skin`, `clothes`, `created_at`, `updated_at`) VALUES
('UQZEXN8N9V', 'mp_male', '{\"body_waist\":11,\"chest_size\":6,\"beard\":{\"remove\":false,\"texture\":2,\"model\":6},\"hair\":{\"remove\":false,\"texture\":2,\"model\":1},\"head\":1,\"height\":100,\"body_size\":1,\"citizenid\":\"UQZEXN8N9V\",\"skin_tone\":1,\"sex\":1,\"model\":\"mp_male\"}', '{\"boots\":{\"texture\":1,\"remove\":false,\"model\":10},\"shirts_full\":{\"texture\":1,\"remove\":false,\"model\":13},\"vests\":{\"texture\":1,\"remove\":false,\"model\":6},\"hats\":{\"texture\":1,\"remove\":false,\"model\":10},\"pants\":{\"texture\":1,\"remove\":false,\"model\":21}}', '2026-07-25 02:05:21', '2026-07-27 16:54:25');

-- --------------------------------------------------------

--
-- Table structure for table `player_weapons`
--

CREATE TABLE `player_weapons` (
  `id` int(11) NOT NULL,
  `serial` varchar(64) NOT NULL,
  `citizenid` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `player_weapons`
--

INSERT INTO `player_weapons` (`id`, `serial`, `citizenid`, `created_at`) VALUES
(1, '32APC9Bj892DaDU', 'UQZEXN8N9V', '2026-07-25 03:15:30'),
(2, '75dPR9bN179RByl', 'UQZEXN8N9V', '2026-07-25 12:50:41'),
(3, '25jHK8lP514OBOE', 'UQZEXN8N9V', '2026-07-25 12:52:16'),
(4, '87Dib8wn310vzAD', 'UQZEXN8N9V', '2026-07-26 18:33:07'),
(5, '31Nfx4as456cANU', 'UQZEXN8N9V', '2026-07-26 19:24:54'),
(6, '75nlU7jI867ekVE', 'UQZEXN8N9V', '2026-07-26 19:25:41'),
(7, '56bFc6af038deMU', 'UQZEXN8N9V', '2026-07-26 19:28:15'),
(8, '67iqQ4mQ649TUgJ', 'UQZEXN8N9V', '2026-07-26 19:29:57'),
(9, '88Jym4yz048uPPL', 'UQZEXN8N9V', '2026-07-27 18:00:12'),
(10, '44OLd3HQ376wnrT', 'UQZEXN8N9V', '2026-07-28 00:18:03'),
(11, '96NrC0QH223yrPV', 'UQZEXN8N9V', '2026-07-28 00:20:51'),
(12, '91mIi3pp857dOXm', 'UQZEXN8N9V', '2026-07-28 00:21:18'),
(13, '14mnd1Xi328XIBt', 'UQZEXN8N9V', '2026-07-28 00:21:41'),
(14, '38kQl0fl421DDYa', 'UQZEXN8N9V', '2026-07-28 00:22:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `license` (`license`);

--
-- Indexes for table `hud_settings`
--
ALTER TABLE `hud_settings`
  ADD PRIMARY KEY (`citizenid`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`identifier`),
  ADD KEY `inventories_updated_at_index` (`updated_at`);

--
-- Indexes for table `node7_admin_actions`
--
ALTER TABLE `node7_admin_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_node7_admin_actions_admin` (`admin_license`),
  ADD KEY `idx_node7_admin_actions_target` (`target_license`),
  ADD KEY `idx_node7_admin_actions_created` (`created_at`);

--
-- Indexes for table `node7_admin_reports`
--
ALTER TABLE `node7_admin_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_node7_admin_reports_status` (`status`),
  ADD KEY `idx_node7_admin_reports_created` (`created_at`);

--
-- Indexes for table `node7_admin_warnings`
--
ALTER TABLE `node7_admin_warnings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_node7_admin_warnings_player` (`player_license`),
  ADD KEY `idx_node7_admin_warnings_active` (`active`);

--
-- Indexes for table `node7_bank_accounts`
--
ALTER TABLE `node7_bank_accounts`
  ADD PRIMARY KEY (`account_name`),
  ADD UNIQUE KEY `idx_node7_shared_number` (`account_number`),
  ADD UNIQUE KEY `idx_node7_shared_name` (`account_name`),
  ADD KEY `idx_node7_shared_owner` (`owner_citizenid`);

--
-- Indexes for table `node7_bank_account_members`
--
ALTER TABLE `node7_bank_account_members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_node7_bank_member` (`account_name`,`citizenid`),
  ADD KEY `idx_node7_bank_member_citizen` (`citizenid`);

--
-- Indexes for table `node7_bank_account_transactions`
--
ALTER TABLE `node7_bank_account_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_node7_shared_tx_account` (`account_name`),
  ADD KEY `idx_node7_shared_tx_reference` (`reference`);

--
-- Indexes for table `node7_bank_transactions`
--
ALTER TABLE `node7_bank_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_node7_bank_history` (`citizenid`,`bank_key`,`id`),
  ADD KEY `idx_node7_bank_tx_citizenid` (`citizenid`),
  ADD KEY `idx_node7_bank_tx_account` (`account_number`),
  ADD KEY `idx_node7_bank_tx_reference` (`reference`);

--
-- Indexes for table `node7_conductor_runs`
--
ALTER TABLE `node7_conductor_runs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_node7_conductor_runs_citizenid` (`citizenid`);

--
-- Indexes for table `node7_conductor_stats`
--
ALTER TABLE `node7_conductor_stats`
  ADD PRIMARY KEY (`citizenid`);

--
-- Indexes for table `node7_mail`
--
ALTER TABLE `node7_mail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `node7_mail_recipient_status_index` (`recipient_citizenid`,`status`,`recipient_deleted_at`),
  ADD KEY `node7_mail_sender_status_index` (`sender_citizenid`,`status`,`sender_deleted_at`),
  ADD KEY `node7_mail_unread_index` (`recipient_citizenid`,`recipient_read_at`),
  ADD KEY `node7_mail_created_index` (`created_at`);

--
-- Indexes for table `node7_mail_boxes`
--
ALTER TABLE `node7_mail_boxes`
  ADD PRIMARY KEY (`box_number`),
  ADD UNIQUE KEY `node7_mail_boxes_citizen_unique` (`citizenid`),
  ADD KEY `node7_mail_boxes_name_index` (`character_name`);

--
-- Indexes for table `node7_mail_contacts`
--
ALTER TABLE `node7_mail_contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `node7_mail_contacts_owner_contact_unique` (`owner_citizenid`,`contact_citizenid`),
  ADD KEY `node7_mail_contacts_owner_index` (`owner_citizenid`),
  ADD KEY `node7_mail_contacts_owner_box_index` (`owner_citizenid`,`contact_box`);

--
-- Indexes for table `node7_role_progress`
--
ALTER TABLE `node7_role_progress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_node7_role_progress` (`citizenid`,`role`),
  ADD KEY `idx_node7_role_citizenid` (`citizenid`),
  ADD KEY `idx_node7_role_role` (`role`);

--
-- Indexes for table `node7_trains`
--
ALTER TABLE `node7_trains`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_node7_trains_citizenid` (`citizenid`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `players_citizenid_unique` (`citizenid`),
  ADD UNIQUE KEY `players_license_slot_unique` (`license`,`slot`),
  ADD KEY `players_license_index` (`license`),
  ADD KEY `players_last_played_index` (`last_played`);

--
-- Indexes for table `player_ammo`
--
ALTER TABLE `player_ammo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `citizenid` (`citizenid`);

--
-- Indexes for table `player_clothing`
--
ALTER TABLE `player_clothing`
  ADD PRIMARY KEY (`citizenid`);

--
-- Indexes for table `player_clothing_outfits`
--
ALTER TABLE `player_clothing_outfits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_citizenid_name` (`citizenid`,`name`),
  ADD KEY `idx_citizenid` (`citizenid`);

--
-- Indexes for table `player_horses`
--
ALTER TABLE `player_horses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_player_horses_horseid` (`horseid`),
  ADD KEY `idx_player_horses_owner` (`citizenid`),
  ADD KEY `idx_player_horses_active` (`citizenid`,`active`),
  ADD KEY `idx_player_horses_stable` (`citizenid`,`stable`);

--
-- Indexes for table `player_skins`
--
ALTER TABLE `player_skins`
  ADD PRIMARY KEY (`citizenid`);

--
-- Indexes for table `player_weapons`
--
ALTER TABLE `player_weapons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `player_weapons_serial_unique` (`serial`),
  ADD KEY `player_weapons_citizenid_index` (`citizenid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bans`
--
ALTER TABLE `bans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `node7_admin_actions`
--
ALTER TABLE `node7_admin_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `node7_admin_reports`
--
ALTER TABLE `node7_admin_reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `node7_admin_warnings`
--
ALTER TABLE `node7_admin_warnings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `node7_bank_account_members`
--
ALTER TABLE `node7_bank_account_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `node7_bank_account_transactions`
--
ALTER TABLE `node7_bank_account_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `node7_bank_transactions`
--
ALTER TABLE `node7_bank_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `node7_conductor_runs`
--
ALTER TABLE `node7_conductor_runs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `node7_mail`
--
ALTER TABLE `node7_mail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `node7_mail_boxes`
--
ALTER TABLE `node7_mail_boxes`
  MODIFY `box_number` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1081;

--
-- AUTO_INCREMENT for table `node7_mail_contacts`
--
ALTER TABLE `node7_mail_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `node7_role_progress`
--
ALTER TABLE `node7_role_progress`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `node7_trains`
--
ALTER TABLE `node7_trains`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1846;

--
-- AUTO_INCREMENT for table `player_ammo`
--
ALTER TABLE `player_ammo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `player_clothing_outfits`
--
ALTER TABLE `player_clothing_outfits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `player_horses`
--
ALTER TABLE `player_horses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `player_weapons`
--
ALTER TABLE `player_weapons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
