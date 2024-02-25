

---------------------------------- 1 ---------------------------------------------------

/*  Scenariusz: Zr�b spis, w kt�rym wypiszesz t�umaczenia danej ksi��ki, dzi�ki temu b�dzie
wiadomo w jakich j�zykach jest ona prze�o�ona i kto mo�e ja czyta� i zr�b to w kolejno�ci,
kt�ra ksi��k� ma najwi�cej t�umacze�.
Zapytanie: Przypisz ka�dej ksi��ce t�umaczenia i policz je nast�pnie wy�wietl ilo�� i t�umaczenia. */

-- Tworzymy widok zawieraj�cy informacje o t�umaczeniach danej ksi��ki wraz z ich ilo�ci�
CREATE OR ALTER VIEW TlumaczeniaKsiazki AS
SELECT
    Ksiazki.ID_Ksiazki,
    Ksiazki.Tytul AS Tytu�Ksi��ki,
    COUNT(Przeklady.ID_Przekladu) AS Ilo��T�umacze�
FROM
    Ksiazki
LEFT JOIN
    Przeklady ON Ksiazki.ID_Ksiazki = Przeklady.ID_Ksiazki
GROUP BY
   Ksiazki.ID_Ksiazki, Ksiazki.Tytul;
GO

-------select do prezentacji-------------
SELECT 
    TlumaczeniaKsiazki.ID_Ksiazki,
    TlumaczeniaKsiazki.Tytu�Ksi��ki,
    TlumaczeniaKsiazki.Ilo��T�umacze�,
    Przeklady.Jezyk AS J�zykT�umaczenia
FROM TlumaczeniaKsiazki
JOIN Przeklady ON TlumaczeniaKsiazki.ID_Ksiazki = Przeklady.ID_Ksiazki;


-------------zapytanie-----------------------
SELECT
    TlumaczeniaKsiazki.ID_Ksiazki,
    TlumaczeniaKsiazki.Tytu�Ksi��ki,
    TlumaczeniaKsiazki.Ilo��T�umacze�,
    (SELECT STRING_AGG(Przeklady.Jezyk, ', ') FROM Przeklady WHERE Przeklady.ID_Ksiazki = TlumaczeniaKsiazki.ID_Ksiazki) AS J�zyki --podzapytanie
FROM
    TlumaczeniaKsiazki
ORDER BY
    TlumaczeniaKsiazki.Ilo��T�umacze� DESC;



---------------------------------- 2 ---------------------------------------------------

/* Scenariusz: W wydaniu ksi��ki znaleziono b��d w t�umaczeniu, trzeba skontaktowa� si� z
t�umaczem (przez emaila), odpowiadaj�cym za dane t�umaczenie.
Zapytanie: Szukamy wydanie X ksi��ki Z, kt�ra zosta�a prze�o�onej z j�zyka L przez t�umacza Y */


-------select do prezentacji-------------
SELECT
	 Tlumacze.ID_Czlowieka, 
	 Czlowiek.Imie, 
	 Czlowiek.Nazwisko, 
	 Tlumacze.Adres_mailowy,
	 Wydania.ISBN
FROM Tlumacze
JOIN Przeklady ON Tlumacze.ID_Czlowieka = Przeklady.ID_Czlowieka
JOIN Ksiazki ON Przeklady.ID_Ksiazki = Ksiazki.ID_Ksiazki
JOIN Wydania ON Wydania.ID_Ksiazki = Ksiazki.ID_Ksiazki
JOIN Czlowiek ON Tlumacze.ID_Czlowieka = Czlowiek.ID_Czlowieka
GROUP BY
    Tlumacze.ID_Czlowieka, Czlowiek.Imie, Czlowiek.Nazwisko, Tlumacze.Adres_mailowy, Wydania.ISBN


-------------zapytanie-----------------------
SELECT
	 Czlowiek.Imie, 
	 Czlowiek.Nazwisko, 
	 Wydania.ISBN,
	 (SELECT STRING_AGG( 'ID: ' + CAST(Tlumacze.ID_Czlowieka AS VARCHAR) + ', mail: ' + Tlumacze.Adres_mailowy, '; ')) AS DaneTlumacza  --podzapytanie
