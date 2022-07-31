-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2022 at 10:22 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `makasb`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_ar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `title_ar`, `title_en`, `desc_ar`, `desc_en`, `image`, `created_at`, `updated_at`) VALUES
(1, 'مكاسب يساعدك على', 'Makasb helps you to', '<p>زيادة الإعجابات على Facebook ، مشاركة Facebook ، متابعو Facebook ، Facebook Post Likes ، Facebook Post Share ، قوائم مشاهدة CoinMarketCap ، أعضاء مجتمع Reddit ، Reddit Post / Comments Upvotes ، اشتراك YouTube ، إعجابات فيديو YouTube ، مشاهدات YouTube ، متابعي Twitter ، Twitter Twitter ، إعجابات Twitter ، متابعو صفحة VK ، VK Group Join ، Instagram Followers ، Instagram Photo Likes ، Pinterest Followers ، Pinterest Post Save ، Reverbnation Followers ، SoundCloud Followers ، SoundCloud Music Listening ، Twitch Followers ، TikTok Followers ، TikTok Video Likes ، Likee Followers / Fan ، Telegram Channel Subscribers والمشتركين ونشاطات الموقع (autosurf).</p>', '<p>increase Facebook Likes, Facebook Share, Facebook Followers, Facebook Post Likes, Facebook Post Share, CoinMarketCap Watchlists, Reddit Community Members, Reddit Post/Comments Upvotes, YouTube Subscribe, YouTube Video Likes, YouTube Views, Twitter Followers, Twitter Tweets, Twitter Likes, VK Page Followers, VK Group Join, Instagram Followers, Instagram Photo Likes, Pinterest Followers, Pinterest Post Save, Reverbnation Fans, SoundCloud Followers, SoundCloud Music Listening, Twitch Followers, TikTok Followers, TikTok Video Likes, Likee Followers/Fan, Telegram Channel Subscribers, Subscribers and Website Hits (autosurf).&nbsp;<br>&nbsp;</p>', 'assets/uploads/setting/5441658392240.svg', NULL, '2022-07-21 08:30:40');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `image`, `created_at`, `updated_at`) VALUES
(1, 'احمد يحيي', 'admin@admin.com', '$2y$10$.JU9IVY4Tf5LvpN2UFxh3upmuTgpzWSX7Ddoqtx.k78jD5nKeWLNC', 'assets/uploads/admins/66161658316929.webp', NULL, '2022-07-20 11:35:29');

-- --------------------------------------------------------

--
-- Table structure for table `coin_sections`
--

