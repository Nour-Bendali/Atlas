CREATE TABLE Countries (
    CountryID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    ISOCode3 CHAR(3) NOT NULL,
    RegionID INT NOT NULL,
    SubregionID INT,
    Capital VARCHAR(100),
    Latitude DECIMAL(10, 6),
    Longitude DECIMAL(10, 6),
    FOREIGN KEY (RegionID) REFERENCES Regions(RegionID),
    FOREIGN KEY (SubregionID) REFERENCES Subregions(SubregionID)
);

INSERT INTO Countries (id, name, iso3, region_id, subregion_id, capital, latitude, longitude) VALUES
(1, 'Afghanistan', 'AFG', 3.0, 14.0, 'Kabul', 33.0, 65.0),
(2, 'Aland Islands', 'ALA', 4.0, 18.0, 'Mariehamn', 60.116667, 19.9),
(3, 'Albania', 'ALB', 4.0, 16.0, 'Tirana', 41.0, 20.0),
(4, 'Algeria', 'DZA', 1.0, 1.0, 'Algiers', 28.0, 3.0),
(5, 'American Samoa', 'ASM', 5.0, 22.0, 'Pago Pago', -14.33333333, -170.0),
(6, 'Andorra', 'AND', 4.0, 16.0, 'Andorra la Vella', 42.5, 1.5),
(7, 'Angola', 'AGO', 1.0, 2.0, 'Luanda', -12.5, 18.5),
(8, 'Anguilla', 'AIA', 2.0, 7.0, 'The Valley', 18.25, -63.16666666),
(9, 'Antarctica', 'ATA', 6.0, nan, nan, -74.65, 4.48),
(10, 'Antigua and Barbuda', 'ATG', 2.0, 7.0, 'St. John's', 17.05, -61.8),
(11, 'Argentina', 'ARG', 2.0, 8.0, 'Buenos Aires', -34.0, -64.0),
(12, 'Armenia', 'ARM', 3.0, 11.0, 'Yerevan', 40.0, 45.0),
(13, 'Aruba', 'ABW', 2.0, 7.0, 'Oranjestad', 12.5, -69.96666666),
(14, 'Australia', 'AUS', 5.0, 19.0, 'Canberra', -27.0, 133.0),
(15, 'Austria', 'AUT', 4.0, 17.0, 'Vienna', 47.33333333, 13.33333333),
(16, 'Azerbaijan', 'AZE', 3.0, 11.0, 'Baku', 40.5, 47.5),
(18, 'Bahrain', 'BHR', 3.0, 11.0, 'Manama', 26.0, 50.55),
(19, 'Bangladesh', 'BGD', 3.0, 14.0, 'Dhaka', 24.0, 90.0),
(20, 'Barbados', 'BRB', 2.0, 7.0, 'Bridgetown', 13.16666666, -59.53333333),
(21, 'Belarus', 'BLR', 4.0, 15.0, 'Minsk', 53.0, 28.0),
(22, 'Belgium', 'BEL', 4.0, 17.0, 'Brussels', 50.83333333, 4.0),
(23, 'Belize', 'BLZ', 2.0, 9.0, 'Belmopan', 17.25, -88.75),
(24, 'Benin', 'BEN', 1.0, 3.0, 'Porto-Novo', 9.5, 2.25),
(25, 'Bermuda', 'BMU', 2.0, 6.0, 'Hamilton', 32.33333333, -64.75),
(26, 'Bhutan', 'BTN', 3.0, 14.0, 'Thimphu', 27.5, 90.5),
(27, 'Bolivia', 'BOL', 2.0, 8.0, 'Sucre', -17.0, -65.0),
(155, 'Bonaire, Sint Eustatius and Saba', 'BES', 2.0, 7.0, 'Kralendijk', 12.15, -68.266667),
(28, 'Bosnia and Herzegovina', 'BIH', 4.0, 16.0, 'Sarajevo', 44.0, 18.0),
(29, 'Botswana', 'BWA', 1.0, 5.0, 'Gaborone', -22.0, 24.0),
(30, 'Bouvet Island', 'BVT', nan, nan, nan, -54.43333333, 3.4),
(31, 'Brazil', 'BRA', 2.0, 8.0, 'Brasilia', -10.0, -55.0),
(32, 'British Indian Ocean Territory', 'IOT', 1.0, 4.0, 'Diego Garcia', -6.0, 71.5),
(33, 'Brunei', 'BRN', 3.0, 13.0, 'Bandar Seri Begawan', 4.5, 114.66666666),
(34, 'Bulgaria', 'BGR', 4.0, 15.0, 'Sofia', 43.0, 25.0),
(35, 'Burkina Faso', 'BFA', 1.0, 3.0, 'Ouagadougou', 13.0, -2.0),
(36, 'Burundi', 'BDI', 1.0, 4.0, 'Bujumbura', -3.5, 30.0),
(37, 'Cambodia', 'KHM', 3.0, 13.0, 'Phnom Penh', 13.0, 105.0),
(38, 'Cameroon', 'CMR', 1.0, 2.0, 'Yaounde', 6.0, 12.0),
(39, 'Canada', 'CAN', 2.0, 6.0, 'Ottawa', 60.0, -95.0),
(40, 'Cape Verde', 'CPV', 1.0, 3.0, 'Praia', 16.0, -24.0),
(41, 'Cayman Islands', 'CYM', 2.0, 7.0, 'George Town', 19.5, -80.5),
(42, 'Central African Republic', 'CAF', 1.0, 2.0, 'Bangui', 7.0, 21.0),
(43, 'Chad', 'TCD', 1.0, 2.0, 'N'Djamena', 15.0, 19.0),
(44, 'Chile', 'CHL', 2.0, 8.0, 'Santiago', -30.0, -71.0),
(45, 'China', 'CHN', 3.0, 12.0, 'Beijing', 35.0, 105.0),
(46, 'Christmas Island', 'CXR', 5.0, 19.0, 'Flying Fish Cove', -10.5, 105.66666666),
(47, 'Cocos (Keeling) Islands', 'CCK', 5.0, 19.0, 'West Island', -12.5, 96.83333333),
(48, 'Colombia', 'COL', 2.0, 8.0, 'Bogotá', 4.0, -72.0),
(49, 'Comoros', 'COM', 1.0, 4.0, 'Moroni', -12.16666666, 44.25),
(50, 'Congo', 'COG', 1.0, 2.0, 'Brazzaville', -1.0, 15.0),
(52, 'Cook Islands', 'COK', 5.0, 22.0, 'Avarua', -21.23333333, -159.76666666),
(53, 'Costa Rica', 'CRI', 2.0, 9.0, 'San Jose', 10.0, -84.0),
(54, 'Cote D'Ivoire (Ivory Coast)', 'CIV', 1.0, 3.0, 'Yamoussoukro', 8.0, -5.0),
(55, 'Croatia', 'HRV', 4.0, 16.0, 'Zagreb', 45.16666666, 15.5),
(56, 'Cuba', 'CUB', 2.0, 7.0, 'Havana', 21.5, -80.0),
(249, 'Curaçao', 'CUW', 2.0, 7.0, 'Willemstad', 12.116667, -68.933333),
(57, 'Cyprus', 'CYP', 4.0, 16.0, 'Nicosia', 35.0, 33.0),
(58, 'Czech Republic', 'CZE', 4.0, 15.0, 'Prague', 49.75, 15.5),
(51, 'Democratic Republic of the Congo', 'COD', 1.0, 2.0, 'Kinshasa', 0.0, 25.0),
(59, 'Denmark', 'DNK', 4.0, 18.0, 'Copenhagen', 56.0, 10.0),
(60, 'Djibouti', 'DJI', 1.0, 4.0, 'Djibouti', 11.5, 43.0),
(61, 'Dominica', 'DMA', 2.0, 7.0, 'Roseau', 15.41666666, -61.33333333),
(62, 'Dominican Republic', 'DOM', 2.0, 7.0, 'Santo Domingo', 19.0, -70.66666666),
(64, 'Ecuador', 'ECU', 2.0, 8.0, 'Quito', -2.0, -77.5),
(65, 'Egypt', 'EGY', 1.0, 1.0, 'Cairo', 27.0, 30.0),
(66, 'El Salvador', 'SLV', 2.0, 9.0, 'San Salvador', 13.83333333, -88.91666666),
(67, 'Equatorial Guinea', 'GNQ', 1.0, 2.0, 'Malabo', 2.0, 10.0),
(68, 'Eritrea', 'ERI', 1.0, 4.0, 'Asmara', 15.0, 39.0),
(69, 'Estonia', 'EST', 4.0, 18.0, 'Tallinn', 59.0, 26.0),
(212, 'Eswatini', 'SWZ', 1.0, 5.0, 'Mbabane', -26.5, 31.5),
(70, 'Ethiopia', 'ETH', 1.0, 4.0, 'Addis Ababa', 8.0, 38.0),
(71, 'Falkland Islands', 'FLK', 2.0, 8.0, 'Stanley', -51.75, -59.0),
(72, 'Faroe Islands', 'FRO', 4.0, 18.0, 'Torshavn', 62.0, -7.0),
(73, 'Fiji Islands', 'FJI', 5.0, 20.0, 'Suva', -18.0, 175.0),
(74, 'Finland', 'FIN', 4.0, 18.0, 'Helsinki', 64.0, 26.0),
(75, 'France', 'FRA', 4.0, 17.0, 'Paris', 46.0, 2.0),
(76, 'French Guiana', 'GUF', 2.0, 8.0, 'Cayenne', 4.0, -53.0),
(77, 'French Polynesia', 'PYF', 5.0, 22.0, 'Papeete', -15.0, -140.0),
(78, 'French Southern Territories', 'ATF', 1.0, 5.0, 'Port-aux-Francais', -49.25, 69.167),
(79, 'Gabon', 'GAB', 1.0, 2.0, 'Libreville', -1.0, 11.75),
(81, 'Georgia', 'GEO', 3.0, 11.0, 'Tbilisi', 42.0, 43.5),
(82, 'Germany', 'DEU', 4.0, 17.0, 'Berlin', 51.0, 9.0),
(83, 'Ghana', 'GHA', 1.0, 3.0, 'Accra', 8.0, -2.0),
(84, 'Gibraltar', 'GIB', 4.0, 16.0, 'Gibraltar', 36.13333333, -5.35),
(85, 'Greece', 'GRC', 4.0, 16.0, 'Athens', 39.0, 22.0),
(86, 'Greenland', 'GRL', 2.0, 6.0, 'Nuuk', 72.0, -40.0),
(87, 'Grenada', 'GRD', 2.0, 7.0, 'St. George's', 12.11666666, -61.66666666),
(88, 'Guadeloupe', 'GLP', 2.0, 7.0, 'Basse-Terre', 16.25, -61.583333),
(89, 'Guam', 'GUM', 5.0, 21.0, 'Hagatna', 13.46666666, 144.78333333),
(90, 'Guatemala', 'GTM', 2.0, 9.0, 'Guatemala City', 15.5, -90.25),
(91, 'Guernsey and Alderney', 'GGY', 4.0, 18.0, 'St Peter Port', 49.46666666, -2.58333333),
(92, 'Guinea', 'GIN', 1.0, 3.0, 'Conakry', 11.0, -10.0),
(93, 'Guinea-Bissau', 'GNB', 1.0, 3.0, 'Bissau', 12.0, -15.0),
(94, 'Guyana', 'GUY', 2.0, 8.0, 'Georgetown', 5.0, -59.0),
(95, 'Haiti', 'HTI', 2.0, 7.0, 'Port-au-Prince', 19.0, -72.41666666),
(96, 'Heard Island and McDonald Islands', 'HMD', nan, nan, nan, -53.1, 72.51666666),
(97, 'Honduras', 'HND', 2.0, 9.0, 'Tegucigalpa', 15.0, -86.5),
(98, 'Hong Kong S.A.R.', 'HKG', 3.0, 12.0, 'Hong Kong', 22.25, 114.16666666),
(99, 'Hungary', 'HUN', 4.0, 15.0, 'Budapest', 47.0, 20.0),
(100, 'Iceland', 'ISL', 4.0, 18.0, 'Reykjavik', 65.0, -18.0),
(101, 'India', 'IND', 3.0, 14.0, 'New Delhi', 20.0, 77.0),
(102, 'Indonesia', 'IDN', 3.0, 13.0, 'Jakarta', -5.0, 120.0),
(103, 'Iran', 'IRN', 3.0, 14.0, 'Tehran', 32.0, 53.0),
(104, 'Iraq', 'IRQ', 3.0, 11.0, 'Baghdad', 33.0, 44.0),
(105, 'Ireland', 'IRL', 4.0, 18.0, 'Dublin', 53.0, -8.0),
(106, 'Israel', 'ISR', 3.0, 11.0, 'Jerusalem', 31.5, 34.75),
(107, 'Italy', 'ITA', 4.0, 16.0, 'Rome', 42.83333333, 12.83333333),
(108, 'Jamaica', 'JAM', 2.0, 7.0, 'Kingston', 18.25, -77.5),
(109, 'Japan', 'JPN', 3.0, 12.0, 'Tokyo', 36.0, 138.0),
(110, 'Jersey', 'JEY', 4.0, 18.0, 'Saint Helier', 49.25, -2.16666666),
(111, 'Jordan', 'JOR', 3.0, 11.0, 'Amman', 31.0, 36.0),
(112, 'Kazakhstan', 'KAZ', 3.0, 10.0, 'Astana', 48.0, 68.0),
(113, 'Kenya', 'KEN', 1.0, 4.0, 'Nairobi', 1.0, 38.0),
(114, 'Kiribati', 'KIR', 5.0, 21.0, 'Tarawa', 1.41666666, 173.0),
(248, 'Kosovo', 'XKX', 4.0, 15.0, 'Pristina', 42.5612909, 20.3403035),
(117, 'Kuwait', 'KWT', 3.0, 11.0, 'Kuwait City', 29.5, 45.75),
(118, 'Kyrgyzstan', 'KGZ', 3.0, 10.0, 'Bishkek', 41.0, 75.0),
(119, 'Laos', 'LAO', 3.0, 13.0, 'Vientiane', 18.0, 105.0),
(120, 'Latvia', 'LVA', 4.0, 18.0, 'Riga', 57.0, 25.0),
(121, 'Lebanon', 'LBN', 3.0, 11.0, 'Beirut', 33.83333333, 35.83333333),
(122, 'Lesotho', 'LSO', 1.0, 5.0, 'Maseru', -29.5, 28.5),
(123, 'Liberia', 'LBR', 1.0, 3.0, 'Monrovia', 6.5, -9.5),
(124, 'Libya', 'LBY', 1.0, 1.0, 'Tripolis', 25.0, 17.0),
(125, 'Liechtenstein', 'LIE', 4.0, 17.0, 'Vaduz', 47.26666666, 9.53333333),
(126, 'Lithuania', 'LTU', 4.0, 18.0, 'Vilnius', 56.0, 24.0),
(127, 'Luxembourg', 'LUX', 4.0, 17.0, 'Luxembourg', 49.75, 6.16666666),
(128, 'Macau S.A.R.', 'MAC', 3.0, 12.0, 'Macao', 22.16666666, 113.55),
(130, 'Madagascar', 'MDG', 1.0, 4.0, 'Antananarivo', -20.0, 47.0),
(131, 'Malawi', 'MWI', 1.0, 4.0, 'Lilongwe', -13.5, 34.0),
(132, 'Malaysia', 'MYS', 3.0, 13.0, 'Kuala Lumpur', 2.5, 112.5),
(133, 'Maldives', 'MDV', 3.0, 14.0, 'Male', 3.25, 73.0),
(134, 'Mali', 'MLI', 1.0, 3.0, 'Bamako', 17.0, -4.0),
(135, 'Malta', 'MLT', 4.0, 16.0, 'Valletta', 35.83333333, 14.58333333),
(136, 'Man (Isle of)', 'IMN', 4.0, 18.0, 'Douglas, Isle of Man', 54.25, -4.5),
(137, 'Marshall Islands', 'MHL', 5.0, 21.0, 'Majuro', 9.0, 168.0),
(138, 'Martinique', 'MTQ', 2.0, 7.0, 'Fort-de-France', 14.666667, -61.0),
(139, 'Mauritania', 'MRT', 1.0, 3.0, 'Nouakchott', 20.0, -12.0),
(140, 'Mauritius', 'MUS', 1.0, 4.0, 'Port Louis', -20.28333333, 57.55),
(141, 'Mayotte', 'MYT', 1.0, 4.0, 'Mamoudzou', -12.83333333, 45.16666666),
(142, 'Mexico', 'MEX', 2.0, 9.0, 'Ciudad de México', 23.0, -102.0),
(143, 'Micronesia', 'FSM', 5.0, 21.0, 'Palikir', 6.91666666, 158.25),
(144, 'Moldova', 'MDA', 4.0, 15.0, 'Chisinau', 47.0, 29.0),
(145, 'Monaco', 'MCO', 4.0, 17.0, 'Monaco', 43.73333333, 7.4),
(146, 'Mongolia', 'MNG', 3.0, 12.0, 'Ulan Bator', 46.0, 105.0),
(147, 'Montenegro', 'MNE', 4.0, 16.0, 'Podgorica', 42.5, 19.3),
(148, 'Montserrat', 'MSR', 2.0, 7.0, 'Plymouth', 16.75, -62.2),
(149, 'Morocco', 'MAR', 1.0, 1.0, 'Rabat', 32.0, -5.0),
(150, 'Mozambique', 'MOZ', 1.0, 4.0, 'Maputo', -18.25, 35.0),
(151, 'Myanmar', 'MMR', 3.0, 13.0, 'Nay Pyi Taw', 22.0, 98.0),
(152, 'Namibia', 'NAM', 1.0, 5.0, 'Windhoek', -22.0, 17.0),
(153, 'Nauru', 'NRU', 5.0, 21.0, 'Yaren', -0.53333333, 166.91666666),
(154, 'Nepal', 'NPL', 3.0, 14.0, 'Kathmandu', 28.0, 84.0),
(156, 'Netherlands', 'NLD', 4.0, 17.0, 'Amsterdam', 52.5, 5.75),
(157, 'New Caledonia', 'NCL', 5.0, 20.0, 'Noumea', -21.5, 165.5),
(158, 'New Zealand', 'NZL', 5.0, 19.0, 'Wellington', -41.0, 174.0),
(159, 'Nicaragua', 'NIC', 2.0, 9.0, 'Managua', 13.0, -85.0),
(160, 'Niger', 'NER', 1.0, 3.0, 'Niamey', 16.0, 8.0),
(161, 'Nigeria', 'NGA', 1.0, 3.0, 'Abuja', 10.0, 8.0),
(162, 'Niue', 'NIU', 5.0, 22.0, 'Alofi', -19.03333333, -169.86666666),
(163, 'Norfolk Island', 'NFK', 5.0, 19.0, 'Kingston', -29.03333333, 167.95),
(115, 'North Korea', 'PRK', 3.0, 12.0, 'Pyongyang', 40.0, 127.0),
(129, 'North Macedonia', 'MKD', 4.0, 16.0, 'Skopje', 41.83333333, 22.0),
(164, 'Northern Mariana Islands', 'MNP', 5.0, 21.0, 'Saipan', 15.2, 145.75),
(165, 'Norway', 'NOR', 4.0, 18.0, 'Oslo', 62.0, 10.0),
(166, 'Oman', 'OMN', 3.0, 11.0, 'Muscat', 21.0, 57.0),
(167, 'Pakistan', 'PAK', 3.0, 14.0, 'Islamabad', 30.0, 70.0),
(168, 'Palau', 'PLW', 5.0, 21.0, 'Melekeok', 7.5, 134.5),
(169, 'Palestinian Territory Occupied', 'PSE', 3.0, 11.0, 'East Jerusalem', 31.9, 35.2),
(170, 'Panama', 'PAN', 2.0, 9.0, 'Panama City', 9.0, -80.0),
(171, 'Papua New Guinea', 'PNG', 5.0, 20.0, 'Port Moresby', -6.0, 147.0),
(172, 'Paraguay', 'PRY', 2.0, 8.0, 'Asuncion', -23.0, -58.0),
(173, 'Peru', 'PER', 2.0, 8.0, 'Lima', -10.0, -76.0),
(174, 'Philippines', 'PHL', 3.0, 13.0, 'Manila', 13.0, 122.0),
(175, 'Pitcairn Island', 'PCN', 5.0, 22.0, 'Adamstown', -25.06666666, -130.1),
(176, 'Poland', 'POL', 4.0, 15.0, 'Warsaw', 52.0, 20.0),
(177, 'Portugal', 'PRT', 4.0, 16.0, 'Lisbon', 39.5, -8.0),
(178, 'Puerto Rico', 'PRI', 2.0, 7.0, 'San Juan', 18.25, -66.5),
(179, 'Qatar', 'QAT', 3.0, 11.0, 'Doha', 25.5, 51.25),
(180, 'Reunion', 'REU', 1.0, 4.0, 'Saint-Denis', -21.15, 55.5),
(181, 'Romania', 'ROU', 4.0, 15.0, 'Bucharest', 46.0, 25.0),
(182, 'Russia', 'RUS', 4.0, 15.0, 'Moscow', 60.0, 100.0),
(183, 'Rwanda', 'RWA', 1.0, 4.0, 'Kigali', -2.0, 30.0),
(184, 'Saint Helena', 'SHN', 1.0, 3.0, 'Jamestown', -15.95, -5.7),
(185, 'Saint Kitts and Nevis', 'KNA', 2.0, 7.0, 'Basseterre', 17.33333333, -62.75),
(186, 'Saint Lucia', 'LCA', 2.0, 7.0, 'Castries', 13.88333333, -60.96666666),
(187, 'Saint Pierre and Miquelon', 'SPM', 2.0, 6.0, 'Saint-Pierre', 46.83333333, -56.33333333),
(188, 'Saint Vincent and the Grenadines', 'VCT', 2.0, 7.0, 'Kingstown', 13.25, -61.2),
(189, 'Saint-Barthelemy', 'BLM', 2.0, 7.0, 'Gustavia', 18.5, -63.41666666),
(190, 'Saint-Martin (French part)', 'MAF', 2.0, 7.0, 'Marigot', 18.08333333, -63.95),
(191, 'Samoa', 'WSM', 5.0, 22.0, 'Apia', -13.58333333, -172.33333333),
(192, 'San Marino', 'SMR', 4.0, 16.0, 'San Marino', 43.76666666, 12.41666666),
(193, 'Sao Tome and Principe', 'STP', 1.0, 2.0, 'Sao Tome', 1.0, 7.0),
(194, 'Saudi Arabia', 'SAU', 3.0, 11.0, 'Riyadh', 25.0, 45.0),
(195, 'Senegal', 'SEN', 1.0, 3.0, 'Dakar', 14.0, -14.0),
(196, 'Serbia', 'SRB', 4.0, 16.0, 'Belgrade', 44.0, 21.0),
(197, 'Seychelles', 'SYC', 1.0, 4.0, 'Victoria', -4.58333333, 55.66666666),
(198, 'Sierra Leone', 'SLE', 1.0, 3.0, 'Freetown', 8.5, -11.5),
(199, 'Singapore', 'SGP', 3.0, 13.0, 'Singapur', 1.36666666, 103.8),
(250, 'Sint Maarten (Dutch part)', 'SXM', 2.0, 7.0, 'Philipsburg', 18.033333, -63.05),
(200, 'Slovakia', 'SVK', 4.0, 15.0, 'Bratislava', 48.66666666, 19.5),
(201, 'Slovenia', 'SVN', 4.0, 16.0, 'Ljubljana', 46.11666666, 14.81666666),
(202, 'Solomon Islands', 'SLB', 5.0, 20.0, 'Honiara', -8.0, 159.0),
(203, 'Somalia', 'SOM', 1.0, 4.0, 'Mogadishu', 10.0, 49.0),
(204, 'South Africa', 'ZAF', 1.0, 5.0, 'Pretoria', -29.0, 24.0),
(205, 'South Georgia', 'SGS', 2.0, 8.0, 'Grytviken', -54.5, -37.0),
(116, 'South Korea', 'KOR', 3.0, 12.0, 'Seoul', 37.0, 127.5),
(206, 'South Sudan', 'SSD', 1.0, 2.0, 'Juba', 7.0, 30.0),
(207, 'Spain', 'ESP', 4.0, 16.0, 'Madrid', 40.0, -4.0),
(208, 'Sri Lanka', 'LKA', 3.0, 14.0, 'Colombo', 7.0, 81.0),
(209, 'Sudan', 'SDN', 1.0, 1.0, 'Khartoum', 15.0, 30.0),
(210, 'Suriname', 'SUR', 2.0, 8.0, 'Paramaribo', 4.0, -56.0),
(211, 'Svalbard and Jan Mayen Islands', 'SJM', 4.0, 18.0, 'Longyearbyen', 78.0, 20.0),
(213, 'Sweden', 'SWE', 4.0, 18.0, 'Stockholm', 62.0, 15.0),
(214, 'Switzerland', 'CHE', 4.0, 17.0, 'Bern', 47.0, 8.0),
(215, 'Syria', 'SYR', 3.0, 11.0, 'Damascus', 35.0, 38.0),
(216, 'Taiwan', 'TWN', 3.0, 12.0, 'Taipei', 23.5, 121.0),
(217, 'Tajikistan', 'TJK', 3.0, 10.0, 'Dushanbe', 39.0, 71.0),
(218, 'Tanzania', 'TZA', 1.0, 4.0, 'Dodoma', -6.0, 35.0),
(219, 'Thailand', 'THA', 3.0, 13.0, 'Bangkok', 15.0, 100.0),
(17, 'The Bahamas', 'BHS', 2.0, 7.0, 'Nassau', 24.25, -76.0),
(80, 'The Gambia ', 'GMB', 1.0, 3.0, 'Banjul', 13.46666666, -16.56666666),
(63, 'Timor-Leste', 'TLS', 3.0, 13.0, 'Dili', -8.83333333, 125.91666666),
(220, 'Togo', 'TGO', 1.0, 3.0, 'Lome', 8.0, 1.16666666),
(221, 'Tokelau', 'TKL', 5.0, 22.0, nan, -9.0, -172.0),
(222, 'Tonga', 'TON', 5.0, 22.0, 'Nuku'alofa', -20.0, -175.0),
(223, 'Trinidad and Tobago', 'TTO', 2.0, 7.0, 'Port of Spain', 11.0, -61.0),
(224, 'Tunisia', 'TUN', 1.0, 1.0, 'Tunis', 34.0, 9.0),
(225, 'Turkey', 'TUR', 3.0, 11.0, 'Ankara', 39.0, 35.0),
(226, 'Turkmenistan', 'TKM', 3.0, 10.0, 'Ashgabat', 40.0, 60.0),
(227, 'Turks and Caicos Islands', 'TCA', 2.0, 7.0, 'Cockburn Town', 21.75, -71.58333333),
(228, 'Tuvalu', 'TUV', 5.0, 22.0, 'Funafuti', -8.0, 178.0),
(229, 'Uganda', 'UGA', 1.0, 4.0, 'Kampala', 1.0, 32.0),
(230, 'Ukraine', 'UKR', 4.0, 15.0, 'Kyiv', 49.0, 32.0),
(231, 'United Arab Emirates', 'ARE', 3.0, 11.0, 'Abu Dhabi', 24.0, 54.0),
(232, 'United Kingdom', 'GBR', 4.0, 18.0, 'London', 54.0, -2.0),
(233, 'United States', 'USA', 2.0, 6.0, 'Washington', 38.0, -97.0),
(234, 'United States Minor Outlying Islands', 'UMI', 2.0, 6.0, nan, 0.0, 0.0),
(235, 'Uruguay', 'URY', 2.0, 8.0, 'Montevideo', -33.0, -56.0),
(236, 'Uzbekistan', 'UZB', 3.0, 10.0, 'Tashkent', 41.0, 64.0),
(237, 'Vanuatu', 'VUT', 5.0, 20.0, 'Port Vila', -16.0, 167.0),
(238, 'Vatican City State (Holy See)', 'VAT', 4.0, 16.0, 'Vatican City', 41.9, 12.45),
(239, 'Venezuela', 'VEN', 2.0, 8.0, 'Caracas', 8.0, -66.0),
(240, 'Vietnam', 'VNM', 3.0, 13.0, 'Hanoi', 16.16666666, 107.83333333),
(241, 'Virgin Islands (British)', 'VGB', 2.0, 7.0, 'Road Town', 18.431383, -64.62305),
(242, 'Virgin Islands (US)', 'VIR', 2.0, 7.0, 'Charlotte Amalie', 18.34, -64.93),
(243, 'Wallis and Futuna Islands', 'WLF', 5.0, 22.0, 'Mata Utu', -13.3, -176.2),
(244, 'Western Sahara', 'ESH', 1.0, 1.0, 'El-Aaiun', 24.5, -13.0),
(245, 'Yemen', 'YEM', 3.0, 11.0, 'Sanaa', 15.0, 48.0),
(246, 'Zambia', 'ZMB', 1.0, 5.0, 'Lusaka', -15.0, 30.0),
(247, 'Zimbabwe', 'ZWE', 1.0, 4.0, 'Harare', -20.0, 30.0);