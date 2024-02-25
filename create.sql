CREATE DATABASE [strona_internetowa];
GO

USE strona_internetowa

CREATE TABLE Czlowiek (
	ID_Czlowieka INT IDENTITY (1, 1),
	Imie VARCHAR (60) CHECK (Imie LIKE '[A-Z•∆ £—”åèØ][a-zπÊÍ≥ÒÛúüø]%') NOT NULL,
	Nazwisko VARCHAR (60) CHECK (Nazwisko LIKE '[A-Z•∆ £—”åèØ][a-zπÊÍ≥ÒÛúüø]%') NOT NULL,
	PRIMARY KEY (ID_Czlowieka)
);

CREATE TABLE Tlumacze (
	ID_Czlowieka INT NOT NULL UNIQUE,
	Adres_mailowy CHAR (200) CHECK (Adres_mailowy LIKE '%@%.%') NOT NULL UNIQUE,
	PRIMARY KEY (ID_Czlowieka),
	FOREIGN KEY (ID_Czlowieka)
		REFERENCES Czlowiek(ID_Czlowieka) 
		ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Autorzy (
	ID_Czlowieka INT NOT NULL UNIQUE,
	Data_urodzenia DATE CHECK (Data_urodzenia < GETDATE()) NOT NULL,
	PRIMARY KEY (ID_Czlowieka),
	FOREIGN KEY (ID_Czlowieka) 
		REFERENCES Czlowiek(ID_Czlowieka) 
		ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Ksiazki (
	ID_Ksiazki INT IDENTITY	(1, 1),
	Tytul VARCHAR (255) NOT NULL,
	Opis VARCHAR (1200) NOT NULL,
	PRIMARY KEY (ID_Ksiazki),
	ID_Czlowieka INT NOT NULL,
	FOREIGN KEY (ID_Czlowieka) 
		REFERENCES Autorzy (ID_Czlowieka)
		ON DELETE NO ACTION ON UPDATE NO ACTION

);
CREATE TABLE Przeklady (
	ID_Przekladu INT IDENTITY (1, 1),
	Jezyk VARCHAR (255) CHECK (Jezyk LIKE '[A-Z•∆ £—”åèØ][a-zπÊÍ≥ÒÛúüø]%') NOT NULL,
	PRIMARY KEY (ID_Przekladu),
	ID_Ksiazki INT NOT NULL,
	ID_Czlowieka INT NOT NULL,
	FOREIGN KEY (ID_Ksiazki) 
		REFERENCES Ksiazki (ID_Ksiazki)
		ON DELETE NO ACTION ON UPDATE NO ACTION,
	FOREIGN KEY (ID_Czlowieka) 
		REFERENCES Tlumacze (ID_Czlowieka)
		ON DELETE CASCADE ON UPDATE CASCADE
);



CREATE TABLE Czytelnicy (
	ID_Czlowieka INT NOT NULL UNIQUE,
	Adres_mailowy CHAR (200) CHECK (Adres_mailowy LIKE '%@%.%') NOT NULL UNIQUE,
	PRIMARY KEY (ID_Czlowieka),
	FOREIGN KEY (ID_Czlowieka) 
		REFERENCES Czlowiek(ID_Czlowieka) 
		ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Opinie (
	ID_Opinii INT IDENTITY (1, 1),
	Tytul VARCHAR (100) NOT NULL,
	Opis VARCHAR (500) NOT NULL,
	Ocena SMALLINT CHECK(Ocena >= 1 AND Ocena <= 10) DEFAULT 10 NOT NULL,
	PRIMARY KEY (ID_Opinii)
);

CREATE TABLE PrzeczytaneKsiazkiOpinie (
	ID_PrzeczytanychKsiazek INT IDENTITY (1, 1),
	ID_Ksiazki INT NOT NULL REFERENCES Ksiazki(ID_Ksiazki) ON DELETE CASCADE ON UPDATE CASCADE,
	ID_Czlowieka INT NOT NULL REFERENCES Czytelnicy(ID_Czlowieka) ON DELETE CASCADE ON UPDATE CASCADE,
	ID_Opinii INT REFERENCES Opinie(ID_Opinii) ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY (ID_PrzeczytanychKsiazek)
);

CREATE TABLE Wydawnictwa (
	ID_Wydawnictwa INT IDENTITY (1, 1),
	Miasto VARCHAR(40) CHECK (Miasto LIKE '[A-Z•∆ £—”åèØ][a-zπÊÍ≥ÒÛúüø]%') NOT NULL,
	Nazwa VARCHAR(100) NOT NULL UNIQUE,
	Kod_pocztowy CHAR(6) CHECK (Kod_pocztowy LIKE '[0-9][0-9]-[0-9][0-9][0-9]') NOT NULL,
	Ulica VARCHAR (50) CHECK (Ulica LIKE '[A-Z•∆ £—”åèØ][a-zπÊÍ≥ÒÛúüø]%' OR Ulica LIKE '[0-9]%[A-Z•∆ £—”åèØ][a-zπÊÍ≥ÒÛúüø]%') NOT NULL,
	Numer_lokalu VARCHAR(6) CHECK (Numer_lokalu LIKE '%[0-9]%' OR Numer_lokalu LIKE '%[0-9]%[A-Z]%' OR Numer_lokalu LIKE '%[0-9]%/%[0-9]%' OR Numer_lokalu LIKE '%[0-9]%[A-Z]/%[0-9]%') NOT NULL,
	PRIMARY KEY (ID_Wydawnictwa)
);

CREATE TABLE Wydania (
	ISBN CHAR(13) CHECK (ISBN LIKE '%[0-9]%') NOT NULL UNIQUE,
	Rok_wydania SMALLINT CHECK(Rok_wydania <= YEAR(GETDATE())) NOT NULL,
	Liczba_stron INT CHECK(Liczba_stron > 0),
	Cena FLOAT CHECK(Cena >= 1),
	Rodzaj_okladki VARCHAR(6) CHECK (Rodzaj_okladki IN ('miekka', 'twarda')),
	PRIMARY KEY (ISBN),
	ID_Wydawnictwa INT NOT NULL,
	ID_Ksiazki INT NOT NULL,
	FOREIGN KEY (ID_Wydawnictwa) 
		REFERENCES Wydawnictwa (ID_Wydawnictwa)
		ON DELETE NO ACTION ON UPDATE NO ACTION,
	FOREIGN KEY (ID_Ksiazki) 
		REFERENCES Ksiazki (ID_Ksiazki)
		ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE Ksiegarnie (
	ID_Ksiegarni INT IDENTITY (1, 1),
	Miasto VARCHAR(40) CHECK (Miasto LIKE '[A-Z•∆ £—”åèØ][a-zπÊÍ≥ÒÛúüø]%') NOT NULL,
	Nazwa VARCHAR(100) NOT NULL UNIQUE,
	Kod_pocztowy CHAR(6) CHECK (Kod_pocztowy LIKE '[0-9][0-9]-[0-9][0-9][0-9]') NOT NULL,
	Ulica VARCHAR (50) CHECK (Ulica LIKE '[A-Z•∆ £—”åèØ][a-zπÊÍ≥ÒÛúüø]%' OR Ulica LIKE '[0-9]%[A-Z•∆ £—”åèØ][a-zπÊÍ≥ÒÛúüø]%') NOT NULL,
	Numer_lokalu VARCHAR(6) CHECK (Numer_lokalu LIKE '%[0-9]%' OR Numer_lokalu LIKE '%[0-9]%[A-Z]%' OR Numer_lokalu LIKE '%[0-9]%/%[0-9]%' OR Numer_lokalu LIKE '%[0-9]%[A-Z]/%[0-9]%') NOT NULL,
	PRIMARY KEY (ID_Ksiegarni)
);

CREATE TABLE KsiegarnieWydania (
	ID_Ksiegarni INT NOT NULL,
	ISBN CHAR(13) NOT NULL ,
	PRIMARY KEY (ID_Ksiegarni, ISBN),
	FOREIGN KEY (ID_Ksiegarni) 
		REFERENCES Ksiegarnie (ID_Ksiegarni)
		ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (ISBN) 
		REFERENCES Wydania (ISBN)
		ON DELETE CASCADE ON UPDATE CASCADE
);
