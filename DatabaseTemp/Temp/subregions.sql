CREATE TABLE Subregions (
    SubregionID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    RegionID INT NOT NULL,
    WikiDataID VARCHAR(20),
    FOREIGN KEY (RegionID) REFERENCES Regions(RegionID)
);

INSERT INTO Subregions (id, name, region_id, wikiDataId) VALUES
(19, 'Australia and New Zealand', 5, 'Q45256'),
(7, 'Caribbean', 2, 'Q664609'),
(9, 'Central America', 2, 'Q27611'),
(10, 'Central Asia', 3, 'Q27275'),
(4, 'Eastern Africa', 1, 'Q27407'),
(12, 'Eastern Asia', 3, 'Q27231'),
(15, 'Eastern Europe', 4, 'Q27468'),
(20, 'Melanesia', 5, 'Q37394'),
(21, 'Micronesia', 5, 'Q3359409'),
(2, 'Middle Africa', 1, 'Q27433'),
(1, 'Northern Africa', 1, 'Q27381'),
(6, 'Northern America', 2, 'Q2017699'),
(18, 'Northern Europe', 4, 'Q27479'),
(22, 'Polynesia', 5, 'Q35942'),
(8, 'South America', 2, 'Q18'),
(13, 'South-Eastern Asia', 3, 'Q11708'),
(5, 'Southern Africa', 1, 'Q27394'),
(14, 'Southern Asia', 3, 'Q771405'),
(16, 'Southern Europe', 4, 'Q27449'),
(3, 'Western Africa', 1, 'Q4412'),
(11, 'Western Asia', 3, 'Q27293'),
(17, 'Western Europe', 4, 'Q27496');