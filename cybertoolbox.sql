-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2022 at 02:39 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cybertoolbox`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `thumbnail` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_28_134312_create_settings_table', 1),
(6, '2022_02_28_135038_create_general_settings', 1),
(7, '2022_02_28_145344_add_links_field_to_general_settings', 1),
(8, '2022_03_01_144334_create_pages_table', 1),
(9, '2022_03_12_111731_add_contact_page_field_to_general_settings', 1),
(10, '2022_05_31_163921_add_footer_attribution', 1),
(11, '2022_06_11_150338_add_captcha_settings', 1),
(12, '2022_06_11_183002_add_ad_settings', 1),
(13, '2022_06_11_201330_add_pop_ad_location', 1),
(14, '2022_06_25_174339_add_website_status_checker_settings', 1),
(15, '2022_06_25_183024_add_contact_section_content_to_general_settings', 1),
(16, '2022_06_27_043922_user_agent_finder_settings', 1),
(17, '2022_06_28_134415_add_whats_my_ip_tool_settings', 1),
(18, '2022_06_28_142327_add_word_count_tool_settings', 1),
(19, '2022_06_30_133911_add_text_to_binary_tool_settings', 1),
(20, '2022_06_30_143127_add_binary_to_text_tool_settings', 1),
(21, '2022_06_30_144752_add_lorem_ipsum_generator_tool_settings', 1),
(22, '2022_06_30_152425_add_s_e_o_tags_generator_tool_settings', 1),
(23, '2022_07_07_135259_add_h_t_m_l_minifier_tool_settings', 1),
(24, '2022_07_08_161911_add_h_t_m_l_formatter_tool_settings', 1),
(25, '2022_07_14_152747_add_c_s_s_minifier_tool_settings', 1),
(26, '2022_07_14_153555_add_j_s_minifier_tool_settings', 1),
(27, '2022_07_14_155701_add_c_s_s_formatter_tool_settings', 1),
(28, '2022_07_14_155712_add_j_s_formatter_tool_settings', 1),
(29, '2022_07_14_171254_add_m_d5_generator_tool_settings', 1),
(30, '2022_07_14_173906_add_s_h_a_generator_tool_settings', 1),
(31, '2022_07_18_122347_add_image_to_base64_tool_settings', 1),
(32, '2022_07_20_155908_add_j_s_obfuscator_tool_settings', 1),
(33, '2022_07_27_191033_add_u_r_l_encoder_tool_settings', 1),
(34, '2022_07_27_191042_add_u_r_l_decoder_tool_settings', 1),
(35, '2022_07_27_191057_add_u_r_l_unshortener_tool_settings', 1),
(36, '2022_07_27_195324_add_s_s_l_checker_tool_settings', 1),
(37, '2022_07_28_111203_add_timestamp_converter_tool_settings', 1),
(38, '2022_07_29_073549_add_q_r_generator_tool_settings', 1),
(39, '2022_08_01_135643_add_password_generator_tool_settings', 1),
(40, '2022_08_05_175125_create_language_settings', 1),
(41, '2022_08_06_131141_add_hash_generator_tool_settings', 1),
(42, '2022_08_08_131408_add_text_to_base64_tool_settings', 1),
(43, '2022_08_08_133315_add_q_r_code_reader_tool_settings', 1),
(44, '2022_08_08_144240_add_domain_generator_tool_settings', 1),
(45, '2022_08_08_151401_add_domain_whois_tool_settings', 1),
(46, '2022_08_10_133750_add_i_p_to_hostname_tool_settings', 1),
(47, '2022_08_10_135918_add_hostname_to_i_p_tool_settings', 1),
(48, '2022_08_12_145513_add_r_g_b_to_hex_tool_settings', 1),
(49, '2022_08_12_145524_add_hex_to_r_g_b_tool_settings', 1),
(50, '2022_08_12_153146_add_h_t_t_p_headers_parser_tool_settings', 1),
(51, '2022_08_12_170500_add_h_t_m_l_tags_stripper_tool_settings', 1),
(52, '2022_08_16_162515_add_ping_tool_settings', 1),
(53, '2022_08_17_012447_add_markdown_to_h_t_m_l_tool_settings', 1),
(54, '2022_08_17_012457_add_h_t_m_l_to_markdown_tool_settings', 1),
(55, '2022_08_17_015210_add_duplicate_lines_remover_tool_settings', 1),
(56, '2022_08_17_020418_add_text_separator_tool_settings', 1),
(57, '2022_08_17_021128_add_h_t_m_l_entity_encode_tool_settings', 1),
(58, '2022_08_17_021136_add_h_t_m_l_entity_decode_tool_settings', 1),
(59, '2022_08_17_024507_add_c_s_v_to_j_s_o_n_tool_settings', 1),
(60, '2022_08_17_030431_add_j_s_o_n_to_c_s_v_tool_settings', 1),
(61, '2022_08_19_141111_create_tool_view_table', 1),
(62, '2022_08_19_150741_create_s_m_t_p_settings', 1),
(63, '2022_08_22_092656_create_middle_banner_settings', 1),
(64, '2022_08_29_132524_add_s_e_o_keywords', 1),
(65, '2022_08_29_140954_tool_s_e_o_fields', 1),
(66, '2022_08_30_094929_add_fields_to_pages_table', 1),
(67, '2022_09_01_191432_add_dark_theme_setting', 1),
(68, '2022_09_13_104629_add_u_u_i_dv4_generator_tool_settings', 1),
(69, '2022_09_13_114319_add_bcrypt_generator_tool_settings', 1),
(70, '2022_09_13_120141_add_h_t_t_p_status_code_checker_tool_settings', 1),
(71, '2022_09_13_121058_add_line_break_remover_tool_settings', 1),
(72, '2022_09_13_122112_add_email_extractor_tool_settings', 1),
(73, '2022_09_13_122647_add_u_r_l_extractor_tool_settings', 1),
(74, '2022_09_13_123902_add_you_tube_thumbnail_downloader_tool_settings', 1),
(75, '2022_09_14_103545_add_i_p_information_tool_settings', 1),
(76, '2022_09_14_111356_add_s_q_l_beautifier_tool_settings', 1),
(77, '2022_09_14_122304_add_password_strength_test_tool_settings', 1),
(78, '2022_10_05_134552_create_blog_posts_table', 1),
(79, '2022_10_05_141841_add_blog_section_option_to_general_settings', 1),
(80, '2022_10_05_150325_add_thumbnail_to_blog_posts_table', 1),
(81, '2022_10_08_154958_add_robotstxt_generator_tool_settings', 1),
(82, '2022_10_08_160437_add_h_t_a_c_c_e_s_s_generator_tool_settings', 1),
(83, '2022_10_08_160451_add_privacy_policy_generator_tool_settings', 1),
(84, '2022_10_08_160507_add_terms_of_service_generator_tool_settings', 1),
(85, '2022_10_08_160518_add_email_validator_tool_settings', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `location` varchar(191) DEFAULT 'both',
  `content` text DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seoDescription` text DEFAULT NULL,
  `seoKeywords` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `locked` tinyint(1) NOT NULL,
  `payload` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `group`, `name`, `locked`, `payload`, `created_at`, `updated_at`) VALUES