CREATE TABLE `coin_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `desc_ar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(20) NOT NULL,
  `code` varchar(2) NOT NULL,
  `name` varchar(100) NOT NULL,
  `en_name` varchar(100) NOT NULL,
  `ar_name` varchar(100) NOT NULL,
  `calling_code` varchar(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`, `en_name`, `ar_name`, `calling_code`) VALUES
(1, 'AX', 'Åland‬‏', 'Åland Islands', 'جزر أولان ', '358'),
(2, 'AL', 'Shqipëria‬‏', 'Albania', 'ألبانيا ', '355'),
(3, 'DZ', 'الجزائر', 'Algeria', 'الجزائر', '213'),
(4, 'AS', 'American Samoa‬‏', 'American Samoa', 'ساموا الأمريكية ', '1 684'),
(5, 'AD', 'Andorra‬‏', 'Andorra', 'أندورا ', '376'),
(6, 'AO', 'Angola‬‏', 'Angola', 'أنغولا ', '244'),
(7, 'AI', 'Anguilla‬‏', 'Anguilla', 'أنغويلا ', '1 264'),
(8, 'AQ', 'Antarctica‬‏', 'Antarctica', 'أنتاركتيكا ', '672'),
(9, 'AG', 'Antigua and Barbuda‬‏', 'Antigua and Barbuda', 'أنتيغوا وبربودا ', '1 268'),
(10, 'AR', 'Argentina‬‏', 'Argentina', 'الأرجنتين ', '54'),
(11, 'AM', 'Հայաստան‬‏', 'Armenia', 'أرمينيا ', '374'),
(12, 'AW', 'Aruba‬‏', 'Aruba', 'آروبا ', '297'),
(13, 'AU', 'Australia‬‏', 'Australia', 'أستراليا ', '61'),
(14, 'AT', 'Österreich‬‏', 'Austria', 'النمسا ', '43'),
(15, 'AZ', 'Azərbaycan‬‏', 'Azerbaijan', 'أذربيجان ', '994'),
(16, 'BS', 'Bahamas‬‏', 'Bahamas', 'الباهاما ', '1 242'),
(17, 'BH', 'البحرين', 'Bahrain', 'البحرين', '973'),
(18, 'BD', 'বাংলাদেশ‬‏', 'Bangladesh', 'بنجلاديش ', '880'),
(19, 'BB', 'Barbados‬‏', 'Barbados', 'بربادوس ', '1 246'),
(20, 'BY', 'Беларусь‬‏', 'Belarus', 'روسيا البيضاء ', '375'),
(21, 'BE', 'België‬‏', 'Belgium', 'بلجيكا ', '32'),
(22, 'BZ', 'Belize‬‏', 'Belize', 'بليز ', '501'),
(23, 'BJ', 'Bénin‬‏', 'Benin', 'بنين ', '229'),
(24, 'BM', 'Bermuda‬‏', 'Bermuda', 'برمودا ', '1 441'),
(25, 'BT', 'འབྲུག‬‏', 'Bhutan', 'بوتان ', '975'),
(26, 'BO', 'Bolivia‬‏', 'Bolivia', 'بوليفيا ', '591'),
(27, 'BQ', 'Caribbean Netherlands‬‏', 'Caribbean Netherlands', 'هولندا الكاريبية ', '599'),
(28, 'BA', 'Босна и Херцеговина‬‏', 'Bosnia and Herzegovina', 'البوسنة والهرسك ', '387'),
(29, 'BW', 'Botswana‬‏', 'Botswana', 'بتسوانا ', '267'),
(30, 'BV', 'Bouvet Island‬‏', 'Bouvet Island', 'جزيرة بوفيه ', NULL),
(31, 'BR', 'Brasil‬‏', 'Brazil', 'البرازيل ', '55'),
(32, 'IO', 'British Indian Ocean Territory‬‏', 'British Indian Ocean Territory', 'الإقليم البريطاني في المحيط الهندي ', '246'),
(33, 'BN', 'Brunei‬‏', 'Brunei', 'بروناي ', '673'),
(34, 'BG', 'България‬‏', 'Bulgaria', 'بلغاريا ', '359'),
(35, 'BF', 'Burkina Faso‬‏', 'Burkina Faso', 'بوركينا فاسو ', '226'),
(36, 'BI', 'Uburundi‬‏', 'Burundi', 'بوروندي ', '257'),
(37, 'KH', 'កម្ពុជា‬‏', 'Cambodia', 'كمبوديا ', '855'),
(38, 'CM', 'Cameroun‬‏', 'Cameroon', 'الكاميرون ', '237'),
(39, 'CA', 'Canada‬‏', 'Canada', 'كندا ', '1'),
(40, 'CV', 'Kabu Verdi‬‏', 'Cape Verde', 'الرأس الأخضر ', '238'),
(41, 'KY', 'Cayman Islands‬‏', 'Cayman Islands', 'جزر الكايمن ', '1 345'),
(42, 'CF', 'République centrafricaine‬‏', 'Central African Republic', 'جمهورية أفريقيا الوسطى ', '236'),
(43, 'TD', 'Tchad‬‏', 'Chad', 'تشاد ', '235'),
(44, 'CL', 'Chile‬‏', 'Chile', 'شيلي ', '56'),
(45, 'CN', '中国‬‏', 'China', 'الصين ', '86'),
(46, 'CX', 'Christmas Island‬‏', 'Christmas Island', 'جزيرة الكريسماس ', '61'),
(47, 'CC', 'Cocos [Keeling] Islands‬‏', 'Cocos [Keeling] Islands', 'جزر كوكوس ', '61'),
(48, 'CO', 'Colombia‬‏', 'Colombia', 'كولومبيا ', '57'),
(49, 'KM', 'جزر القمر', 'Comoros', 'جزر القمر', '269'),
(50, 'CG', 'Congo-Brazzaville‬‏', 'Congo [Republic]', 'الكونغو - برازافيل ', '242'),
(51, 'CD', 'Jamhuri ya Kidemokrasia ya Kongo‬‏', 'Congo [DRC]', 'الكونغو - كينشاسا ', '243'),
(52, 'CK', 'Cook Islands‬‏', 'Cook Islands', 'جزر كوك ', '682'),
(53, 'CR', 'Costa Rica‬‏', 'Costa Rica', 'كوستاريكا ', '506'),
(54, 'CI', 'Côte d’Ivoire‬‏', 'Côte d’Ivoire', 'ساحل العاج ', '225'),
(55, 'HR', 'Hrvatska‬‏', 'Croatia', 'كرواتيا ', '385'),
(56, 'CU', 'Cuba‬‏', 'Cuba', 'كوبا ', '53'),
(57, 'CW', 'Curaçao‬‏', 'Curaçao', 'كوراساو ', '599 9'),
(58, 'CY', 'Κύπρος‬‏', 'Cyprus', 'قبرص ', '357'),
(59, 'CZ', 'Česká republika‬‏', 'Czech Republic', 'جمهورية التشيك ', '420'),
(60, 'DK', 'Danmark‬‏', 'Denmark', 'الدانمرك ', '45'),
(61, 'DJ', 'Djibouti‬‏', 'Djibouti', 'جيبوتي ', '253'),
(62, 'DM', 'Dominica‬‏', 'Dominica', 'دومينيكا ', '1 767'),
(63, 'DO', 'República Dominicana‬‏', 'Dominican Republic', 'جمهورية الدومينيك ', '1 809'),
(64, 'EC', 'Ecuador‬‏', 'Ecuador', 'الإكوادور ', '593'),
(65, 'EG', 'مصر', 'Egypt', 'مصر', '20'),
(66, 'SV', 'El Salvador‬‏', 'El Salvador', 'السلفادور ', '503'),
(67, 'GQ', 'Guinea Ecuatorial‬‏', 'Equatorial Guinea', 'غينيا الإستوائية ', '240'),
(68, 'ER', 'Eritrea‬‏', 'Eritrea', 'أريتريا ', '291'),
(69, 'EE', 'Eesti‬‏', 'Estonia', 'أستونيا ', '372'),
(70, 'ET', 'Ethiopia‬‏', 'Ethiopia', 'إثيوبيا ', '251'),
(71, 'FK', 'Falkland Islands [Islas Malvinas]‬‏', 'Falkland Islands [Islas Malvinas]', 'جزر فوكلاند ', '500'),
(72, 'FO', 'Føroyar‬‏', 'Faroe Islands', 'جزر فارو ', '298'),
(73, 'FJ', 'Fiji‬‏', 'Fiji', 'فيجي ', '679'),
(74, 'FI', 'Suomi‬‏', 'Finland', 'فنلندا ', '358'),
(75, 'FR', 'France‬‏', 'France', 'فرنسا ', '33'),
(76, 'GF', 'Guyane française‬‏', 'French Guiana', 'غويانا الفرنسية ', NULL),
(77, 'PF', 'Polynésie française‬‏', 'French Polynesia', 'بولينيزيا الفرنسية ', '689'),
(78, 'TF', 'Terres australes françaises‬‏', 'French Southern Territories', 'المقاطعات الجنوبية الفرنسية ', NULL),
(79, 'GA', 'Gabon‬‏', 'Gabon', 'الجابون ', '241'),
(80, 'GM', 'Gambia‬‏', 'Gambia', 'غامبيا ', '220'),
(81, 'GE', 'საქართველო‬‏', 'Georgia', 'جورجيا ', '995'),
(82, 'DE', 'Deutschland‬‏', 'Germany', 'ألمانيا ', '49'),
(83, 'GH', 'Gaana‬‏', 'Ghana', 'غانا ', '233'),
(84, 'GI', 'Gibraltar‬‏', 'Gibraltar', 'جبل طارق ', '350'),
(85, 'GR', 'Ελλάδα‬‏', 'Greece', 'اليونان ', '30'),
(86, 'GL', 'Kalaallit Nunaat‬‏', 'Greenland', 'غرينلاند ', '299'),
(87, 'GD', 'Grenada‬‏', 'Grenada', 'غرينادا ', '1 473'),
(88, 'GP', 'Guadeloupe‬‏', 'Guadeloupe', 'جوادلوب ', NULL),
(89, 'GU', 'Guam‬‏', 'Guam', 'غوام ', '1 671'),
(90, 'GT', 'Guatemala‬‏', 'Guatemala', 'غواتيمالا ', '502'),
(91, 'GG', 'Guernsey‬‏', 'Guernsey', 'غيرنزي ', '44'),
(92, 'GN', 'Guinée‬‏', 'Guinea', 'غينيا ', '224'),
(93, 'GW', 'Guiné Bissau‬‏', 'Guinea-Bissau', 'غينيا بيساو ', '245'),
(94, 'GY', 'Guyana‬‏', 'Guyana', 'غيانا ', '592'),
(95, 'HT', 'Haiti‬‏', 'Haiti', 'هايتي ', '509'),
(96, 'HM', 'Heard Island and McDonald Islands‬‏', 'Heard Island and McDonald Islands', 'جزيرة هيرد وجزر ماكدونالد ', NULL),
(97, 'VA', 'Città del Vaticano‬‏', 'Vatican City', 'الفاتيكان ', '39'),
(98, 'HN', 'Honduras‬‏', 'Honduras', 'هندوراس ', '504'),
(99, 'HK', '香港‬‏', 'Hong Kong', 'هونغ كونغ ', '852'),
(100, 'HU', 'Magyarország‬‏', 'Hungary', 'هنغاريا ', '36'),
(101, 'IS', 'Ísland‬‏', 'Iceland', 'أيسلندا ', '354'),
(102, 'IN', 'भारत‬‏', 'India', 'الهند ', '91'),
(103, 'ID', 'Indonesia‬‏', 'Indonesia', 'أندونيسيا ', '62'),
(104, 'IR', 'إيران', 'Iran', 'ایران', '98'),
(105, 'IQ', 'العراق', 'Iraq', 'العراق', '964'),
(106, 'IE', 'Ireland‬‏', 'Ireland', 'أيرلندا ', '353'),
(107, 'IM', 'Isle of Man‬‏', 'Isle of Man', 'جزيرة مان ', '44'),
(108, 'IL', 'ישראל', 'Israel', 'إسرائيل', '972'),
(109, 'IT', 'Italia‬‏', 'Italy', 'إيطاليا ', '39'),
(110, 'JM', 'Jamaica‬‏', 'Jamaica', 'جامايكا ', '1 876'),
(111, 'JP', '日本‬‏', 'Japan', 'اليابان ', '81'),
(112, 'JE', 'Jersey‬‏', 'Jersey', 'جيرسي ', '44'),
(113, 'JO', 'الأردن', 'Jordan', 'الأردن', '962'),
(114, 'KZ', 'Казахстан‬‏', 'Kazakhstan', 'كازاخستان ', '7'),
(115, 'KE', 'Kenya‬‏', 'Kenya', 'كينيا ', '254'),
(116, 'KI', 'Kiribati‬‏', 'Kiribati', 'كيريباتي ', '686'),
(117, 'KP', '조선 민주주의 인민 공화국‬‏', 'North Korea', 'كوريا الشمالية ', '850'),
(118, 'KR', '대한민국‬‏', 'South Korea', 'كوريا الجنوبية ', '82'),
(119, 'KW', 'الكويت', 'Kuwait', 'الكويت', '965'),
(120, 'KG', 'Kyrgyzstan‬‏', 'Kyrgyzstan', 'قرغيزستان ', '996'),
(121, 'LA', 'ສ.ປ.ປ ລາວ‬‏', 'Laos', 'لاوس ', '856'),
(122, 'LV', 'Latvija‬‏', 'Latvia', 'لاتفيا ', '371'),
(123, 'LB', 'لبنان', 'Lebanon', 'لبنان', '961'),
(124, 'LS', 'Lesotho‬‏', 'Lesotho', 'ليسوتو ', '266'),
(125, 'LR', 'Liberia‬‏', 'Liberia', 'ليبيريا ', '231'),
(126, 'LY', 'ليبيا', 'Libya', 'ليبيا', '218'),
(127, 'LI', 'Liechtenstein‬‏', 'Liechtenstein', 'ليختنشتاين ', '423'),
(128, 'LT', 'Lietuva‬‏', 'Lithuania', 'ليتوانيا ', '370'),
(129, 'LU', 'Luxembourg‬‏', 'Luxembourg', 'لوكسمبورغ ', '352'),
(130, 'MO', '澳門‬‏', 'Macau', 'مكاو ', '853'),
(131, 'MK', 'Македонија‬‏', 'Macedonia [FYROM]', 'مقدونيا ', '389'),
(132, 'MG', 'Madagasikara‬‏', 'Madagascar', 'مدغشقر ', '261'),
(133, 'MW', 'Malawi‬‏', 'Malawi', 'ملاوي ', '265'),
(134, 'MY', 'Malaysia‬‏', 'Malaysia', 'ماليزيا ', '60'),
(135, 'MV', 'Maldives‬‏', 'Maldives', 'جزر المالديف ', '960'),
(136, 'ML', 'Mali‬‏', 'Mali', 'مالي ', '223'),
(137, 'MT', 'Malta‬‏', 'Malta', 'مالطا ', '356'),
(138, 'MH', 'Marshall Islands‬‏', 'Marshall Islands', 'جزر المارشال ', '692'),
(139, 'MQ', 'Martinique‬‏', 'Martinique', 'مارتينيك ', '596'),
(140, 'MR', 'موريتانيا', 'Mauritania', 'موريتانيا', '222'),
(141, 'MU', 'Moris‬‏', 'Mauritius', 'موريشيوس ', '230'),
(142, 'YT', 'Mayotte‬‏', 'Mayotte', 'مايوت ', '262'),
(143, 'MX', 'México‬‏', 'Mexico', 'المكسيك ', '52'),
(144, 'FM', 'Micronesia‬‏', 'Micronesia', 'ميكرونيزيا ', '691'),
(145, 'MD', 'Republica Moldova‬‏', 'Moldova', 'مولدافيا ', '373'),
(146, 'MC', 'Monaco‬‏', 'Monaco', 'موناكو ', '377'),
(147, 'MN', 'Монгол‬‏', 'Mongolia', 'منغوليا ', '976'),
(148, 'ME', 'Crna Gora‬‏', 'Montenegro', 'الجبل الأسود ', '382'),
(149, 'MS', 'Montserrat‬‏', 'Montserrat', 'مونتسرات ', '1 664'),
(150, 'MA', 'المغرب', 'Morocco', 'المغرب', '212'),
(151, 'MZ', 'Moçambique‬‏', 'Mozambique', 'موزمبيق ', '258'),
(152, 'MM', 'မြန်မာ‬‏', 'Myanmar [Burma]', 'ميانمار -بورما ', '95'),
(153, 'NA', 'Namibia‬‏', 'Namibia', 'ناميبيا ', '264'),
(154, 'NR', 'Nauru‬‏', 'Nauru', 'ناورو ', '674'),
(155, 'NP', 'नेपाल‬‏', 'Nepal', 'نيبال ', '977'),
(156, 'NL', 'Nederland‬‏', 'Netherlands', 'هولندا ', '31'),
(157, 'NC', 'Nouvelle-Calédonie‬‏', 'New Caledonia', 'كاليدونيا الجديدة ', '687'),
(158, 'NZ', 'New Zealand‬‏', 'New Zealand', 'نيوزيلاندا ', '64'),
(159, 'NI', 'Nicaragua‬‏', 'Nicaragua', 'نيكاراغوا ', '505'),
(160, 'NE', 'Nijar‬‏', 'Niger', 'النيجر ', '227'),
(161, 'NG', 'Nigeria‬‏', 'Nigeria', 'نيجيريا ', '234'),
(162, 'NU', 'Niue‬‏', 'Niue', 'نيوي ', '683'),
(163, 'NF', 'Norfolk Island‬‏', 'Norfolk Island', 'جزيرة نورفوك ', '672'),
(164, 'MP', 'Northern Mariana Islands‬‏', 'Northern Mariana Islands', 'جزر ماريانا الشمالية ', '1 670'),
(165, 'NO', 'Norge‬‏', 'Norway', 'النرويج ', '47'),
(166, 'OM', 'عُمان', 'Oman', 'عُمان', '968'),
(167, 'PK', 'پاکستان', 'Pakistan', 'باكستان', '92'),
(168, 'PW', 'Palau‬‏', 'Palau', 'بالاو ', '680'),
(169, 'PS', 'فلسطين', 'Palestine', 'فلسطين', '970'),
(170, 'PA', 'Panamá‬‏', 'Panama', 'بنما ', '507'),
(171, 'PG', 'Papua New Guinea‬‏', 'Papua New Guinea', 'بابوا غينيا الجديدة ', '675'),
(172, 'PY', 'Paraguay‬‏', 'Paraguay', 'باراغواي ', '595'),
(173, 'PE', 'Perú‬‏', 'Peru', 'بيرو ', '51'),
(174, 'PH', 'Philippines‬‏', 'Philippines', 'الفيلبين ', '63'),
(175, 'PN', 'Pitcairn Islands‬‏', 'Pitcairn Islands', 'جزر بيتكيرن ', '870'),
(176, 'PL', 'Polska‬‏', 'Poland', 'بولندا ', '48'),
(177, 'PT', 'Portugal‬‏', 'Portugal', 'البرتغال ', '351'),
(178, 'PR', 'Puerto Rico‬‏', 'Puerto Rico', 'بورتوريكو ', '1 787'),
(179, 'QA', 'قطر', 'Qatar', 'قطر', '974'),
(180, 'RE', 'Réunion‬‏', 'Réunion', 'روينيون ', NULL),
(181, 'RO', 'România‬‏', 'Romania', 'رومانيا ', '40'),
(182, 'RU', 'Россия‬‏', 'Russia', 'روسيا ', '7'),
(183, 'RW', 'Rwanda‬‏', 'Rwanda', 'رواندا ', '250'),
(184, 'BL', 'Saint-Barthélémy‬‏', 'Saint Barthélemy', 'سان بارتليمي ', '590'),
(185, 'SH', 'Saint Helena‬‏', 'Saint Helena', 'سانت هيلنا ', '290'),
(186, 'KN', 'Saint Kitts and Nevis‬‏', 'Saint Kitts and Nevis', 'سانت كيتس ونيفيس ', '1 869'),
(187, 'LC', 'Saint Lucia‬‏', 'Saint Lucia', 'سانت لوسيا ', '1 758'),
(188, 'MF', 'Saint-Martin [partie française]‬‏', 'Saint Martin', 'سانت مارتن ', '1 599'),
(189, 'PM', 'Saint-Pierre-et-Miquelon‬‏', 'Saint Pierre and Miquelon', 'سانت بيير وميكولون ', '508'),
(190, 'VC', 'Saint Vincent and the Grenadines‬‏', 'Saint Vincent and the Grenadines', 'سانت فنسنت وغرنادين ', '1784'),
(191, 'WS', 'Samoa‬‏', 'Samoa', 'ساموا ', '685'),
(192, 'SM', 'San Marino‬‏', 'San Marino', 'سان مارينو ', '378'),
(193, 'ST', 'São Tomé e Príncipe‬‏', 'São Tomé and Príncipe', 'ساو تومي وبرينسيبي ', '239'),
(194, 'SA', 'المملكة العربية السعودية', 'Saudi Arabia', 'المملكة العربية السعودية', '966'),
(195, 'SN', 'Sénégal‬‏', 'Senegal', 'السنغال ', '221'),
(196, 'RS', 'Србија‬‏', 'Serbia', 'صربيا ', '381'),
(197, 'SC', 'Seychelles‬‏', 'Seychelles', 'سيشل ', '248'),
(198, 'SL', 'Sierra Leone‬‏', 'Sierra Leone', 'سيراليون ', '232'),
(199, 'SG', 'Singapore‬‏', 'Singapore', 'سنغافورة ', '65'),
(200, 'SX', 'Sint Maarten‬‏', 'Sint Maarten', 'سينت مارتن ', '1 721'),
(201, 'SK', 'Slovensko‬‏', 'Slovakia', 'سلوفاكيا ', '421'),
(202, 'SI', 'Slovenija‬‏', 'Slovenia', 'سلوفينيا ', '386'),
(203, 'SB', 'Solomon Islands‬‏', 'Solomon Islands', 'جزر سليمان ', '677'),
(204, 'SO', 'Soomaaliya‬‏', 'Somalia', 'الصومال ', '252'),
(205, 'ZA', 'South Africa‬‏', 'South Africa', 'جنوب أفريقيا ', '27'),
(206, 'GS', 'South Georgia and the South Sandwich Islands‬‏', 'South Georgia and the South Sandwich Islands', 'جورجيا الجنوبية وجزر ساندويتش الجنوبية ', NULL),
(207, 'SS', 'جنوب السودان', 'South Sudan', 'جنوب السودان', '211'),
(208, 'ES', 'España‬‏', 'Spain', 'إسبانيا ', '34'),
(209, 'LK', 'ශ්‍රී ලංකාව‬‏', 'Sri Lanka', 'سريلانكا ', '94'),
(210, 'SD', 'السودان', 'Sudan', 'السودان', '249'),
(211, 'SR', 'Suriname‬‏', 'Suriname', 'سورينام ', '597'),
(212, 'SJ', 'Svalbard og Jan Mayen‬‏', 'Svalbard and Jan Mayen', 'سفالبارد وجان مايان ', NULL),
(213, 'SZ', 'Swaziland‬‏', 'Swaziland', 'سوازيلاند ', '268'),
(214, 'SE', 'Sverige‬‏', 'Sweden', 'السويد ', '46'),
(215, 'CH', 'Schweiz‬‏', 'Switzerland', 'سويسرا ', '41'),
(216, 'SY', 'سوريا', 'Syria', 'سوريا', '963'),
(217, 'TW', '台灣‬‏', 'Taiwan', 'تايوان ', '886'),
(218, 'TJ', 'Tajikistan‬‏', 'Tajikistan', 'طاجكستان ', '992'),
(219, 'TZ', 'Tanzania‬‏', 'Tanzania', 'تانزانيا ', '255'),
(220, 'TH', 'ไทย‬‏', 'Thailand', 'تايلند ', '66'),
(221, 'TL', 'Timor-Leste‬‏', 'Timor-Leste', 'تيمور الشرقية ', '670'),
(222, 'TG', 'Togo‬‏', 'Togo', 'توجو ', '228'),
(223, 'TK', 'Tokelau‬‏', 'Tokelau', 'توكيلو ', '690'),
(224, 'TO', 'Tonga‬‏', 'Tonga', 'تونغا ', '676'),
(225, 'TT', 'Trinidad and Tobago‬‏', 'Trinidad and Tobago', 'ترينيداد وتوباغو ', '1 868'),
(226, 'TN', 'تونس', 'Tunisia', 'تونس', '216'),
(227, 'TR', 'Türkiye‬‏', 'Turkey', 'تركيا ', '90'),
(228, 'TM', 'Turkmenistan‬‏', 'Turkmenistan', 'تركمانستان ', '993'),
(229, 'TC', 'Turks and Caicos Islands‬‏', 'Turks and Caicos Islands', 'جزر الترك وجايكوس ', '1 649'),
(230, 'TV', 'Tuvalu‬‏', 'Tuvalu', 'توفالو ', '688'),
(231, 'UG', 'Uganda‬‏', 'Uganda', 'أوغندا ', '256'),
(232, 'UA', 'Україна‬‏', 'Ukraine', 'أوكرانيا ', '380'),
(233, 'AE', 'الإمارات العربية المتحدة', 'United Arab Emirates', 'الإمارات العربية المتحدة', '971'),
(234, 'GB', 'United Kingdom‬‏', 'United Kingdom', 'المملكة المتحدة ', '44'),
(235, 'US', 'United States‬‏', 'United States', 'الولايات المتحدة ', '1'),
(236, 'UM', 'U.S. Outlying Islands‬‏', 'U.S. Outlying Islands', 'جزر الولايات المتحدة البعيدة الصغيرة ', NULL),
(237, 'UY', 'Uruguay‬‏', 'Uruguay', 'أورغواي ', '598'),
(238, 'UZ', 'Ўзбекистон‬‏', 'Uzbekistan', 'أوزبكستان ', '998'),
(239, 'VU', 'Vanuatu‬‏', 'Vanuatu', 'فانواتو ', '678'),
(240, 'VE', 'Venezuela‬‏', 'Venezuela', 'فنزويلا ', '58'),
(241, 'VN', 'Việt Nam‬‏', 'Vietnam', 'فيتنام ', '84'),
(242, 'VG', 'British Virgin Islands‬‏', 'British Virgin Islands', 'جزر فرجين البريطانية ', '1 284'),
(243, 'VI', 'U.S. Virgin Islands‬‏', 'U.S. Virgin Islands', 'جزر فرجين الأمريكية ', '1 340'),
(244, 'WF', 'Wallis and Futuna‬‏', 'Wallis and Futuna', 'جزر والس وفوتونا ', '681'),
(245, 'EH', 'الصحراء الغربية', 'Western Sahara', 'الصحراء الغربية', '212'),
(246, 'YE', 'اليمن', 'Yemen', 'اليمن', '967'),
(247, 'ZM', 'Zambia‬‏', 'Zambia', 'زامبيا ', '260'),
(248, 'ZW', 'Zimbabwe‬‏', 'Zimbabwe', 'زيمبابوي ', '263');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_ar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feature_lists`
--

CREATE TABLE `feature_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feature_id` bigint(20) DEFAULT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_03_20_123415_create_admins_table', 1),
(3, '2022_03_20_134518_create_settings_table', 1),
(4, '2022_05_06_183314_create_services_table', 1),
(5, '2022_07_20_112255_create_sliders_table', 1),
(6, '2022_07_20_112658_create_about_us_table', 1),
(7, '2022_07_20_113328_create_features_table', 1),
(8, '2022_07_20_113437_create_feature_lists_table', 1),
(9, '2022_07_20_113540_create_coin_sections_table', 1),
(10, '2022_07_21_143846_create_users_table', 2),
(11, '2022_07_27_100630_create_site_types_table', 3),
(12, '2022_07_27_153749_create_sites_table', 3),
(13, '2022_07_28_101427_create_site_countries_table', 4),
(14, '2022_09_27_152917_create_countries_table', 4),
(15, '2022_07_28_161137_create_site_infos_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_ar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title_ar`, `title_en`, `icon`, `desc_ar`, `desc_en`, `created_at`, `updated_at`) VALUES
(1, 'نحن القادة', 'We are the leaders', 'fe fe-at-sign', 'نحن رواد في مجال التسويق / الترويج عبر وسائل التواصل الاجتماعي', 'We are the leaders in the field of social media marketing/promotion', '2022-07-20 12:18:04', '2022-07-20 12:18:04'),
(2, 'احدث المواقع', 'User friendly interface', 'fe fe-x-circle', 'لدينا واجهة سهلة الاستخدام', 'We have user friendly interface', '2022-07-20 12:21:46', '2022-07-21 12:22:38'),
(3, 'افضل الخدمات', 'Best Services', 'fe fe-award', 'الموقع الاول في الوطن العربي للخدمات الترويجية', 'The first site in the Arab world for promotional services', '2022-07-21 12:24:07', '2022-07-21 12:24:07');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insta` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `logo`, `feature_image`, `terms`, `privacy`, `facebook`, `insta`, `youtube`, `linkedin`, `created_at`, `updated_at`) VALUES
(1, 'مكاسـب', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

CREATE TABLE `sites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `site_type` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `daily_clicks_limit` int(20) DEFAULT NULL,
  `total_clicks_limit` int(11) DEFAULT NULL,
  `needed_clicks` int(11) DEFAULT NULL COMMENT 'it is the reminder clicks to reach to total_clicks_needed ',
  `points_for_click` int(11) DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`id`, `user_id`, `site_type`, `title`, `url`, `daily_clicks_limit`, `total_clicks_limit`, `needed_clicks`, `points_for_click`, `status`, `created_at`, `updated_at`) VALUES
(36, 10, 25, 'اريد اعجابات فيسبوك', 'https://www.youtube.com/embed/EZTLNKYf_d4', 10, 40, 40, 25, '1', '2022-07-28 11:15:53', '2022-07-28 11:19:54'),
(38, 9, 25, 'اريد اعجابات فيسبوك', 'https://www.youtube.com/embed/EZTLNKYf_d4', 5, 80, 80, 25, '0', '2022-07-28 11:15:58', '2022-07-28 11:22:22'),
(39, 8, 25, 'عنوان', 'https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Fanssahmedhamza%2Fposts%2Fpfbid0fj17peCqdWUoK5xWPCtszVjuXF5QHQwiTZVSPQnHsC5QDkXgpGJY7qdzBUEWrkaLl&show_text=true&width=500', 2, 50, 49, 25, '1', '2022-07-28 11:35:29', '2022-07-28 11:35:52'),
(40, 6, 25, 'فيران توريس', 'https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Fbarca.news.arab%2Fposts%2Fpfbid02XVKMQBjZM8LL6mdPu5XzeNvbLit67aQaPssYi8JKGzbwxKcKkLDLndJK6N1v2fL5l', 2, 50, 48, 25, '1', '2022-07-28 11:35:29', '2022-07-28 11:35:52');

-- --------------------------------------------------------

--
-- Table structure for table `site_countries`
--

CREATE TABLE `site_countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_countries`
--

INSERT INTO `site_countries` (`id`, `site_id`, `country_id`, `created_at`, `updated_at`) VALUES
(15, 36, 3, '2022-07-28 11:15:53', '2022-07-28 11:15:53'),
(17, 38, 3, '2022-07-28 11:15:58', '2022-07-28 11:15:58'),
(18, 39, 3, '2022-07-28 11:35:29', '2022-07-28 11:35:29');

-- --------------------------------------------------------

--
-- Table structure for table `site_infos`
--

CREATE TABLE `site_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_infos`
--

INSERT INTO `site_infos` (`id`, `site_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 40, 10, '2022-07-28 14:18:14', '2022-07-28 14:18:14'),
(2, 36, 10, '2022-07-28 14:18:14', '2022-07-28 14:18:14'),
(3, 40, 6, '2022-07-28 14:18:14', '2022-07-28 14:18:14');

-- --------------------------------------------------------

--
-- Table structure for table `site_types`
--

CREATE TABLE `site_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_types`
--

INSERT INTO `site_types` (`id`, `title_ar`, `title_en`, `created_at`, `updated_at`) VALUES
(1, 'اعجابات انستجرام', 'Instagram Likes', '2022-07-27 10:38:29', '2022-07-27 10:38:29'),
(2, 'متابعين تيك توك', 'TikTok Followers', '2022-07-27 10:43:08', '2022-07-27 10:43:08'),
(3, 'اعجابات فيديوز تيك توك', 'TikTok Video Likes\r\n', '2022-07-27 10:43:52', '2022-07-27 10:43:52'),
(4, 'متابعين تويتـر', 'Twitter Followers', '2022-07-27 10:47:29', '2022-07-27 10:47:29'),
(5, 'تغديرات تويتر', 'Twitter Tweets\r\n', '2022-07-27 10:47:56', '2022-07-27 10:47:56'),
(6, 'اعادة تويتر', 'Twitter Retweets\r\n', '2022-07-27 10:47:56', '2022-07-27 10:47:56'),
(8, 'اعجابات تويتر', 'Twitter Likes\r\n', '2022-07-27 10:48:50', '2022-07-27 10:48:50'),
(9, 'اشتراكات يوتيوب', 'YouTube Subscribe\r\n', '2022-07-27 10:47:56', '2022-07-27 10:47:56'),
(10, 'اعجابات يويتوب', 'YouTube Likes\r\n', '2022-07-27 10:49:28', '2022-07-27 10:49:28'),
(11, 'مشاهدات يوتيوب', 'YouTube Views\r\n', '2022-07-27 10:49:57', '2022-07-27 10:49:57'),
(12, 'متابعين تويتش', 'Twitch Followers\r\n', '2022-07-27 10:50:18', '2022-07-27 10:50:18'),
(13, 'زوار موقع', 'Website Hits\r\n', '2022-07-27 10:50:50', '2022-07-27 10:50:50'),
(14, 'حفظ بنترست', 'Pinterest Save\r\n', '2022-07-27 10:51:24', '2022-07-27 10:51:24'),
(15, 'متابعين بنترست', 'Pinterest Followers\r\n', '2022-07-27 10:55:45', '2022-07-27 10:55:45'),
(16, 'متباعين واعجابات لايكي', 'Likee Followers/Fans\r\n', '2022-07-27 10:56:42', '2022-07-27 10:56:42'),
(17, 'اعجابات ساوند كلاود', 'SoundCloud Likes\r\n', '2022-07-27 10:57:48', '2022-07-27 10:57:48'),
(18, 'متباعين ساوند كلاود', 'SoundCloud Follow\r\n', '2022-07-27 10:58:14', '2022-07-27 10:58:14'),
(19, 'مشاهدات ساوند كلاود', 'SoundCloud Plays\r\n', '2022-07-27 11:00:09', '2022-07-27 11:00:09'),
(20, 'مجموعات كونتاكتي', 'kontakte Groups\r\n', '2022-07-27 11:00:41', '2022-07-27 11:00:41'),
(21, 'صفحات كوناكتي', 'kontakte Pages\r\n', '2022-07-27 11:03:09', '2022-07-27 11:03:09'),
(22, 'انضم إلى مجموعة OK.ru', 'OK.ru Group Join', '2022-07-27 11:04:34', '2022-07-27 11:04:34'),
(23, 'فانز الصدى', 'Reverbnation Fans', '2022-07-27 11:05:16', '2022-07-27 11:05:16'),
(24, 'اعجابات ومتابعيين فيسـبوك', 'FB Page Likes/Followers', '2022-07-27 13:19:30', '2022-07-27 13:19:30'),
(25, 'مشاركة فيسبوك', 'Facebook Share', '2022-07-27 13:20:40', '2022-07-27 13:20:40'),
(26, 'متابعين فيسـبوك', 'Facebook Followers', '2022-07-27 13:21:08', '2022-07-27 13:21:08'),
(27, 'اعجاب بوست فيسـبوك', 'Facebook Post Like', '2022-07-27 13:22:26', '2022-07-27 13:22:26'),
(28, 'قنوات تليجرام', 'Telegram Channels', '2022-07-27 13:23:19', '2022-07-27 13:23:19'),
(29, 'تحديثات رديت', 'Reddit Updates', '2022-07-27 13:23:50', '2022-07-27 13:23:50'),
(30, 'اعضاء رديت', 'Reddit Members', '2022-07-27 13:25:06', '2022-07-27 13:25:06');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `desc_ar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_title_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `desc_ar`, `desc_en`, `btn_title_ar`, `btn_title_en`, `btn_link`, `image`, `created_at`, `updated_at`) VALUES
(2, '<p><strong>مكاسب </strong>شبكة ستساعدك على تنمية حضورك الاجتماعي.&nbsp;<br><br>نحن نسمح لك بالبحث واختيار من تريد الإعجاب - اشتراك - متابعة - عرض وتخطي الأشخاص الذين لا تهتم بهم.</p>', '<h2><strong>Makasb </strong>is a network that will help you grow your social presence.</h2><p>We allow you to look and choose who you want to like - subscribe - follow - view and skip those who you are not interested in.</p>', 'تسجيل', 'Register', 'https://github.com/', 'assets/uploads/sliders/7441658328300.png', '2022-07-20 14:40:23', '2022-07-21 11:23:34'),
(3, '<p>تفاصيل عن المقطع</p>', '<p>Details about the section</p>', 'دخول', 'login', 'https://www.youtube.com/', 'assets/uploads/sliders/67071658402805.png', '2022-07-21 11:26:45', '2022-07-21 11:26:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `email`, `password`, `image`, `remember_token`, `points`, `created_at`, `updated_at`) VALUES
(5, 'monuqo', 'gagyfyp@mailinator.com', '$2y$10$5mZDeX2EhfJ/BgNwq85lXexwESzjZYpPK5y24hCONk0b3y/Fp1Um.', NULL, NULL, 200, '2022-07-21 13:43:39', '2022-07-21 13:43:39'),
(6, 'qehocytic', 'tevakuqo@mailinator.com', '$2y$10$C1PLPyJeIY5w9Y26lDeSX.XKPkbyFoEPzWh4OCP43ozYYepuPiy/.', NULL, NULL, 200, '2022-07-21 13:44:55', '2022-07-21 13:44:55'),
(7, 'nolatagir', 'notyfeqy@mailinator.com', '$2y$10$WA0A39GCxMsvm/tOWpIAxeEdyubpQUA5QjwIBdujAzzoE7Avgy7NS', NULL, NULL, 200, '2022-07-21 13:52:35', '2022-07-21 13:52:35'),
(8, 'quwob', 'kiwiz@mailinator.com', '$2y$10$bGNr0xvkWWTIJit21T8n6O1JSOkdTS3L3UWI49Dvc3mIo9IoYKQdy', NULL, NULL, 50, '2022-07-21 13:55:36', '2022-07-21 13:55:36'),
(9, 'laqegereza', 'lezar@mailinator.com', '$2y$10$rR7TUVhxfbWOanU0h9G9puLKGKCUXJ2VsmnFCHnkJtIiSGsm9z336', NULL, NULL, 120, '2022-07-21 13:56:00', '2022-07-21 13:56:00'),
(10, 'Ahmed Yahya', 'ahmedtarekya100@gmail.com', '$2y$10$jlNtPx1Fbn74VS0YHP65iOQ/MFdBiv.hjUyKhVtBUFHFB4MQ1FR8G', NULL, 'F0Mk2URnKH0s95isOkkWdWAXUwYre3qRLqNEtBGI07bo0bnuAQfCvcIFzYcA', 200, '2022-07-21 14:15:39', '2022-07-21 14:15:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `coin_sections`
--
ALTER TABLE `coin_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feature_lists`
--
ALTER TABLE `feature_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sites_user_id_foreign` (`user_id`);

--
-- Indexes for table `site_countries`
--
ALTER TABLE `site_countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `site_foreign` (`site_id`);

--
-- Indexes for table `site_infos`
--
ALTER TABLE `site_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `site_infos_site_id_foreign` (`site_id`),
  ADD KEY `site_infos_user_id_foreign` (`user_id`);

--
-- Indexes for table `site_types`
--
ALTER TABLE `site_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `coin_sections`
--
ALTER TABLE `coin_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feature_lists`
--
ALTER TABLE `feature_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `site_countries`
--
ALTER TABLE `site_countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `site_infos`
--
ALTER TABLE `site_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `site_types`
--
ALTER TABLE `site_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sites`
--
ALTER TABLE `sites`
  ADD CONSTRAINT `sites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `site_countries`
--
ALTER TABLE `site_countries`
  ADD CONSTRAINT `site_foreign` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `site_infos`
--
ALTER TABLE `site_infos`
  ADD CONSTRAINT `site_infos_site_id_foreign` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `site_infos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
