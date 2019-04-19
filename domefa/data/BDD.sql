DROP TABLE IF EXISTS `Ordonnance`;

DROP TABLE IF EXISTS `Medicament`;

DROP TABLE IF EXISTS `VaccinAdministre`;

DROP TABLE IF EXISTS `Vaccin`;

DROP TABLE IF EXISTS `CompteRendu`;

DROP TABLE IF EXISTS `Poids`;

DROP TABLE IF EXISTS `Taille`;

DROP TABLE IF EXISTS `Adresse`;

DROP TABLE IF EXISTS `Ville`;

DROP TABLE IF EXISTS `Departement`;

DROP TABLE IF EXISTS `Region`;

DROP TABLE IF EXISTS `Pharmacien`;

DROP TABLE IF EXISTS `Patient`;

DROP TABLE IF EXISTS `Medecin`;


-- Create tables without foreign key

CREATE TABLE Vaccin(
        IdVaccin           Int  Auto_increment  NOT NULL ,
        Nom                Varchar (50) NOT NULL ,
        DureeAvantRappel   Int NOT NULL,
        Description        Text ,
        PRIMARY KEY (IdVaccin)
);

CREATE TABLE Region(
        IdRegion           Int  Auto_increment  NOT NULL ,
        Nom                Varchar (50) NOT NULL ,
        PRIMARY KEY (IdRegion)
);

CREATE TABLE Pharmacien(
        IdPharmacien       Int  Auto_increment  NOT NULL ,
        RPPS               Int NOT NULL ,
        Nom                Varchar (50) NOT NULL ,
        Prenom             Varchar (50) NOT NULL ,
        AdresseMail        Varchar (50) NOT NULL ,
        MotDePasse         Varchar (50) NOT NULL ,
        Telephone          Int NOT NULL,
        PRIMARY KEY (IdPharmacien)
);

CREATE TABLE Medecin(
        IdMedecin          Int  Auto_increment  NOT NULL ,
        Nom                Varchar (50) NOT NULL ,
        Prenom             Varchar (50) NOT NULL ,
        AdresseMail        Varchar (50) NOT NULL ,
        MotDePasse         Varchar (50) NOT NULL ,
        Telephone          Int NOT NULL,
        RPPS               Int NOT NULL,
        Specialisation     Varchar (100) NOT NULL,
        Signature          Blob NOT NULL ,
        PRIMARY KEY (IdMedecin)
);

CREATE TABLE Medicament(
        IdMedicament       Int  Auto_increment  NOT NULL ,
        Nom                Varchar (50) NOT NULL ,
        GrammageVolume     Int ,
        Unite              Varchar (50) ,
        Description        Text,
        PrincipeActif      Varchar (100) NOT NULL,
        Excipient          Text ,
        Laboratoire        Varchar (50) ,
        PRIMARY KEY (IdMedicament)
);

-- Create tables with foreign key

CREATE TABLE Departement(
        IdDepartement      Int  Auto_increment  NOT NULL ,
        Nom                Varchar (50) NOT NULL ,
        Numero             Int NOT NULL ,
        IdRegion           Int NOT NULL ,
        PRIMARY KEY (IdDepartement) ,
        FOREIGN KEY (IdRegion) REFERENCES Region(IdRegion)
);

CREATE TABLE Ville(
        IdVille            Int  Auto_increment  NOT NULL ,
        Nom                Varchar (50) NOT NULL ,
        CodePostal         Int NOT NULL ,
        IdDepartement      Int NOT NULL ,
        PRIMARY KEY (IdVille) ,
        FOREIGN KEY (IdDepartement) REFERENCES Departement(IdDepartement)
);