FROM Tlumacze
JOIN 
	Przeklady ON Tlumacze.ID_Czlowieka = Przeklady.ID_Czlowieka
JOIN
	Ksiazki ON Przeklady.ID_Ksiazki = Ksiazki.ID_Ksiazki
JOIN 
	Wydania ON Wydania.ID_Ksiazki = Ksiazki.ID_Ksiazki
JOIN
    Czlowiek ON Tlumacze.ID_Czlowieka = Czlowiek.ID_Czlowieka
WHERE
    Ksiazki.Tytul = 'Podr�e w czasie' AND Przeklady.Jezyk = 'angielski' AND Czlowiek.Imie = 'Jan'  AND Czlowiek.Nazwisko = 'Kowalski'
GROUP BY
    Tlumacze.ID_Czlowieka, Czlowiek.Imie, Czlowiek.Nazwisko, Tlumacze.Adres_mailowy, Wydania.ISBN


---------------------------------- 3 ---------------------------------------------------

/* Scenariusz: Zr�b ranking top 10 ksi��ek po najlepszych opiniach czytelnik�w.
	Zapytanie: Przypisz ka�dej ksi��ce jej �redni� opini�, nast�pnie uporz�dkuj je w kolejno�ci
	malej�cej i wypisz pierwsze 10 pozycji. */

-------select do prezentacji-------------
SELECT
	Ksiazki.Tytul,
	Opinie.Ocena
FROM Ksiazki
JOIN PrzeczytaneKsiazkiOpinie ON PrzeczytaneKsiazkiOpinie.ID_Ksiazki = Ksiazki.ID_Ksiazki
JOIN Opinie ON Opinie.ID_Opinii = PrzeczytaneKsiazkiOpinie.ID_Opinii
GROUP BY 
	PrzeczytaneKsiazkiOpinie.ID_PrzeczytanychKsiazek, Ksiazki.Tytul, Opinie.Ocena
ORDER BY 
	Ksiazki.Tytul


-------------zapytanie-----------------------
SELECT TOP 10
	Ksiazki.Tytul AS Ksiazka,
	AVG(Opinie.Ocena) AS Srednia_Ocena,
    STRING_AGG(CAST(Opinie.Ocena AS VARCHAR), ', ') AS WszystkieOceny
FROM Ksiazki
JOIN 
	PrzeczytaneKsiazkiOpinie ON PrzeczytaneKsiazkiOpinie.ID_Ksiazki = Ksiazki.ID_Ksiazki
JOIN
	Opinie ON Opinie.ID_Opinii = PrzeczytaneKsiazkiOpinie.ID_Opinii
GROUP BY 
	Ksiazki.Tytul
ORDER BY 
	Srednia_Ocena DESC


---------------------------------- 4 ---------------------------------------------------

/* Chcemy dowiedzie� si� jaki czytelnik najbardziej anga�uje si� w udzielaniu opinii, aby
go nagrodzi�.
Znajd� osoby, kt�re s� czytelnikiem i udzieli�y opinii dla ksi�garni X. Policz ile by�o opinii
dla danego czytelnika i wybierz, kt�ry z nich ma ich najwi�cej. */



-------select do prezentacji-------------
SELECT
    Czytelnicy.ID_Czlowieka,
    Czlowiek.Imie,
    Czlowiek.Nazwisko,
	Ksiegarnie.Nazwa,
    COUNT(*) AS IloscOpinii
FROM Czytelnicy
JOIN PrzeczytaneKsiazkiOpinie ON Czytelnicy.ID_Czlowieka = PrzeczytaneKsiazkiOpinie.ID_Czlowieka
JOIN Ksiazki ON PrzeczytaneKsiazkiOpinie.ID_Ksiazki = Ksiazki.ID_Ksiazki
JOIN Wydania ON Ksiazki.ID_Ksiazki = Wydania.ID_Ksiazki
JOIN KsiegarnieWydania ON Wydania.ISBN = KsiegarnieWydania.ISBN
JOIN Ksiegarnie ON KsiegarnieWydania.ID_Ksiegarni = Ksiegarnie.ID_Ksiegarni
JOIN Czlowiek ON Czytelnicy.ID_Czlowieka = Czlowiek.ID_Czlowieka
GROUP BY
    Czytelnicy.ID_Czlowieka, Czlowiek.Imie, Czlowiek.Nazwisko, Ksiegarnie.Nazwa
