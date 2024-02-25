USE strona_internetowa

DROP TABLE PrzeczytaneKsiazkiOpinie;
DROP TABLE KsiegarnieWydania;
DROP TABLE Przeklady;
DROP TABLE Opinie;
DROP TABLE Wydania;
DROP TABLE Ksiegarnie;
DROP TABLE Wydawnictwa;
DROP TABLE Ksiazki;
DROP TABLE Czytelnicy;
DROP TABLE Autorzy;
DROP TABLE Tlumacze;
DROP TABLE Czlowiek;

USE master;
ALTER DATABASE [strona_internetowa]
SET SINGLE_USER 
WITH ROLLBACK IMMEDIATE;
GO
DROP DATABASE [strona_internetowa];
GO