CREATE TABLE Patient(
        IdPatient          Int  Auto_increment  NOT NULL ,
        Nom                Varchar (50) NOT NULL ,
        Prenom             Varchar (50) NOT NULL ,
        AdresseMail        Varchar (50) NOT NULL ,
        MotDePasse         Varchar (50) NOT NULL ,
        Telephone          Int NOT NULL ,
        NumeroCarteVitale  Int NOT NULL ,
        DateNaissance      Date NOT NULL ,
        GroupeSanguin      Varchar(3) NOT NULL ,
        CarteMutuelle      Blob ,
        Sexe               tinyint (1) NOT NULL , 
        IdMedecin      Int NOT NULL ,
        PRIMARY KEY (IdPatient) ,
        FOREIGN KEY (IdMedecin) REFERENCES Medecin(IdMedecin)
);

CREATE TABLE Adresse(
        IdAdresse          Int  Auto_increment  NOT NULL ,
        NumeroAppartement  Int ,
        NumeroResidence    Int NOT NULL ,
        Rue                Varchar (100) NOT NULL ,
        IdPatient          Int ,
        IdMedecin          Int ,
        IdPharmacien       Int ,
        IdVille            Int NOT NULL,
        PRIMARY KEY (IdAdresse) ,
        FOREIGN KEY (IdPatient) REFERENCES Patient(IdPatient) ,
        FOREIGN KEY (IdMedecin) REFERENCES Medecin(IdMedecin) ,
        FOREIGN KEY (IdPharmacien) REFERENCES Pharmacien(IdPharmacien) ,
        FOREIGN KEY (IdVille) REFERENCES Ville(IdVille)
);

CREATE TABLE VaccinAdministre(
        IdVaccinAdministre Int  Auto_increment  NOT NULL ,
        DateAdministration Date NOT NULL,
        IdPatient          Int NOT NULL,
        IdVaccin           Int NOT NULL,
        PRIMARY KEY (IdVaccinAdministre) ,
        FOREIGN KEY (IdPatient) REFERENCES Patient(IdPatient) ,
        FOREIGN KEY (IdVaccin) REFERENCES Vaccin(IdVaccin)
);

CREATE TABLE Poids(
        IdPoids            Int  Auto_increment  NOT NULL ,
        PoidsEnG           Int NOT NULL ,
        DatePesee          Date NOT NULL ,
        IdPatient          Int NOT NULL ,
        PRIMARY KEY (IdPoids) ,
        FOREIGN KEY (IdPatient) REFERENCES Patient(IdPatient)
);

CREATE TABLE Taille(
        IdTaille           Int  Auto_increment  NOT NULL ,
        TailleEnCm         Int NOT NULL ,
        DateTaille         Date NOT NULL ,
        IdPatient          Int NOT NULL ,
        PRIMARY KEY (IdTaille) ,
        FOREIGN KEY (IdPatient) REFERENCES Patient(IdPatient)
);

CREATE TABLE CompteRendu(
        IdCompteRendu      Int  Auto_increment  NOT NULL ,
        DateCompteRendu    Date NOT NULL ,
        Description        Text NOT NULL ,
        DocumentAnnexe     blob ,        
        IdPatient          Int NOT NULL ,
        IdMedecin          Int NOT NULL ,
        PRIMARY KEY (IdCompteRendu) ,
        FOREIGN KEY (IdPatient) REFERENCES Patient(IdPatient) ,
        FOREIGN KEY (IdMedecin) REFERENCES Medecin(IdMedecin) 
);

CREATE TABLE Ordonnance(
        IdOrdonnance       Int  Auto_increment  NOT NULL ,
        NombreJourTraitement Int NOT NULL ,
        NombreParJour      Int NOT NULL ,
        Utilisee           tinyint NOT NULL ,
        IdMedicament       Int NOT NULL ,
        IdCompteRendu      Int NOT NULL ,
        IdVaccin           Int NOT NULL ,
        PRIMARY KEY (IdOrdonnance) ,
        FOREIGN KEY (IdMedicament) REFERENCES Medicament(IdMedicament) ,
        FOREIGN KEY (IdCompteRendu) REFERENCES CompteRendu(IdCompteRendu) ,
        FOREIGN KEY (IdVaccin) REFERENCES Vaccin(IdVaccin) 
);