ORDER BY
    IloscOpinii DESC;


-------------zapytanie-----------------------
SELECT TOP 1
    Czytelnicy.ID_Czlowieka,
    Czlowiek.Imie,
    Czlowiek.Nazwisko,
    COUNT(*) AS IloscOpinii
FROM
    Czytelnicy
JOIN
    PrzeczytaneKsiazkiOpinie ON Czytelnicy.ID_Czlowieka = PrzeczytaneKsiazkiOpinie.ID_Czlowieka
JOIN
    Ksiazki ON PrzeczytaneKsiazkiOpinie.ID_Ksiazki = Ksiazki.ID_Ksiazki
JOIN
    Wydania ON Ksiazki.ID_Ksiazki = Wydania.ID_Ksiazki
JOIN
    KsiegarnieWydania ON Wydania.ISBN = KsiegarnieWydania.ISBN
JOIN
    Ksiegarnie ON KsiegarnieWydania.ID_Ksiegarni = Ksiegarnie.ID_Ksiegarni
JOIN
    Czlowiek ON Czytelnicy.ID_Czlowieka = Czlowiek.ID_Czlowieka
WHERE
    Ksiegarnie.Nazwa = 'Ksi�garnia Pod Ksi�ycem'
GROUP BY
    Czytelnicy.ID_Czlowieka, Czlowiek.Imie, Czlowiek.Nazwisko
ORDER BY
    IloscOpinii DESC;


---------------------------------- 5 ---------------------------------------------------

/* Chcemy dowiedzie� si�, kt�re wydawnictwo jest najcz�ciej wybierane przez autor�w
ksi��ek.
Liczymy ile by�o wyda� ksi��ek napisanych przez autora Y dla wydawnictwa X */

-------select do prezentacji-------------
SELECT
    Wydawnictwa.ID_Wydawnictwa,
    Wydawnictwa.Nazwa AS Nazwa,
    Autorzy.ID_Czlowieka,
    Czlowiek.Imie,
    Czlowiek.Nazwisko,
    COUNT(*) AS IloscWydanychKsiazek
FROM Autorzy
JOIN Ksiazki ON Autorzy.ID_Czlowieka = Ksiazki.ID_Czlowieka
JOIN Wydania ON Ksiazki.ID_Ksiazki = Wydania.ID_Ksiazki
JOIN Wydawnictwa ON Wydania.ID_Wydawnictwa = Wydawnictwa.ID_Wydawnictwa
JOIN Czlowiek ON Autorzy.ID_Czlowieka = Czlowiek.ID_Czlowieka
GROUP BY
    Wydawnictwa.ID_Wydawnictwa, Wydawnictwa.Nazwa, Autorzy.ID_Czlowieka, Czlowiek.Imie, Czlowiek.Nazwisko
ORDER BY
    IloscWydanychKsiazek DESC;



-------------zapytanie-----------------------
SELECT
    Wydawnictwa.ID_Wydawnictwa,
    Wydawnictwa.Nazwa AS Nazwa,
    Autorzy.ID_Czlowieka,
    Czlowiek.Imie,
    Czlowiek.Nazwisko,
    COUNT(*) AS IloscWydanychKsiazek
FROM
    Autorzy
JOIN
    Ksiazki ON Autorzy.ID_Czlowieka = Ksiazki.ID_Czlowieka
JOIN
    Wydania ON Ksiazki.ID_Ksiazki = Wydania.ID_Ksiazki
JOIN
    Wydawnictwa ON Wydania.ID_Wydawnictwa = Wydawnictwa.ID_Wydawnictwa
