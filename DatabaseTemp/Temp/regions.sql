CREATE TABLE Regions (
    RegionID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    WikiDataID VARCHAR(20)
);

INSERT INTO Regions (id, name, wikiDataId) VALUES
(1, 'Africa', 'Q15'),
(2, 'Americas', 'Q828'),
(3, 'Asia', 'Q48'),
(4, 'Europe', 'Q46'),
(5, 'Oceania', 'Q55643'),
(6, 'Polar', 'Q51');