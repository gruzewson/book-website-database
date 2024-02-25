

---------------------------------- 1 ---------------------------------------------------

/*  Scenariusz: Zrób spis, w którym wypiszesz t³umaczenia danej ksi¹¿ki, dziêki temu bêdzie
wiadomo w jakich jêzykach jest ona prze³o¿ona i kto mo¿e ja czytaæ i zrób to w kolejnoœci,
która ksi¹¿k¹ ma najwiêcej t³umaczeñ.
Zapytanie: Przypisz ka¿dej ksi¹¿ce t³umaczenia i policz je nastêpnie wyœwietl iloœæ i t³umaczenia. */

-- Tworzymy widok zawieraj¹cy informacje o t³umaczeniach danej ksi¹¿ki wraz z ich iloœci¹
CREATE OR ALTER VIEW TlumaczeniaKsiazki AS
SELECT
    Ksiazki.ID_Ksiazki,
    Ksiazki.Tytul AS Tytu³Ksi¹¿ki,
    COUNT(Przeklady.ID_Przekladu) AS IloœæT³umaczeñ
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
    TlumaczeniaKsiazki.Tytu³Ksi¹¿ki,
    TlumaczeniaKsiazki.IloœæT³umaczeñ,
    Przeklady.Jezyk AS JêzykT³umaczenia
FROM TlumaczeniaKsiazki
JOIN Przeklady ON TlumaczeniaKsiazki.ID_Ksiazki = Przeklady.ID_Ksiazki;


-------------zapytanie-----------------------
SELECT
    TlumaczeniaKsiazki.ID_Ksiazki,
    TlumaczeniaKsiazki.Tytu³Ksi¹¿ki,
    TlumaczeniaKsiazki.IloœæT³umaczeñ,
    (SELECT STRING_AGG(Przeklady.Jezyk, ', ') FROM Przeklady WHERE Przeklady.ID_Ksiazki = TlumaczeniaKsiazki.ID_Ksiazki) AS Jêzyki --podzapytanie
FROM
    TlumaczeniaKsiazki
ORDER BY
    TlumaczeniaKsiazki.IloœæT³umaczeñ DESC;



---------------------------------- 2 ---------------------------------------------------

/* Scenariusz: W wydaniu ksi¹¿ki znaleziono b³¹d w t³umaczeniu, trzeba skontaktowaæ siê z
t³umaczem (przez emaila), odpowiadaj¹cym za dane t³umaczenie.
Zapytanie: Szukamy wydanie X ksi¹¿ki Z, która zosta³a prze³o¿onej z jêzyka L przez t³umacza Y */


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
    Ksiazki.Tytul = 'Podró¿e w czasie' AND Przeklady.Jezyk = 'angielski' AND Czlowiek.Imie = 'Jan'  AND Czlowiek.Nazwisko = 'Kowalski'
GROUP BY
    Tlumacze.ID_Czlowieka, Czlowiek.Imie, Czlowiek.Nazwisko, Tlumacze.Adres_mailowy, Wydania.ISBN


---------------------------------- 3 ---------------------------------------------------

/* Scenariusz: Zrób ranking top 10 ksi¹¿ek po najlepszych opiniach czytelników.
	Zapytanie: Przypisz ka¿dej ksi¹¿ce jej œredni¹ opiniê, nastêpnie uporz¹dkuj je w kolejnoœci
	malej¹cej i wypisz pierwsze 10 pozycji. */

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

/* Chcemy dowiedzieæ siê jaki czytelnik najbardziej anga¿uje siê w udzielaniu opinii, aby
go nagrodziæ.
ZnajdŸ osoby, które s¹ czytelnikiem i udzieli³y opinii dla ksiêgarni X. Policz ile by³o opinii
dla danego czytelnika i wybierz, który z nich ma ich najwiêcej. */



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
    Ksiegarnie.Nazwa = 'Ksiêgarnia Pod Ksiê¿ycem'
GROUP BY
    Czytelnicy.ID_Czlowieka, Czlowiek.Imie, Czlowiek.Nazwisko
ORDER BY
    IloscOpinii DESC;


---------------------------------- 5 ---------------------------------------------------

/* Chcemy dowiedzieæ siê, które wydawnictwo jest najczêœciej wybierane przez autorów
ksi¹¿ek.
Liczymy ile by³o wydañ ksi¹¿ek napisanych przez autora Y dla wydawnictwa X */

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

/* Chcemy dowiedzieæ siê, która ksiêgarnia posiada najwiêcej dzie³ danego autora.
Szukamy jakie ksi¹¿ki wyda³ autor i do jakiej ksiêgarni s¹ dystrybuowane i po nazwie
ksiêgarni liczymy ile ich by³o. Sortujemy od najwiêkszej liczby ksi¹¿ek w danej ksiêgarni. */

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

/*  Wydawnictwo chce zachêciæ czytelników do wystawiania opinii ksi¹¿kom,
	które ich jeszcze nie maj¹, ¿eby siê lepiej sprzedawa³y. Chc¹ je zareklamowaæ u siebie na stronie.
	Wyœwietl wszystkie ksi¹¿ki wydawnictwa X, które nie maj¹ opinii */

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

/*  Czytelnik chce zamówiæ popularn¹ ksi¹¿kê pasuj¹c¹ do jego bud¿etu z dowolnej ksiêgarnii.
	Wyœwietl wszystkie ksi¹¿ki, które maj¹ opinie i kosztuj¹ mniej ni¿ 30z³ oraz ksiêgarnie, 
	w których mo¿na je kupiæ, wraz z miastem w którym siê znajduj¹ */


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