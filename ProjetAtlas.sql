-- Table Pays
CREATE TABLE Pays (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    code_iso VARCHAR(3) UNIQUE NOT NULL,
    population BIGINT,
    pib FLOAT,
    bloc_region VARCHAR(50)
);

-- Table Relations
CREATE TABLE Relations (
    id_relation SERIAL PRIMARY KEY,
    pays1_id INT REFERENCES Pays(id) ON DELETE CASCADE,
    pays2_id INT REFERENCES Pays(id) ON DELETE CASCADE,
    type_relation VARCHAR(50) NOT NULL,
    intensite INT CHECK (intensite BETWEEN -100 AND 100),
    description TEXT,
    derniere_maj DATE NOT NULL DEFAULT CURRENT_DATE
);