JOIN
    Czlowiek ON Autorzy.ID_Czlowieka = Czlowiek.ID_Czlowieka
WHERE
    Czlowiek.Imie = 'Weronika' AND Czlowiek.Nazwisko = 'Grabowska' AND Wydawnictwa.Nazwa = 'Wydawnictwo Kopernikowskie'
GROUP BY
    Wydawnictwa.ID_Wydawnictwa, Wydawnictwa.Nazwa, Autorzy.ID_Czlowieka, Czlowiek.Imie, Czlowiek.Nazwisko
ORDER BY
    IloscWydanychKsiazek DESC;


---------------------------------- 6 ---------------------------------------------------

/* Chcemy dowiedzie� si�, kt�ra ksi�garnia posiada najwi�cej dzie� danego autora.
Szukamy jakie ksi��ki wyda� autor i do jakiej ksi�garni s� dystrybuowane i po nazwie
ksi�garni liczymy ile ich by�o. Sortujemy od najwi�kszej liczby ksi��ek w danej ksi�garni. */

-------select do prezentacji-------------
SELECT
    Ksiegarnie.ID_Ksiegarni,
    Ksiegarnie.Nazwa,
    Autorzy.ID_Czlowieka,
    Czlowiek.Imie,
    Czlowiek.Nazwisko,
    COUNT(*) AS IloscKsiazek
FROM Autorzy
JOIN Ksiazki ON Autorzy.ID_Czlowieka = Ksiazki.ID_Czlowieka
JOIN Wydania ON Ksiazki.ID_Ksiazki = Wydania.ID_Ksiazki
JOIN KsiegarnieWydania ON Wydania.ISBN = KsiegarnieWydania.ISBN
JOIN Ksiegarnie ON KsiegarnieWydania.ID_Ksiegarni = Ksiegarnie.ID_Ksiegarni
JOIN Czlowiek ON Autorzy.ID_Czlowieka = Czlowiek.ID_Czlowieka
GROUP BY
   Ksiegarnie.ID_Ksiegarni, Ksiegarnie.Nazwa, Autorzy.ID_Czlowieka, Czlowiek.Imie, Czlowiek.Nazwisko
ORDER BY
    IloscKsiazek DESC;



-------------zapytanie-----------------------
SELECT
    Ksiegarnie.ID_Ksiegarni,
    Ksiegarnie.Nazwa,
    Autorzy.ID_Czlowieka,
    Czlowiek.Imie,
    Czlowiek.Nazwisko,
    COUNT(*) AS IloscKsiazek
FROM
    Autorzy
JOIN
    Ksiazki ON Autorzy.ID_Czlowieka = Ksiazki.ID_Czlowieka
JOIN
    Wydania ON Ksiazki.ID_Ksiazki = Wydania.ID_Ksiazki
JOIN
    KsiegarnieWydania ON Wydania.ISBN = KsiegarnieWydania.ISBN
JOIN
    Ksiegarnie ON KsiegarnieWydania.ID_Ksiegarni = Ksiegarnie.ID_Ksiegarni
JOIN
    Czlowiek ON Autorzy.ID_Czlowieka = Czlowiek.ID_Czlowieka
WHERE
    Czlowiek.Imie = 'Weronika' AND Czlowiek.Nazwisko = 'Grabowska'
GROUP BY
   Ksiegarnie.ID_Ksiegarni, Ksiegarnie.Nazwa, Autorzy.ID_Czlowieka, Czlowiek.Imie, Czlowiek.Nazwisko
ORDER BY
    IloscKsiazek DESC;



---------------------------------- 7 ---------------------------------------------------

/*  Wydawnictwo chce zach�ci� czytelnik�w do wystawiania opinii ksi��kom,
	kt�re ich jeszcze nie maj�, �eby si� lepiej sprzedawa�y. Chc� je zareklamowa� u siebie na stronie.
	Wy�wietl wszystkie ksi��ki wydawnictwa X, kt�re nie maj� opinii */