(1, 'general', 'websiteTitle', 0, '\"CyberBox\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(2, 'general', 'websiteDescription', 0, '\"Web Tools  for Developers\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(3, 'general', 'logo', 0, '\"logo.png\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(4, 'general', 'footerLogo', 0, '\"footer-logo.png\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(5, 'general', 'favicon', 0, '\"favicon.png\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(6, 'general', 'headerTags', 0, '\"\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(7, 'general', 'styles', 0, '[]', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(8, 'general', 'scripts', 0, '[]', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(9, 'general', 'customStyles', 0, '\"\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(10, 'general', 'gaId', 0, '\"\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(11, 'general', 'links', 0, '[]', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(12, 'general', 'contactPage', 0, 'true', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(13, 'general', 'footerAttribution', 0, '\"&copy; Rahal Imen. All Rights Reserved.\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(14, 'general', 'recaptchaEnabled', 0, 'false', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(15, 'general', 'recaptchaSiteKey', 0, '\"\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(16, 'general', 'recaptchaSecretKey', 0, '\"\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(17, 'ads', 'popAdStatus', 0, 'false', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(18, 'ads', 'popAdCode', 0, '\"\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(19, 'ads', 'topBannerStatus', 0, 'false', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(20, 'ads', 'topBannerCode', 0, '\"\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(21, 'ads', 'bottomBannerStatus', 0, 'false', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(22, 'ads', 'bottomBannerCode', 0, '\"\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(23, 'ads', 'popAdLocation', 0, '\"header\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(24, 'tool-website-status-checker', 'enabled', 0, 'true', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(25, 'tool-website-status-checker', 'title', 0, '\"Website Status Checker\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(26, 'tool-website-status-checker', 'summary', 0, '\"Check whether a website is online or not.\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(27, 'tool-website-status-checker', 'description', 0, '\"Website Status Checker is a useful tool that helps you check whether any website is up and running or not. You can use it to check the up-status of your own website or any other website.\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(28, 'tool-slugs', 'WebsiteStatusChecker', 0, '\"website-status-checker\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(29, 'general', 'contactSectionContent', 0, '\"<h3>Contact<\\/h3><h2>Missing something?<\\/h2><p>Feel free to request missing tools or give some feedback using our contact form.<\\/p>\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(30, 'tool-user-agent-finder', 'enabled', 0, 'true', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(31, 'tool-user-agent-finder', 'title', 0, '\"User Agent Finder\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(32, 'tool-user-agent-finder', 'summary', 0, '\"Find out your user agent.\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(33, 'tool-user-agent-finder', 'description', 0, '\"User Agent Finder is a useful tool that helps you easily find the user agent for your browser.\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(34, 'tool-slugs', 'UserAgentFinder', 0, '\"user-agent-finder\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(35, 'tool-whats-my-ip', 'enabled', 0, 'true', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(36, 'tool-whats-my-ip', 'title', 0, '\"Whats My IP\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(37, 'tool-whats-my-ip', 'summary', 0, '\"Find out your IP Address.\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(38, 'tool-whats-my-ip', 'description', 0, '\"Whats My IP is a useful tool that helps you easily find your IP address.\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(39, 'tool-slugs', 'WhatsMyIp', 0, '\"whats-my-ip\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(40, 'tool-word-count', 'enabled', 0, 'true', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(41, 'tool-word-count', 'title', 0, '\"Word Count\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(42, 'tool-word-count', 'summary', 0, '\"Count the Words & Letters in Text.\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(43, 'tool-word-count', 'description', 0, '\"Word Count is a useful tool that helps you easily find the number of individual letters and words in a piece of text.\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(44, 'tool-slugs', 'WordCount', 0, '\"word-count\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(45, 'tool-text-to-binary', 'enabled', 0, 'true', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(46, 'tool-text-to-binary', 'title', 0, '\"Text to Binary\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(47, 'tool-text-to-binary', 'summary', 0, '\"Convert \\/ Encode text to Binary.\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(48, 'tool-text-to-binary', 'description', 0, '\"Text to Binary is a useful tool that helps you easily encode text to binary. You can easily convert your text to binary for any purpose.\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(49, 'tool-slugs', 'TextToBinary', 0, '\"text-to-binary\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(50, 'tool-binary-to-text', 'enabled', 0, 'true', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(51, 'tool-binary-to-text', 'title', 0, '\"Binary to Text\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(52, 'tool-binary-to-text', 'summary', 0, '\"Convert \\/ Decode Binary to Text.\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(53, 'tool-binary-to-text', 'description', 0, '\"Binary To Text is a useful tool that helps you decode binary to text. You can easily convert your binary to text for any purpose.\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(54, 'tool-slugs', 'BinaryToText', 0, '\"binary-to-text\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(55, 'tool-lorem-ipsum-generator', 'enabled', 0, 'true', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(56, 'tool-lorem-ipsum-generator', 'title', 0, '\"Lorem Ipsum Generator\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(57, 'tool-lorem-ipsum-generator', 'summary', 0, '\"Generate placeholder lorem ipsum words & paragraphs.\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(58, 'tool-lorem-ipsum-generator', 'description', 0, '\"Lorem Ipsum Generator is a tool that lets you generate placeholder text for your projects. You can choose how many words, sentences or paragraphs to be generated.\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(59, 'tool-slugs', 'LoremIpsumGenerator', 0, '\"lorem-ipsum-generator\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(60, 'tool-seo-tags-generator', 'enabled', 0, 'true', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(61, 'tool-seo-tags-generator', 'title', 0, '\"SEO Tags Generator\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(62, 'tool-seo-tags-generator', 'summary', 0, '\"Generate SEO & OpenGraph tags for your website.\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(63, 'tool-seo-tags-generator', 'description', 0, '\"SEO & OpenGraph Tags Generator is a tool that lets you generate proper SEO & OpenGraph tags for your websites which make sure your website is indexed properly by search engines & social networks.\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(64, 'tool-slugs', 'SEOTagsGenerator', 0, '\"seo-tags-generator\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(65, 'tool-html-minifier', 'enabled', 0, 'true', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(66, 'tool-html-minifier', 'title', 0, '\"HTML Minifier\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(67, 'tool-html-minifier', 'summary', 0, '\"Minify your HTML Code for size reduction.\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(68, 'tool-html-minifier', 'description', 0, '\"HTML Minifier is a useful tool that allows you to minify your HTML Code. Minified HTML Code has a smaller size and therefore it loads faster for the users. Minifying your code is recommended for a fast experience.\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(69, 'tool-slugs', 'HTMLMinifier', 0, '\"html-minifier\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(70, 'tool-html-formatter', 'enabled', 0, 'true', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(71, 'tool-html-formatter', 'title', 0, '\"HTML Formatter\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(72, 'tool-html-formatter', 'summary', 0, '\"Format HTML code that is unformatted.\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(73, 'tool-html-formatter', 'description', 0, '\"HTML Formatter is a useful tool that allows you to format HTML Code that is minified or unformatted. It will properly indent the code and add line breaks so that the code makes perfect sense.\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(74, 'tool-slugs', 'HTMLFormatter', 0, '\"html-formatter\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(75, 'tool-css-minifier', 'enabled', 0, 'true', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(76, 'tool-css-minifier', 'title', 0, '\"CSS Minifier\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(77, 'tool-css-minifier', 'summary', 0, '\"Minify your CSS code for size reduction.\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(78, 'tool-css-minifier', 'description', 0, '\"CSS Minifier is a useful tool that allows you to minify your CSS Code. Minified CSS Code has a smaller size and therefore it loads faster for the users. Minifying your code is recommended for a fast experience.\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(79, 'tool-slugs', 'CSSMinifier', 0, '\"css-minifier\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(80, 'tool-js-minifier', 'enabled', 0, 'true', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(81, 'tool-js-minifier', 'title', 0, '\"JS Minifier\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(82, 'tool-js-minifier', 'summary', 0, '\"Minify your JS code for size reduction.\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(83, 'tool-js-minifier', 'description', 0, '\"JS Minifier is a useful tool that allows you to minify your JS Code. Minified JS Code has a smaller size and therefore it loads faster for the users. Minifying your code is recommended for a fast experience.\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(84, 'tool-slugs', 'JSMinifier', 0, '\"js-minifier\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(85, 'tool-css-formatter', 'enabled', 0, 'true', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(86, 'tool-css-formatter', 'title', 0, '\"CSS Formatter\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(87, 'tool-css-formatter', 'summary', 0, '\"Format CSS code that is unformatted.\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(88, 'tool-css-formatter', 'description', 0, '\"CSS Formatter is a useful tool that allows you to format CSS Code that is minified or unformatted. It will properly indent the code and add line breaks so that the code makes perfect sense.\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(89, 'tool-slugs', 'CSSFormatter', 0, '\"css-formatter\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(90, 'tool-js-formatter', 'enabled', 0, 'true', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(91, 'tool-js-formatter', 'title', 0, '\"JS Formatter\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(92, 'tool-js-formatter', 'summary', 0, '\"Format JS code that is unformatted.\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(93, 'tool-js-formatter', 'description', 0, '\"JS Formatter is a useful tool that allows you to format JS Code that is minified or unformatted. It will properly indent the code and add line breaks so that the code makes perfect sense.\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(94, 'tool-slugs', 'JSFormatter', 0, '\"js-formatter\"', '2022-12-05 05:10:17', '2022-12-05 05:10:17'),
(95, 'tool-md5-generator', 'enabled', 0, 'true', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(96, 'tool-md5-generator', 'title', 0, '\"MD5 Generator\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(97, 'tool-md5-generator', 'summary', 0, '\"Generate MD5 hashes from text.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(98, 'tool-md5-generator', 'description', 0, '\"MD5 Generator is a useful tool that allows you to generate \\/ calculate MD5 hashes based on any string \\/ text. Each hash generated will be unique but the same input will produce the same output.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(99, 'tool-slugs', 'MD5Generator', 0, '\"md5-generator\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(100, 'tool-sha-generator', 'enabled', 0, 'true', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(101, 'tool-sha-generator', 'title', 0, '\"SHA Generator\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(102, 'tool-sha-generator', 'summary', 0, '\"Generate SHA hashes from text.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(103, 'tool-sha-generator', 'description', 0, '\"SHA Generator is a useful tool that allows you to generate \\/ calculate SHA256 or SHA512 (SHA1, SHA2) hashes based on any string \\/ text. Each hash generated will be unique but the same input will produce the same output.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(104, 'tool-slugs', 'SHAGenerator', 0, '\"sha-generator\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(105, 'tool-image-to-base64', 'enabled', 0, 'true', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(106, 'tool-image-to-base64', 'title', 0, '\"Image to Base64\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(107, 'tool-image-to-base64', 'summary', 0, '\"Convert image to Base64 String.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(108, 'tool-image-to-base64', 'description', 0, '\"Image to Base64 is a useful tool that allows you to convert images to base64 strings. Just upload the image and press the button to generate Base64 string.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(109, 'tool-slugs', 'ImageToBase64', 0, '\"image-to-base64\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(110, 'tool-js-obfuscator', 'enabled', 0, 'true', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(111, 'tool-js-obfuscator', 'title', 0, '\"JS Obfuscator\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(112, 'tool-js-obfuscator', 'summary', 0, '\"Protect your JavaScript code by obfuscating it.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(113, 'tool-js-obfuscator', 'description', 0, '\"JS Obfuscator is a useful tool that allows you to obfuscate your javascript code. Obfuscated code is very difficult to understand by an outsider and can make your code difficult to crack. Type in the code you want to obfuscate and press the button.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(114, 'tool-slugs', 'JSObfuscator', 0, '\"js-obfuscator\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(115, 'tool-url-encoder', 'enabled', 0, 'true', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(116, 'tool-url-encoder', 'title', 0, '\"URL Encoder\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(117, 'tool-url-encoder', 'summary', 0, '\"Encode your URL to make them transmission-safe.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(118, 'tool-url-encoder', 'description', 0, '\"URL Encoder is a useful tool that allows you to encode your URLs \\/ Links to make them safe for transmission over the internet. URLs can be transferred over the internet only in the ASCII character-set. URL Encoder makes sure your URL is safe for transmission.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(119, 'tool-slugs', 'URLEncoder', 0, '\"url-encoder\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(120, 'tool-url-decoder', 'enabled', 0, 'true', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(121, 'tool-url-decoder', 'title', 0, '\"URL Decoder\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(122, 'tool-url-decoder', 'summary', 0, '\"Decode any URL that has been encoded.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(123, 'tool-url-decoder', 'description', 0, '\"URL Decoder is a useful tool that allows you to decode your URLs \\/ Links. URL Encoding is a technique that makes links safe to be transmitted over the internet by using the ASCII character-set. URL Decoder allows you to revert encoded URLs to their original form.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(124, 'tool-slugs', 'URLDecoder', 0, '\"url-decoder\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(125, 'tool-url-unshortener', 'enabled', 0, 'true', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(126, 'tool-url-unshortener', 'title', 0, '\"URL Unshortener\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(127, 'tool-url-unshortener', 'summary', 0, '\"Unshorten a URL and find the original.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(128, 'tool-url-unshortener', 'description', 0, '\"URL Unshortener is a useful tool that allows you to unshorten a URL \\/ Link that has been shortened by URL shortening services. This method will not work for services that have a delay before the original location.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(129, 'tool-slugs', 'URLUnshortener', 0, '\"url-unshortener\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(130, 'tool-ssl-checker', 'enabled', 0, 'true', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(131, 'tool-ssl-checker', 'title', 0, '\"SSL Checker\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(132, 'tool-ssl-checker', 'summary', 0, '\"Verify SSL Certificate of any website.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(133, 'tool-ssl-checker', 'description', 0, '\"SSL Checker is a useful tool that allows you to check if the SSL Certificate of any website is valid.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(134, 'tool-slugs', 'SSLChecker', 0, '\"ssl-checker\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(135, 'tool-timestamp-converter', 'enabled', 0, 'true', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(136, 'tool-timestamp-converter', 'title', 0, '\"Timestamp Converter\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(137, 'tool-timestamp-converter', 'summary', 0, '\"Convert to & from UNIX Timestamps.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(138, 'tool-timestamp-converter', 'description', 0, '\"Timestamp Converter is a useful tool that allows you to convert timestamps to dates and vice versa. The UNIX timestamp is the amount of seconds passed since Jan 1st, 1970 UTC.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(139, 'tool-slugs', 'TimestampConverter', 0, '\"timestamp-converter\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(140, 'tool-qr-generator', 'enabled', 0, 'true', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(141, 'tool-qr-generator', 'title', 0, '\"QR Code Generator\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(142, 'tool-qr-generator', 'summary', 0, '\"Create infinite QR Codes instantly.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(143, 'tool-qr-generator', 'description', 0, '\"QR Code Generator allows you to generate QR Codes based on any data. There is no limit to how many QR codes you can create. QR Codes are a very popular method of storing data in images that are easy to scan by phones \\/ code scanners.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(144, 'tool-slugs', 'QRGenerator', 0, '\"qr-generator\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(145, 'tool-password-generator', 'enabled', 0, 'true', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(146, 'tool-password-generator', 'title', 0, '\"Password Generator\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(147, 'tool-password-generator', 'summary', 0, '\"Generate secure random passwords.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(148, 'tool-password-generator', 'description', 0, '\"Password Generator allows you to generate passwords based on many different settings. The passwords generated by Password Generator are randomized. These passwords are also secure as they are not sent over the internet and only exist on the client\'s machine.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(149, 'tool-slugs', 'PasswordGenerator', 0, '\"password-generator\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(150, 'language', 'translateTools', 0, 'true', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(151, 'language', 'defaultLanguage', 0, '\"en\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(152, 'language', 'languages', 0, '[{\"code\":\"en\",\"label\":\"English\",\"flag\":\"GB\",\"direction\":\"ltr\"}]', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(153, 'tool-hash-generator', 'enabled', 0, 'true', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(154, 'tool-hash-generator', 'title', 0, '\"Hash Generator\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(155, 'tool-hash-generator', 'summary', 0, '\"Generate different types of hashes.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(156, 'tool-hash-generator', 'description', 0, '\"Password Generator allows you to generate hashes based on any data. The hashes generated by Hash Generator are calculated based on the algorithm you choose. These hashes are also secure as they are not sent over the internet and only exist on the client\'s machine.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(157, 'tool-slugs', 'HashGenerator', 0, '\"hash-generator\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(158, 'tool-text-to-base64', 'enabled', 0, 'true', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(159, 'tool-text-to-base64', 'title', 0, '\"Text to Base64\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(160, 'tool-text-to-base64', 'summary', 0, '\"Encode Text to Base64.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(161, 'tool-text-to-base64', 'description', 0, '\"Text to Base64 is a useful tool that allows you to convert text & encode them into base64 strings. Just specify the content and press the button to generate Base64 string.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(162, 'tool-slugs', 'TextToBase64', 0, '\"text-to-base64\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(163, 'tool-qr-code-reader', 'enabled', 0, 'true', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(164, 'tool-qr-code-reader', 'title', 0, '\"QR Code Reader\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(165, 'tool-qr-code-reader', 'summary', 0, '\"Read QR Codes from Image.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(166, 'tool-qr-code-reader', 'description', 0, '\"QR Code Reader allows you to read QR code data based on any image. Simply upload or specify the URL of the image to read the code.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(167, 'tool-slugs', 'QRCodeReader', 0, '\"qr-code-reader\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(168, 'tool-domain-generator', 'enabled', 0, 'true', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(169, 'tool-domain-generator', 'affiliateUrl', 0, '\"https:\\/\\/www.namesilo.com\\/domain\\/search-domains?rid=bb0a442er&query={name}&x=21&y=12\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(170, 'tool-domain-generator', 'title', 0, '\"Domain Generator\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(171, 'tool-domain-generator', 'summary', 0, '\"Generate Domain names from keywords.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(172, 'tool-domain-generator', 'description', 0, '\"Domain Generator is a useful tool that allows you to generate .com, .net, .org, .info, .xyz, .biz domain names based on any keyword or multiple words.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(173, 'tool-slugs', 'DomainGenerator', 0, '\"domain-generator\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(174, 'tool-domain-whois', 'enabled', 0, 'true', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(175, 'tool-domain-whois', 'title', 0, '\"Domain WHOIS\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(176, 'tool-domain-whois', 'summary', 0, '\"Get WHOIS Information about a domain name.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(177, 'tool-domain-whois', 'description', 0, '\"Domain WHOIS is a useful tool that allows you to find out the WHOIS information of .com, .net, .org, .info, .xyz, .biz domain names. Just type in the domain name and click the button to view the WHOIS information.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(178, 'tool-slugs', 'DomainWhois', 0, '\"domain-whois\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(179, 'tool-ip-to-hostname', 'enabled', 0, 'true', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(180, 'tool-ip-to-hostname', 'title', 0, '\"IP To Hostname\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(181, 'tool-ip-to-hostname', 'summary', 0, '\"Get Hostname from any IP Address\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(182, 'tool-ip-to-hostname', 'description', 0, '\"IP To Hostname is a useful tool that allows you to find out the hostname from an IP Address. Simply type in your IP Address and Click on the Button to find the hostname.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(183, 'tool-slugs', 'IPToHostname', 0, '\"ip-to-hostname\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(184, 'tool-hostname-to-ip', 'enabled', 0, 'true', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(185, 'tool-hostname-to-ip', 'title', 0, '\"Hostname To IP\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(186, 'tool-hostname-to-ip', 'summary', 0, '\"Get IP Address from a Hostname\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(187, 'tool-hostname-to-ip', 'description', 0, '\"Hostname to IP is a useful tool that allows you to find out the IP Address from a Hostname. Just type in your Hostname and Click on the Button to find the IP Address.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(188, 'tool-slugs', 'HostnameToIP', 0, '\"hostname-to-ip\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(189, 'tool-rgb-to-hex', 'enabled', 0, 'true', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(190, 'tool-rgb-to-hex', 'title', 0, '\"RGB To Hex\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(191, 'tool-rgb-to-hex', 'summary', 0, '\"Convert RGB Colors to Hexcodes.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(192, 'tool-rgb-to-hex', 'description', 0, '\"RGB To Hex is a useful tool that allows you to convert RGB Colors to Hex. Just type in your RGB Color and Click on the Button to convert to hex.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(193, 'tool-slugs', 'RGBToHex', 0, '\"rgb-to-hex\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(194, 'tool-hex-to-rgb', 'enabled', 0, 'true', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(195, 'tool-hex-to-rgb', 'title', 0, '\"Hex To RGB\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(196, 'tool-hex-to-rgb', 'summary', 0, '\"Convert Hex Colors to RGB.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(197, 'tool-hex-to-rgb', 'description', 0, '\"Hex To RGB is a useful tool that allows you to convert Hex Colors to RGB. Just type in your Hex Color and Click on the Button to convert to RGB.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(198, 'tool-slugs', 'HexToRGB', 0, '\"hex-to-rgb\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(199, 'tool-http-headers-parser', 'enabled', 0, 'true', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(200, 'tool-http-headers-parser', 'title', 0, '\"HTTP Headers Parser\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(201, 'tool-http-headers-parser', 'summary', 0, '\"Parse HTTP Headers for any URL.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(202, 'tool-http-headers-parser', 'description', 0, '\"HTTP Headers Parser is a useful tool that allows you to view the HTTP Headers of any URL and Parse them. Type in any URL and click on the parse button to check the headers.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(203, 'tool-slugs', 'HTTPHeadersParser', 0, '\"http-headers-parser\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(204, 'tool-html-tags-stripper', 'enabled', 0, 'true', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(205, 'tool-html-tags-stripper', 'title', 0, '\"HTML Tags Stripper\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(206, 'tool-html-tags-stripper', 'summary', 0, '\"Get Rid of HTML Tags in Code.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(207, 'tool-html-tags-stripper', 'description', 0, '\"HTML Tags Stripper is a useful tool that allows you to get rid of any HTML tags within a document. Paste your document in the text-area and click on the button to strip the HTML tags.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(208, 'tool-slugs', 'HTMLTagsStripper', 0, '\"html-tags-stripper\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(209, 'tool-ping', 'enabled', 0, 'true', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(210, 'tool-ping', 'title', 0, '\"Ping\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(211, 'tool-ping', 'summary', 0, '\"Measure Ping for any Address.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(212, 'tool-ping', 'description', 0, '\"Ping any web server and measure the latency. The latency is the total time elapsed for the Client and the Server to send and receive data from each other. Simply type in your Address and click on the button.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(213, 'tool-slugs', 'Ping', 0, '\"ping\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(214, 'tool-markdown-to-html', 'enabled', 0, 'true', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(215, 'tool-markdown-to-html', 'title', 0, '\"Markdown To HTML\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(216, 'tool-markdown-to-html', 'summary', 0, '\"Convert Markdown format to HTML.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(217, 'tool-markdown-to-html', 'description', 0, '\"Markdown to HTML is a converter that allows you to convert your markdown format text into HTML. Markdown is a simplified format for creating documents. Paste in your Markdown format and click on the button to generate the HTML.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(218, 'tool-slugs', 'MarkdownToHTML', 0, '\"markdown-to-html\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(219, 'tool-html-to-markdown', 'enabled', 0, 'true', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(220, 'tool-html-to-markdown', 'title', 0, '\"HTML To Markdown\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(221, 'tool-html-to-markdown', 'summary', 0, '\"Convert HTML Documents to Markdown.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(222, 'tool-html-to-markdown', 'description', 0, '\"HTML to Markdown is a converter that allows you to convert your HTML documents into Markdown Format. Markdown is a simplified format for creating documents. Paste in your HTML Code and click on the button to generate the Markdown.\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(223, 'tool-slugs', 'HTMLToMarkdown', 0, '\"html-to-markdown\"', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(224, 'tool-duplicate-lines-remover', 'enabled', 0, 'true', '2022-12-05 05:10:18', '2022-12-05 05:10:18'),
(225, 'tool-duplicate-lines-remover', 'title', 0, '\"Duplicate Lines Remover\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(226, 'tool-duplicate-lines-remover', 'summary', 0, '\"Delete duplicate lines from text.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(227, 'tool-duplicate-lines-remover', 'description', 0, '\"Duplicate Lines Remover is a useful tool that allows you to remoev duplicate lines from any piece of text. Make sure that each line is on a new line. Click on the Button to remove the duplicate lines.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(228, 'tool-slugs', 'DuplicateLinesRemover', 0, '\"duplicate-lines-remover\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(229, 'tool-text-separator', 'enabled', 0, 'true', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(230, 'tool-text-separator', 'title', 0, '\"Text Separator\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(231, 'tool-text-separator', 'summary', 0, '\"Separate Text based on Characters.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(232, 'tool-text-separator', 'description', 0, '\"Text Separator is a useful tool that allows you to separate a piece of text based on any character of your choice. You may separate the text by periods, quotes or any other characters. Paste your Text and Click on the Separate Button.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(233, 'tool-slugs', 'TextSeparator', 0, '\"text-separator\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(234, 'tool-html-entity-encode', 'enabled', 0, 'true', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(235, 'tool-html-entity-encode', 'title', 0, '\"HTML Entity Encode\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(236, 'tool-html-entity-encode', 'summary', 0, '\"Encode HTML into HTML Entities.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(237, 'tool-html-entity-encode', 'description', 0, '\"HTML Entity Encoder is a useful tool that allows you to convert HTML Text to HTML entities. HTML Entities are safe to be sent over the internet and stored in a database. You should never send HTML over the internet unless its a trusted source. Paste in your HTML and Click on the Button to convert to HTML Entities.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(238, 'tool-slugs', 'HTMLEntityEncode', 0, '\"html-entity-encode\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(239, 'tool-html-entity-decode', 'enabled', 0, 'true', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(240, 'tool-html-entity-decode', 'title', 0, '\"HTML Entity Decode\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(241, 'tool-html-entity-decode', 'summary', 0, '\"Decode HTML Entities into HTML.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(242, 'tool-html-entity-decode', 'description', 0, '\"HTML Entity Decoder is a useful tool that allows you to convert HTML Entities to HTML. HTML Entities are safe to be sent over the internet and stored in a database. You should never send HTML over the internet unless its a trusted source. Paste in your HTML Entities and Click on the Button to convert to HTML.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(243, 'tool-slugs', 'HTMLEntityDecode', 0, '\"html-entity-decode\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(244, 'tool-csv-to-json', 'enabled', 0, 'true', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(245, 'tool-csv-to-json', 'title', 0, '\"CSV To JSON\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(246, 'tool-csv-to-json', 'summary', 0, '\"Convert CSV to JSON Format\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(247, 'tool-csv-to-json', 'description', 0, '\"CSV To JSON is a converter that lets you convert your CSV Spreadsheets into the JSON Format. CSV is a lightweight format to represent spreadsheets whereas JSON is a text-based format most popular for sending data over the internet. Paste in your CSV and Click on the Button to convert to JSON.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(248, 'tool-slugs', 'CSVToJSON', 0, '\"csv-to-json\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(249, 'tool-json-to-csv', 'enabled', 0, 'true', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(250, 'tool-json-to-csv', 'title', 0, '\"JSON To CSV\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(251, 'tool-json-to-csv', 'summary', 0, '\"Convert JSON to CSV Format\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(252, 'tool-json-to-csv', 'description', 0, '\"JSON To CSV is a converter that lets you convert your JSON into the CSV Format. CSV is a lightweight format to represent spreadsheets whereas JSON is a text-based format most popular for sending data over the internet. Paste in your JSON and Click on the Button to convert to CSV.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(253, 'tool-slugs', 'JSONToCSV', 0, '\"json-to-csv\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(254, 'smtp', 'enabled', 0, 'false', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(255, 'smtp', 'host', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(256, 'smtp', 'port', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(257, 'smtp', 'username', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(258, 'smtp', 'password', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(259, 'smtp', 'encryption', 0, '\"tls\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(260, 'smtp', 'from', 0, '\"info@bitflan.com\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(261, 'smtp', 'name', 0, '\"CyberTools\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(262, 'ads', 'middleBannerStatus', 0, 'false', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(263, 'ads', 'middleBannerCode', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(264, 'general', 'websiteKeywords', 0, '\"web tools, cyber tools, converters, calculators, utilities, tools\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(265, 'general', 'contactDescription', 0, '\"Contact Us to talk about suggestions, updates or business related queries.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(266, 'tool-website-status-checker', 'metaDescription', 0, '\"Website Status Checker is a useful tool that helps you check whether any website is up and running or not. You can use it to check the up-status of your own website or any other website.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(267, 'tool-website-status-checker', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(268, 'tool-user-agent-finder', 'metaDescription', 0, '\"User Agent Finder is a useful tool that helps you easily find the user agent for your browser.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(269, 'tool-user-agent-finder', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(270, 'tool-whats-my-ip', 'metaDescription', 0, '\"Whats My IP is a useful tool that helps you easily find your IP address.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(271, 'tool-whats-my-ip', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(272, 'tool-ping', 'metaDescription', 0, '\"Ping any web server and measure the latency. The latency is the total time elapsed for the Client and the Server to send and receive data from each other. Simply type in your Address and click on the button.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(273, 'tool-ping', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(274, 'tool-url-unshortener', 'metaDescription', 0, '\"URL Unshortener is a useful tool that allows you to unshorten a URL \\/ Link that has been shortened by URL shortening services. This method will not work for services that have a delay before the original location.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(275, 'tool-url-unshortener', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(276, 'tool-url-encoder', 'metaDescription', 0, '\"URL Encoder is a useful tool that allows you to encode your URLs \\/ Links to make them safe for transmission over the internet. URLs can be transferred over the internet only in the ASCII character-set. URL Encoder makes sure your URL is safe for transmission.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(277, 'tool-url-encoder', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(278, 'tool-url-decoder', 'metaDescription', 0, '\"URL Decoder is a useful tool that allows you to decode your URLs \\/ Links. URL Encoding is a technique that makes links safe to be transmitted over the internet by using the ASCII character-set. URL Decoder allows you to revert encoded URLs to their original form.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(279, 'tool-url-decoder', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(280, 'tool-ssl-checker', 'metaDescription', 0, '\"SSL Checker is a useful tool that allows you to check if the SSL Certificate of any website is valid.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(281, 'tool-ssl-checker', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(282, 'tool-qr-generator', 'metaDescription', 0, '\"QR Code Generator allows you to generate QR Codes based on any data. There is no limit to how many QR codes you can create. QR Codes are a very popular method of storing data in images that are easy to scan by phones \\/ code scanners.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(283, 'tool-qr-generator', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(284, 'tool-qr-code-reader', 'metaDescription', 0, '\"QR Code Reader allows you to read QR code data based on any image. Simply upload or specify the URL of the image to read the code.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(285, 'tool-qr-code-reader', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(286, 'tool-http-headers-parser', 'metaDescription', 0, '\"HTTP Headers Parser is a useful tool that allows you to view the HTTP Headers of any URL and Parse them. Type in any URL and click on the parse button to check the headers.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(287, 'tool-http-headers-parser', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(288, 'tool-rgb-to-hex', 'metaDescription', 0, '\"RGB To Hex is a useful tool that allows you to convert RGB Colors to Hex. Just type in your RGB Color and Click on the Button to convert to hex.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(289, 'tool-rgb-to-hex', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(290, 'tool-hex-to-rgb', 'metaDescription', 0, '\"Hex To RGB is a useful tool that allows you to convert Hex Colors to RGB. Just type in your Hex Color and Click on the Button to convert to RGB.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(291, 'tool-hex-to-rgb', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(292, 'tool-timestamp-converter', 'metaDescription', 0, '\"Timestamp Converter is a useful tool that allows you to convert timestamps to dates and vice versa. The UNIX timestamp is the amount of seconds passed since Jan 1st, 1970 UTC.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(293, 'tool-timestamp-converter', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(294, 'tool-text-to-binary', 'metaDescription', 0, '\"Text to Binary is a useful tool that helps you easily encode text to binary. You can easily convert your text to binary for any purpose.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(295, 'tool-text-to-binary', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(296, 'tool-binary-to-text', 'metaDescription', 0, '\"Binary To Text is a useful tool that helps you decode binary to text. You can easily convert your binary to text for any purpose.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(297, 'tool-binary-to-text', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(298, 'tool-text-to-base64', 'metaDescription', 0, '\"Text to Base64 is a useful tool that allows you to convert text & encode them into base64 strings. Just specify the content and press the button to generate Base64 string.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(299, 'tool-text-to-base64', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(300, 'tool-image-to-base64', 'metaDescription', 0, '\"Image to Base64 is a useful tool that allows you to convert images to base64 strings. Just upload the image and press the button to generate Base64 string.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(301, 'tool-image-to-base64', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(302, 'tool-markdown-to-html', 'metaDescription', 0, '\"Markdown to HTML is a converter that allows you to convert your markdown format text into HTML. Markdown is a simplified format for creating documents. Paste in your Markdown format and click on the button to generate the HTML.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(303, 'tool-markdown-to-html', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(304, 'tool-html-to-markdown', 'metaDescription', 0, '\"HTML to Markdown is a converter that allows you to convert your HTML documents into Markdown Format. Markdown is a simplified format for creating documents. Paste in your HTML Code and click on the button to generate the Markdown.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(305, 'tool-html-to-markdown', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(306, 'tool-csv-to-json', 'metaDescription', 0, '\"CSV To JSON is a converter that lets you convert your CSV Spreadsheets into the JSON Format. CSV is a lightweight format to represent spreadsheets whereas JSON is a text-based format most popular for sending data over the internet. Paste in your CSV and Click on the Button to convert to JSON.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(307, 'tool-csv-to-json', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(308, 'tool-json-to-csv', 'metaDescription', 0, '\"JSON To CSV is a converter that lets you convert your JSON into the CSV Format. CSV is a lightweight format to represent spreadsheets whereas JSON is a text-based format most popular for sending data over the internet. Paste in your JSON and Click on the Button to convert to CSV.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(309, 'tool-json-to-csv', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(310, 'tool-password-generator', 'metaDescription', 0, '\"Password Generator allows you to generate passwords based on many different settings. The passwords generated by Password Generator are randomized. These passwords are also secure as they are not sent over the internet and only exist on the client\'s machine.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(311, 'tool-password-generator', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(312, 'tool-md5-generator', 'metaDescription', 0, '\"MD5 Generator is a useful tool that allows you to generate \\/ calculate MD5 hashes based on any string \\/ text. Each hash generated will be unique but the same input will produce the same output.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(313, 'tool-md5-generator', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(314, 'tool-sha-generator', 'metaDescription', 0, '\"SHA Generator is a useful tool that allows you to generate \\/ calculate SHA256 or SHA512 (SHA1, SHA2) hashes based on any string \\/ text. Each hash generated will be unique but the same input will produce the same output.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(315, 'tool-sha-generator', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(316, 'tool-hash-generator', 'metaDescription', 0, '\"Password Generator allows you to generate hashes based on any data. The hashes generated by Hash Generator are calculated based on the algorithm you choose. These hashes are also secure as they are not sent over the internet and only exist on the client\'s machine.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(317, 'tool-hash-generator', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(318, 'tool-word-count', 'metaDescription', 0, '\"Word Count is a useful tool that helps you easily find the number of individual letters and words in a piece of text.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(319, 'tool-word-count', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(320, 'tool-lorem-ipsum-generator', 'metaDescription', 0, '\"Lorem Ipsum Generator is a tool that lets you generate placeholder text for your projects. You can choose how many words, sentences or paragraphs to be generated.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(321, 'tool-lorem-ipsum-generator', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(322, 'tool-text-separator', 'metaDescription', 0, '\"Text Separator is a useful tool that allows you to separate a piece of text based on any character of your choice. You may separate the text by periods, quotes or any other characters. Paste your Text and Click on the Separate Button.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(323, 'tool-text-separator', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(324, 'tool-duplicate-lines-remover', 'metaDescription', 0, '\"Duplicate Lines Remover is a useful tool that allows you to remoev duplicate lines from any piece of text. Make sure that each line is on a new line or separated via period. Click on the Button to remove the duplicate lines.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(325, 'tool-duplicate-lines-remover', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(326, 'tool-seo-tags-generator', 'metaDescription', 0, '\"SEO & OpenGraph Tags Generator is a tool that lets you generate proper SEO & OpenGraph tags for your websites which make sure your website is indexed properly by search engines & social networks.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(327, 'tool-seo-tags-generator', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(328, 'tool-html-entity-encode', 'metaDescription', 0, '\"HTML Entity Encoder is a useful tool that allows you to convert HTML Text to HTML entities. HTML Entities are safe to be sent over the internet and stored in a database. You should never send HTML over the internet unless its a trusted source. Paste in your HTML and Click on the Button to convert to HTML Entities.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19');
INSERT INTO `settings` (`id`, `group`, `name`, `locked`, `payload`, `created_at`, `updated_at`) VALUES
(329, 'tool-html-entity-encode', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(330, 'tool-html-entity-decode', 'metaDescription', 0, '\"HTML Entity Decoder is a useful tool that allows you to convert HTML Entities to HTML. HTML Entities are safe to be sent over the internet and stored in a database. You should never send HTML over the internet unless its a trusted source. Paste in your HTML Entities and Click on the Button to convert to HTML.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(331, 'tool-html-entity-decode', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(332, 'tool-html-tags-stripper', 'metaDescription', 0, '\"HTML Tags Stripper is a useful tool that allows you to get rid of any HTML tags within a document. Paste your document in the text-area and click on the button to strip the HTML tags.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(333, 'tool-html-tags-stripper', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(334, 'tool-html-minifier', 'metaDescription', 0, '\"HTML Minifier is a useful tool that allows you to minify your HTML Code. Minified HTML Code has a smaller size and therefore it loads faster for the users. Minifying your code is recommended for a fast experience.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(335, 'tool-html-minifier', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(336, 'tool-css-minifier', 'metaDescription', 0, '\"CSS Minifier is a useful tool that allows you to minify your CSS Code. Minified CSS Code has a smaller size and therefore it loads faster for the users. Minifying your code is recommended for a fast experience.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(337, 'tool-css-minifier', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(338, 'tool-js-minifier', 'metaDescription', 0, '\"JS Minifier is a useful tool that allows you to minify your JS Code. Minified JS Code has a smaller size and therefore it loads faster for the users. Minifying your code is recommended for a fast experience.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(339, 'tool-js-minifier', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(340, 'tool-html-formatter', 'metaDescription', 0, '\"HTML Formatter is a useful tool that allows you to format HTML Code that is minified or unformatted. It will properly indent the code and add line breaks so that the code makes perfect sense.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(341, 'tool-html-formatter', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(342, 'tool-css-formatter', 'metaDescription', 0, '\"CSS Formatter is a useful tool that allows you to format CSS Code that is minified or unformatted. It will properly indent the code and add line breaks so that the code makes perfect sense.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(343, 'tool-css-formatter', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(344, 'tool-js-formatter', 'metaDescription', 0, '\"JS Formatter is a useful tool that allows you to format JS Code that is minified or unformatted. It will properly indent the code and add line breaks so that the code makes perfect sense.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(345, 'tool-js-formatter', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(346, 'tool-js-obfuscator', 'metaDescription', 0, '\"JS Obfuscator is a useful tool that allows you to obfuscate your javascript code. Obfuscated code is very difficult to understand by an outsider and can make your code difficult to crack. Type in the code you want to obfuscate and press the button.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(347, 'tool-js-obfuscator', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(348, 'tool-domain-generator', 'metaDescription', 0, '\"Domain Generator is a useful tool that allows you to generate .com, .net, .org, .info, .xyz, .biz domain names based on any keyword or multiple words.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(349, 'tool-domain-generator', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(350, 'tool-domain-whois', 'metaDescription', 0, '\"Domain WHOIS is a useful tool that allows you to find out the WHOIS information of .com, .net, .org, .info, .xyz, .biz domain names. Just type in the domain name and click the button to view the WHOIS information.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(351, 'tool-domain-whois', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(352, 'tool-ip-to-hostname', 'metaDescription', 0, '\"IP To Hostname is a useful tool that allows you to find out the hostname from an IP Address. Simply type in your IP Address and Click on the Button to find the hostname.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(353, 'tool-ip-to-hostname', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(354, 'tool-hostname-to-ip', 'metaDescription', 0, '\"Hostname to IP is a useful tool that allows you to find out the IP Address from a Hostname. Just type in your Hostname and Click on the Button to find the IP Address.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(355, 'tool-hostname-to-ip', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(356, 'general', 'darkTheme', 0, 'false', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(357, 'general', 'defaultTheme', 0, '\"light\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(358, 'tool-uuidv4-generator', 'enabled', 0, 'true', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(359, 'tool-uuidv4-generator', 'title', 0, '\"UUIDv4 Generator\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(360, 'tool-uuidv4-generator', 'summary', 0, '\"Generate UUIDv4 IDs\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(361, 'tool-uuidv4-generator', 'description', 0, '\"UUIDv4 Generator is a useful tool that helps you generate UUIDv4 IDs. UUIDv4 is a text based identification string that is sometimes used to identify users instead of Numberic IDs.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(362, 'tool-uuidv4-generator', 'metaDescription', 0, '\"UUIDv4 Generator is a useful tool that helps you generate UUIDv4 IDs. UUIDv4 is a text based identification string that is sometimes used to identify users instead of Numberic IDs.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(363, 'tool-uuidv4-generator', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(364, 'tool-slugs', 'UUIDv4Generator', 0, '\"uuidv4-generator\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(365, 'tool-bcrypt-generator', 'enabled', 0, 'true', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(366, 'tool-bcrypt-generator', 'title', 0, '\"Bcrypt Generator\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(367, 'tool-bcrypt-generator', 'summary', 0, '\"Generate Bcrypt Hashes\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(368, 'tool-bcrypt-generator', 'description', 0, '\"BCrypt Generator is a useful tool that allows you to generate BCrypt hashes.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(369, 'tool-bcrypt-generator', 'metaDescription', 0, '\"BCrypt Generator is a useful tool that allows you to generate BCrypt hashes.\"', '2022-12-05 05:10:19', '2022-12-05 05:10:19'),
(370, 'tool-bcrypt-generator', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(371, 'tool-slugs', 'BcryptGenerator', 0, '\"bcrypt-generator\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(372, 'tool-http-status-code-checker', 'enabled', 0, 'true', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(373, 'tool-http-status-code-checker', 'title', 0, '\"HTTP Status Code Checker\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(374, 'tool-http-status-code-checker', 'summary', 0, '\"Check HTTP Status Codes from URLs\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(375, 'tool-http-status-code-checker', 'description', 0, '\"HTTP Status Code Checker checker is a useful tool that lets you determine http response status codes from any URL.\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(376, 'tool-http-status-code-checker', 'metaDescription', 0, '\"HTTP Status Code Checker checker is a useful tool that lets you determine http response status codes from any URL.\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(377, 'tool-http-status-code-checker', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(378, 'tool-slugs', 'HTTPStatusCodeChecker', 0, '\"http-status-code-checker\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(379, 'tool-line-break-remover', 'enabled', 0, 'true', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(380, 'tool-line-break-remover', 'title', 0, '\"Line Break Remover\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(381, 'tool-line-break-remover', 'summary', 0, '\"Remove Line Breaks from Text\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(382, 'tool-line-break-remover', 'description', 0, '\"Line Break Remover is a useful tool that helps you remove line breaks from any piece of text.\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(383, 'tool-line-break-remover', 'metaDescription', 0, '\"Line Break Remover is a useful tool that helps you remove line breaks from any piece of text.\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(384, 'tool-line-break-remover', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(385, 'tool-slugs', 'LineBreakRemover', 0, '\"line-break-remover\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(386, 'tool-email-extractor', 'enabled', 0, 'true', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(387, 'tool-email-extractor', 'title', 0, '\"E-Mail Extractor\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(388, 'tool-email-extractor', 'summary', 0, '\"Extract E-Mails from Text\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(389, 'tool-email-extractor', 'description', 0, '\"E-Mail extractor is a useful tool that allows you to extract email addresses from text.\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(390, 'tool-email-extractor', 'metaDescription', 0, '\"E-Mail extractor is a useful tool that allows you to extract email addresses from text.\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(391, 'tool-email-extractor', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(392, 'tool-slugs', 'EmailExtractor', 0, '\"email-extractor\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(393, 'tool-url-extractor', 'enabled', 0, 'true', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(394, 'tool-url-extractor', 'title', 0, '\"URL Extractor\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(395, 'tool-url-extractor', 'summary', 0, '\"Extract URLs from Text\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(396, 'tool-url-extractor', 'description', 0, '\"URL extractor is a useful tool that allows you to extract URLs from text.\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(397, 'tool-url-extractor', 'metaDescription', 0, '\"URL extractor is a useful tool that allows you to extract URLs from text.\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(398, 'tool-url-extractor', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(399, 'tool-slugs', 'URLExtractor', 0, '\"url-extractor\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(400, 'tool-youtube-thumbnail-downloader', 'enabled', 0, 'true', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(401, 'tool-youtube-thumbnail-downloader', 'title', 0, '\"YouTube Thumbnail Downloader\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(402, 'tool-youtube-thumbnail-downloader', 'summary', 0, '\"Download YouTube Thumbnails\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(403, 'tool-youtube-thumbnail-downloader', 'description', 0, '\"YouTube Thumbnail Downloader is a useful tool that helps you download YouTube Thumbnails.\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(404, 'tool-youtube-thumbnail-downloader', 'metaDescription', 0, '\"YouTube Thumbnail Downloader is a useful tool that helps you download YouTube Thumbnails.\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(405, 'tool-youtube-thumbnail-downloader', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(406, 'tool-slugs', 'YouTubeThumbnailDownloader', 0, '\"youtube-thumbnail-downloader\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(407, 'tool-ip-information', 'enabled', 0, 'true', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(408, 'tool-ip-information', 'title', 0, '\"IP Information\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(409, 'tool-ip-information', 'summary', 0, '\"Get information about any IP\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(410, 'tool-ip-information', 'description', 0, '\"IP Information is a useful tool that allows you to get the information about any IP Address.\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(411, 'tool-ip-information', 'metaDescription', 0, '\"IP Information is a useful tool that allows you to get the information about any IP Address.\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(412, 'tool-ip-information', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(413, 'tool-slugs', 'IPInformation', 0, '\"ip-information\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(414, 'tool-sql-beautifier', 'enabled', 0, 'true', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(415, 'tool-sql-beautifier', 'title', 0, '\"SQL Beautifier\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(416, 'tool-sql-beautifier', 'summary', 0, '\"Format SQL Queries\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(417, 'tool-sql-beautifier', 'description', 0, '\"SQL Beautifier is a useful tool that allows you to format your SQL Queries.\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(418, 'tool-sql-beautifier', 'metaDescription', 0, '\"SQL Beautifier is a useful tool that allows you to format your SQL Queries.\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(419, 'tool-sql-beautifier', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(420, 'tool-slugs', 'SQLBeautifier', 0, '\"sql-beautifier\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(421, 'tool-password-strength-test', 'enabled', 0, 'true', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(422, 'tool-password-strength-test', 'title', 0, '\"Password Strength Test\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(423, 'tool-password-strength-test', 'summary', 0, '\"Check the strength of your Passwords\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(424, 'tool-password-strength-test', 'description', 0, '\"Password Strength Test is a useful tool that allows you to check the strength of your passwords.\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(425, 'tool-password-strength-test', 'metaDescription', 0, '\"Password Strength Test is a useful tool that allows you to check the strength of your passwords.\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(426, 'tool-password-strength-test', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(427, 'tool-slugs', 'PasswordStrengthTest', 0, '\"password-strength-test\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(428, 'general', 'contactTitle', 0, '\"Contact Us\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(429, 'general', 'contactKeywords', 0, '\"contact, get in touch\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(430, 'general', 'blogSection', 0, 'true', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(431, 'general', 'blogTitle', 0, '\"Blog\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(432, 'general', 'blogKeywords', 0, '\"blog,posts,articles\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(433, 'general', 'blogDescription', 0, '\"Latest News, Articles, Tips & Tricks from CyberTools.\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(434, 'tool-robotstxt-generator', 'enabled', 0, 'true', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(435, 'tool-robotstxt-generator', 'title', 0, '\"Robots.txt Generator\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(436, 'tool-robotstxt-generator', 'summary', 0, '\"Generate Robots.txt Files\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(437, 'tool-robotstxt-generator', 'description', 0, '\"Robots.txt Generator is a useful tool that helps you generate Robots.txt files to handle many types of bot visitors on your website.\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(438, 'tool-robotstxt-generator', 'metaDescription', 0, '\"Robots.txt Generator is a useful tool that helps you generate Robots.txt files to handle many types of bot visitors on your website.\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(439, 'tool-robotstxt-generator', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(440, 'tool-slugs', 'RobotstxtGenerator', 0, '\"robotstxt-generator\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(441, 'tool-htaccess-redirect-generator', 'enabled', 0, 'true', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(442, 'tool-htaccess-redirect-generator', 'title', 0, '\"HTACCESS Redirect Generator\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(443, 'tool-htaccess-redirect-generator', 'summary', 0, '\"Generate HTACCESS Redirects\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(444, 'tool-htaccess-redirect-generator', 'description', 0, '\"HTACCESS Redirect Generator is a useful tool that helps you generate HTACESS files to handle redirects. HTACCESS files work on Apache and Apache Compatible Web Servers.\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(445, 'tool-htaccess-redirect-generator', 'metaDescription', 0, '\"HTACCESS Redirect Generator is a useful tool that helps you generate HTACESS files to handle redirects. HTACCESS files work on Apache and Apache Compatible Web Servers.\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(446, 'tool-htaccess-redirect-generator', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(447, 'tool-slugs', 'HTACCESSRedirectGenerator', 0, '\"htaccess-generator\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(448, 'tool-privacy-policy-generator', 'enabled', 0, 'true', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(449, 'tool-privacy-policy-generator', 'title', 0, '\"Privacy Policy Generator\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(450, 'tool-privacy-policy-generator', 'summary', 0, '\"Generate Privacy Policy pages for your website.\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(451, 'tool-privacy-policy-generator', 'description', 0, '\"Privacy Policy Generator is a useful tool that helps you generate Privacy Policy pages for your website based on a specific template.\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(452, 'tool-privacy-policy-generator', 'metaDescription', 0, '\"Privacy Policy Generator is a useful tool that helps you generate Privacy Policy pages for your website based on a specific template.\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(453, 'tool-privacy-policy-generator', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(454, 'tool-slugs', 'PrivacyPolicyGenerator', 0, '\"privacy-policy-generator\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(455, 'tool-terms-of-service-generator', 'enabled', 0, 'true', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(456, 'tool-terms-of-service-generator', 'title', 0, '\"Terms of Service Generator\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(457, 'tool-terms-of-service-generator', 'summary', 0, '\"Generate TOS for your website.\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(458, 'tool-terms-of-service-generator', 'description', 0, '\"Terms of Service Generator is a useful tool that helps you generate Terms of Service pages for your website based on a specific template.\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(459, 'tool-terms-of-service-generator', 'metaDescription', 0, '\"Terms of Service Generator is a useful tool that helps you generate Terms of Service pages for your website based on a specific template.\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(460, 'tool-terms-of-service-generator', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(461, 'tool-slugs', 'TermsOfServiceGenerator', 0, '\"terms-of-service-generator\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(462, 'tool-email-validator', 'enabled', 0, 'true', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(463, 'tool-email-validator', 'title', 0, '\"E-Mail Validator\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(464, 'tool-email-validator', 'summary', 0, '\"Validate emails individually or in bulk.\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(465, 'tool-email-validator', 'description', 0, '\"E-Mail Validator is a useful tool that helps you validate the correctness of any e-mail address individually or many emails in bulk.\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(466, 'tool-email-validator', 'metaDescription', 0, '\"E-Mail Validator is a useful tool that helps you validate the correctness of any e-mail address individually or many emails in bulk.\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(467, 'tool-email-validator', 'metaKeywords', 0, '\"\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20'),
(468, 'tool-slugs', 'EmailValidator', 0, '\"email-validator\"', '2022-12-05 05:10:20', '2022-12-05 05:10:20');

-- --------------------------------------------------------

--
-- Table structure for table `tool_views`
--

CREATE TABLE `tool_views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tool_id` varchar(191) DEFAULT NULL,
  `views` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tool_views`
--

INSERT INTO `tool_views` (`id`, `tool_id`, `views`, `created_at`, `updated_at`) VALUES
(1, 'website-status-checker', 2, '2022-12-05 05:13:00', '2022-12-05 05:20:49'),
(2, 'ip-information', 1, '2022-12-05 05:14:24', '2022-12-05 05:14:24'),
(3, 'domain-whois', 1, '2022-12-05 05:15:07', '2022-12-05 05:15:07'),
(4, 'http-headers-parser', 2, '2022-12-05 05:21:01', '2022-12-05 05:32:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `admin` tinyint(1) DEFAULT 0,
  `super_admin` tinyint(1) DEFAULT 0,
  `avatar` text DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `admin`, `super_admin`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'araqum@gmail.com', '2022-12-05 05:11:03', '$2y$10$z6beyq.Y1E3BRS1CMqfeg.LNKUQvTKmvfdAWKYyl7/ye8Lq0BCJ5K', 1, 1, '', NULL, '2022-12-05 05:11:03', '2022-12-05 05:11:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_group_index` (`group`);

--
-- Indexes for table `tool_views`
--
ALTER TABLE `tool_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=469;

--
-- AUTO_INCREMENT for table `tool_views`
--
ALTER TABLE `tool_views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
