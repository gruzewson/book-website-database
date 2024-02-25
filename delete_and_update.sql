USE strona_internetowa;

--usuwanie kaskadowe
SELECT * FROM Czlowiek WHERE ID_Czlowieka = '1' ORDER BY ID_Czlowieka;
SELECT * FROM Tlumacze ORDER BY ID_Czlowieka;

DELETE FROM Czlowiek WHERE ID_Czlowieka = '1';

SELECT * FROM Czlowiek WHERE ID_Czlowieka = '1' ORDER BY ID_Czlowieka;
SELECT * FROM Tlumacze ORDER BY ID_Czlowieka;

--updatowanie kaskadowe
SELECT * FROM Wydania WHERE ISBN = '9780345453671';
SELECT * FROM Wydania WHERE ISBN = '6780345453671';
SELECT * FROM KsiegarnieWydania;

UPDATE Wydania
SET ISBN = '6780345453671'
WHERE ISBN ='9780345453671';

SELECT * FROM Wydania WHERE ISBN = '9780345453671';
SELECT * FROM Wydania WHERE ISBN = '6780345453671';
SELECT * FROM KsiegarnieWydania;