/*
-------select do prezentacji-------------
SELECT
	Ksiazki.ID_Ksiazki,
    Ksiazki.Tytul,
	Wydawnictwa.Nazwa
FROM Ksiazki
JOIN Wydania ON Ksiazki.ID_Ksiazki = Wydania.ID_Ksiazki
JOIN Wydawnictwa ON Wydania.ID_Wydawnictwa = Wydawnictwa.ID_Wydawnictwa
JOIN PrzeczytaneKsiazkiOpinie ON PrzeczytaneKsiazkiOpinie.ID_Ksiazki = Ksiazki.ID_Ksiazki
GROUP BY
   Ksiazki.ID_Ksiazki, Ksiazki.Tytul, Wydawnictwa.Nazwa


-------------zapytanie-----------------------
SELECT
	Ksiazki.ID_Ksiazki,
    Ksiazki.Tytul
FROM
    Ksiazki
JOIN
    Wydania ON Ksiazki.ID_Ksiazki = Wydania.ID_Ksiazki
JOIN
    Wydawnictwa ON Wydania.ID_Wydawnictwa = Wydawnictwa.ID_Wydawnictwa
JOIN
    PrzeczytaneKsiazkiOpinie ON PrzeczytaneKsiazkiOpinie.ID_Ksiazki = Ksiazki.ID_Ksiazki
WHERE
    Wydawnictwa.Nazwa = 'Podlaskie Wydawnictwo Literackie' AND PrzeczytaneKsiazkiOpinie.ID_Opinii IS NULL
GROUP BY
   Ksiazki.ID_Ksiazki, Ksiazki.Tytul
*/


---------------------------------- 8 ---------------------------------------------------

/*  Czytelnik chce zam�wi� popularn� ksi��k� pasuj�c� do jego bud�etu z dowolnej ksi�garnii.
	Wy�wietl wszystkie ksi��ki, kt�re maj� opinie i kosztuj� mniej ni� 30z� oraz ksi�garnie, 
	w kt�rych mo�na je kupi�, wraz z miastem w kt�rym si� znajduj� */


-------select do prezentacji-------------
SELECT
    Ksiazki.Tytul AS TytulKsiazki,
    Ksiegarnie.Nazwa AS NazwaKsiegarni,
	Wydania.Cena,
    Ksiegarnie.Miasto
FROM Ksiazki
JOIN PrzeczytaneKsiazkiOpinie ON Ksiazki.ID_Ksiazki = PrzeczytaneKsiazkiOpinie.ID_Ksiazki
JOIN Wydania ON Ksiazki.ID_Ksiazki = Wydania.ID_Ksiazki
JOIN KsiegarnieWydania ON Wydania.ISBN = KsiegarnieWydania.ISBN
JOIN Ksiegarnie ON KsiegarnieWydania.ID_Ksiegarni = Ksiegarnie.ID_Ksiegarni
GROUP BY 
	Ksiazki.Tytul, Wydania.Cena, Ksiegarnie.Nazwa, Ksiegarnie.Miasto



-------------zapytanie-----------------------
SELECT
    Ksiazki.Tytul AS TytulKsiazki,
    Ksiegarnie.Nazwa AS NazwaKsiegarni,
	Wydania.Cena,
    Ksiegarnie.Miasto
FROM
    Ksiazki
JOIN
	PrzeczytaneKsiazkiOpinie ON Ksiazki.ID_Ksiazki = PrzeczytaneKsiazkiOpinie.ID_Ksiazki
JOIN
    Wydania ON Ksiazki.ID_Ksiazki = Wydania.ID_Ksiazki
JOIN
   KsiegarnieWydania ON Wydania.ISBN = KsiegarnieWydania.ISBN
JOIN 
	Ksiegarnie ON KsiegarnieWydania.ID_Ksiegarni = Ksiegarnie.ID_Ksiegarni
WHERE
    Wydania.Cena <= 30 AND PrzeczytaneKsiazkiOpinie.ID_Opinii IS NOT NULL
GROUP BY 
	Ksiazki.Tytul, Wydania.Cena, Ksiegarnie.Nazwa, Ksiegarnie.Miasto