USE strona_internetowa;

INSERT INTO Czlowiek (Imie, Nazwisko)
VALUES
('Jan', 'Kowalski'),
('Anna', 'Nowak'),
('Piotr', 'Wi�niewski'),
('Katarzyna', 'D�browska'),
('Tomasz', 'Lewandowski'),
('Magdalena', 'W�jcik'),
('Pawe�', 'Kami�ski'),
('Karolina', 'Kowalczyk'),
('Micha�', 'Zieli�ski'),
('Monika', 'Szyma�ska'),
('Adam', 'Wo�niak'),
('Natalia', 'Duda'),
('Krzysztof', 'Mazur'),
('Aleksandra', 'Jankowska'),
('Marcin', 'Wojciechowski'),
('Agnieszka', 'Kwiatkowska'),
('�ukasz', 'Krawczyk'),
('Patrycja', 'Kaczmarek'),
('Jacek', 'Piotrowski'),
('Weronika', 'Grabowska'),
('Alicja', 'Krawczyk'),
('Kamil', 'Zawadzki'),
('Ewa', 'Witkowska'),
('Marek', 'Dudek'),
('Nina', 'Kaczorowska'),
('Bartosz', 'Pawlak'),
('Dominika', 'Mazurek'),
('Rafa�', 'Sikorski'),
('Olga', 'Jasi�ska'),
('Kacper', 'Miko�ajczyk');

INSERT INTO Tlumacze(ID_Czlowieka, Adres_mailowy)
VALUES
(1, 'jan.kowalski@example.com'),
(2, 'anna.nowak@example.com'),
(3, 'piotr.wisniewski@example.com'),
(4, 'katarzyna.dabrowska@example.com'),
(5, 'tomasz.lewandowski@example.com'),
(6, 'magdalena.wojcik@example.com'),
(7, 'pawel.kaminski@example.com'),
(8, 'karolina.kowalczyk@example.com'),
(9, 'michal.zielinski@example.com'),
(10, 'monika.szymanska@example.com');

INSERT INTO Autorzy(ID_Czlowieka, Data_urodzenia)
VALUES
(11, '1980-05-15'),
(12, '1973-10-22'),
(13, '1995-02-08'),
(14, '1987-07-30'),
(15, '1965-12-11'),
(16, '1978-03-25'),
(17, '1990-09-02'),
(18, '1969-11-18'),
(19, '1983-06-07'),
(20, '1972-01-14');

INSERT INTO Czytelnicy(ID_Czlowieka, Adres_mailowy)
VALUES
(21, 'alice.krawczyk@example.com'),
(22, 'kamil.zawadzki@example.com'),
(23, 'ewa.witkowska@example.com'),
(24, 'marek.dudek@example.com'),
(25, 'nina.kaczorowska@example.com'),
(26, 'bart.pawlak@example.com'),
(27, 'domi.mazurek@example.com'),
(28, 'rafal.sikorski@example.com'),
(29, 'olga.jasinska@example.com'),
(30, 'kacper.mikolajczyk@example.com');

INSERT INTO Ksiazki (Tytul, Opis, ID_Czlowieka)
VALUES
('Podr�e w czasie', 
 'Niesamowite opowie�ci o podr�ach w czasie, kt�re zmieni�y bieg historii. Prze�yj fascynuj�ce przygody bohater�w, kt�rzy zanurzyli si� w wir czasu, pr�buj�c naprawi� b��dy przesz�o�ci lub przewidzie� przysz�o��.
 Poznaj tajemnice skomplikowanego mechanizmu czasoprzestrzennego i �led�, jak konsekwencje podr�y w czasie wp�ywaj� na �ycie bohater�w i �wiat, w kt�rym �yj�.', 11),

('Tajemnice Wszech�wiata', 
 'Odkryj nieznane zak�tki kosmosu i zanurz si� w fascynuj�cych tajemnicach wszech�wiata. Prze�led� histori� odkry� astronomicznych, pocz�wszy od staro�ytno�ci a� po najnowsze badania kosmosu.
 Dowiedz si�, jak naukowcy zg��biaj� sekrety ciemnej materii, czarnej dziury i �ycia pozaziemskiego, rzucaj�c nowe �wiat�o na nasze zrozumienie wszech�wiata.', 11),

('Intryguj�ce zagadki kryminalne', 
 'Rozwi�zuj zawi�e zagadki kryminalne razem z utalentowanym detektywem w tej pasjonuj�cej serii. Wciel si� w rol� �ledczego i towarzysz� mu podczas rozpracowywania trudnych przypadk�w.
 Odkrywaj ukryte motywy, analizuj dowody i �led� �ladami, aby doprowadzi� do odkrycia prawdy. Czy uda Ci si� rozwi�za� wszystkie zagadki przed bohaterem ksi��ki?', 12),

('Sztuka gotowania na wolnym ogniu', 
 'Przepisy na wykwintne dania przygotowywane przy u�yciu tradycyjnych technik gotowania na wolnym ogniu. Zanurz si� w kulinarnej podr�y, odkrywaj�c smaki r�nych kultur i region�w.
 Naucz si� sztuki kontrolowania temperatury, korzystaj�c z przyrz�d�w do gotowania na otwartym ogniu. Ksi��ka pe�na inspiracji dla wszystkich pasjonat�w kulinari�w.', 13),

('Wzloty i upadki wielkich imperi�w', 
 'Historie o pot�dze i upadku wielkich cywilizacji, kt�re kszta�towa�y dzieje ludzko�ci. Od staro�ytnych imperi�w po wsp�czesne mocarstwa, �led� losy spo�ecze�stw,
 kt�re osi�gn�y szczyt �wietno�ci, ale tak�e te, kt�re upad�y z r�nych powod�w. Poznaj decydent�w, wodz�w i naukowc�w, kt�rzy mieli wp�yw na losy ludzko�ci.', 13),

('Odkrywanie egzotycznych miejsc', 
 'Podr�uj z bohaterem ksi��ki i odkrywaj egzotyczne miejsca pe�ne przyg�d i niezwyk�ych do�wiadcze�. Prze�yj kulturowe spotkania, poznawaj tradycje i ucz si� historii od mieszka�c�w odleg�ych krain. 
 Od malowniczych pla� po g�ry i dzikie d�ungle � ksi��ka przeniesie Ci� w podr� po najbardziej fascynuj�cych zak�tkach �wiata.', 14),

('Zakazane technologie', 
 'Sekretne projekty, kt�re zmieni�y oblicze nauki i technologii, ale pozosta�y tajemnic� przed �wiatem. Odkryj zakulisowe historie in�ynier�w i wynalazc�w,
 kt�rzy tworzyli nowatorskie technologie, cz�sto z dala od oczu opinii publicznej. Czy to tajemnicze wynalazki by�y dla dobra ludzko�ci, czy te� skrywa�y mroczne zamiary?', 14),

('Mi�o�� w czasach cyfrowych', 
 'Opowie�� o mi�o�ci, kt�ra rozkwita w erze nowoczesnych technologii i zwi�zanych z nimi wyzwa�. �led� losy bohater�w, kt�rzy pr�buj� zbudowa� trwa�e i g��bokie zwi�zki,
 pomimo wp�ywu internetu, medi�w spo�eczno�ciowych i szybkiego tempa �ycia. Czy wsp�czesne technologie u�atwiaj� czy utrudniaj� budowanie zdrowych relacji?', 14),

('Przygody morskiego kapitana', 
 'Odkrywaj nieznane wyspy, walcz z piratami i prze�ywaj niesamowite przygody u boku do�wiadczonego kapitana. Wyrusz w morsk� podr� pe�n� niebezpiecze�stw i tajemnic,
 uczestnicz�c w bitwach na morzu i odkrywaj�c skarby ukryte na dnie oceanu. Czy uda si� bohaterowi ksi��ki pokona� trudno�ci i zdoby� s�aw� jako nieustraszony kapitan?', 15),

('Sztuka fotografii', 
 'Porady i techniki, kt�re pozwol� ci sta� si� lepszym fotografem i uchwyci� niezapomniane chwile. Poznaj tajniki kompozycji, �wiat�a i kolor�w, kt�re sprawi�,
 �e Twoje zdj�cia stan� si� prawdziwymi dzie�ami sztuki. Ksi��ka dla wszystkich, kt�rzy pragn� rozwija� swoje umiej�tno�ci w dziedzinie fotografii.', 16),

('Rzemios�o krawieckie', 
 'Tw�rz w�asne unikatowe ubrania, korzystaj�c z tradycyjnych technik krawieckich i eksperymentuj z mod�. Ksi��ka dla pasjonat�w szycia,
 oferuj�ca praktyczne wskaz�wki dotycz�ce wyboru materia��w, kroju i szycia. Odkryj rado�� tworzenia ubra�, kt�re s� nie tylko wyj�tkowe, ale tak�e idealnie dopasowane do Twojego stylu.', 16),

('Sekrety zdrowego stylu �ycia', 
 'Odkryj tajemnice d�ugowieczno�ci i zdrowego stylu �ycia, kt�re pomog� ci zachowa� witalno�� na lata. Przeczytaj o skutecznych metodach utrzymania r�wnowagi mi�dzy prac� a �yciem prywatnym,
 zdrowym od�ywianiu i aktywno�ci fizycznej. Ksi��ka stanowi inspiracj� do wprowadzenia pozytywnych zmian w swoim codziennym �yciu.', 16),

('Edukacja bez granic', 
 'Innowacyjne metody nauczania, kt�re sprawi�, �e nauka stanie si� fascynuj�c� podr� przez �wiat wiedzy. Prze�yj przygody bohater�w, 
 kt�rzy ucz� si� poprzez eksperymenty, podr�e edukacyjne i interaktywne zaj�cia. Czy tradycyjne metody nauczania mog� by� zast�pione nowoczesnymi i bardziej anga�uj�cymi formami edukacji?', 17),

('Wp�yw sztuki na psychik�', 
 'Zanurz si� w �wiecie sztuki i odkryj, w jaki spos�b mo�e ona wp�ywa� na Twoje samopoczucie i zdrowie psychiczne. Przeczytaj o psychologicznych korzy�ciach zwi�zanych z obcowaniem ze sztuk�,
 zar�wno jako tw�rc�, jak i odbiorc�. Czy sztuka mo�e by� form� terapii, pomagaj�c� radzi� sobie ze stresem i emocjonalnymi wyzwaniami?', 17),

('Podwodne odkrycia', 
 'Opowie�ci o fascynuj�cych odkryciach dokonywanych podczas eksploracji g��bin oceanicznych i tajemniczych morskich �wiat�w.
 Prze�yj przygody nurk�w, badaczy i oceanograf�w, kt�rzy odkrywaj� nieznane gatunki morskie, zatopione wraki i niezwyk�e formacje geologiczne. Ksi��ka dla mi�o�nik�w podwodnych tajemnic.', 17),

('Historie niezwyk�ych zwierz�t', 
 'Poznaj historie o zwierz�tach, kt�re dzi�ki swoim niezwyk�ym umiej�tno�ciom zdoby�y serca ludzi na ca�ym �wiecie. Od najmniejszych owad�w po wielkie ssaki, �led� losy zwierz�t,
 kt�re wykazuj� niesamowite zdolno�ci adaptacyjne, inteligencj� czy zdolno�� do wsp�pracy. Czy cz�owiek mo�e si� wiele nauczy�, obserwuj�c zachowanie zwierz�t w ich naturalnym �rodowisku?', 18),

('Mistrzowie kuchni', 
 'Zanurz si� w kulinarnym �wiecie mistrz�w kuchni i naucz si� przygotowywa� wykwintne dania jak prawdziwy szef kuchni.
 Ksi��ka oferuje przepisy na potrawy znanych restauracji, sekrety przyrz�dzania da� z r�nych kuchni �wiata oraz cenne wskaz�wki dotycz�ce technik gotowania. Odkryj tajniki sztuki kulinarnej od prawdziwych mistrz�w.', 18),

('Innowacje technologiczne', 
 '�led� rozw�j najnowszych technologii i odkrywaj, jak zmieniaj� one nasze �ycie i spos�b funkcjonowania spo�ecze�stwa. Przeczytaj o rewolucyjnych wynalazkach,
 kt�re mia�y wp�yw na r�ne dziedziny �ycia, od komunikacji po medycyn�. Czy technologia mo�e by� si�� nap�dow� post�pu czy te� stanowi zagro�enie dla tradycyjnych warto�ci?', 19),

('W poszukiwaniu zaginionych skarb�w', 
 'Podejmij si� ekscytuj�cej wyprawy w poszukiwaniu zaginionych skarb�w ukrytych w r�nych zak�tkach �wiata. Prze�yj przygody poszukiwaczy skarb�w, kt�rzy przemierzaj� d�ungle,
 g�ry i pustynie, szukaj�c ukrytych klejnot�w i artefakt�w. Czy uda si� odkry� skarby, czy te� tajemnice pozostan� zakopane na zawsze?', 20),

('Sztuka autoprezentacji', 
 'Nauka skutecznej autoprezentacji i budowania pozytywnego wizerunku, kt�ry pomo�e ci osi�gn�� sukces w �yciu zawodowym.
 Ksi��ka oferuje praktyczne wskaz�wki dotycz�ce m�wienia publicznego, radzenia sobie ze stresem i budowania trwa�ych relacji zawodowych.
 Czy umiej�tno�� autoprezentacji mo�e by� kluczowym czynnikiem wp�ywaj�cym na karier� zawodow�?', 20),

 ('Pokaz prezentacji', 
 'Nauka skutecznej prezentacji i budowania pozytywnego wizerunku, kt�ry pomo�e ci osi�gn�� sukces w �yciu zawodowym.
 Ksi��ka oferuje praktyczne wskaz�wki dotycz�ce m�wienia publicznego, radzenia sobie ze stresem i budowania trwa�ych relacji zawodowych.
 Czy umiej�tno�� oprezentacji mo�e by� kluczowym czynnikiem wp�ywaj�cym na karier� zawodow�?', 20);

INSERT INTO Ksiegarnie (Miasto, Nazwa, Kod_pocztowy, Ulica, Numer_lokalu)
 VALUES
('Warszawa', 'Ksi�garnia Pod Ksi�ycem', '00-001', 'Aleje Jerozolimskie', '123A'),
('Krak�w', 'Ksi�garnia Ksi��kowe Marzenie', '30-002', 'ul. Szewska', '45'),
('Gda�sk', 'Morska Ksi�garnia', '80-001', 'ul. D�uga', '67/2'),
('Wroc�aw', 'Ksi�garnia Fabularna', '50-003', 'ul. Ruska', '89'),
('Pozna�', 'Magiczne Strony Ksi��ek', '60-004', 'ul. �wi�ty Marcin', '112'),
('��d�', 'Literacki Zak�tek', '90-005', 'ul. Piotrkowska', '78/3'),
('Szczecin', 'Ksi�garnia Portowa', '70-006', 'ul. Wa�y Chrobrego', '21'),
('Bydgoszcz', 'Wodne Opowie�ci Ksi��ek', '85-007', 'ul. Gda�ska', '34'),
('Lublin', 'Ksi�garnia Labirynt Literatury', '20-008', 'ul. Krakowskie Przedmie�cie', '56/7'),
('Bia�ystok', 'Ksi��kowe Promienie', '15-009', 'ul. Lipowa', '98'),
('Katowice', 'Ksi�garnia G�rnicza', '40-010', 'ul. S�owackiego', '23'),
('Gdynia', 'Ksi�garnia Morze Ksi��ek', '81-011', 'ul. Starowiejska', '76'),
('Cz�stochowa', 'Ksi�garnia Jasna G�ra', '42-012', 'ul. Ogrodowa', '11'),
('Radom', 'S�owo Ksi��ki', '26-013', 'ul. Wernera', '44/2'),
('Toru�', 'Ksi�garnia Planetarium', '87-014', 'ul. Rynek Staromiejski', '32'),
('Kielce', 'Literacka Przysta�', '25-015', 'ul. Sienkiewicza', '55'),
('Olsztyn', 'Podr�nicza Ksi�garnia', '10-016', 'ul. Pi�sudskiego', '67'),
('Rzesz�w', 'Ksi�garnia Rzeszowska', '35-017', 'ul. 3 Maja', '78'),
('Opole', 'Opolskie Litery', '45-018', 'ul. Krakowska', '22'),
('Suwa�ki', 'Podlasie w Ksi��kach', '16-019', 'ul. Tadeusza Ko�ciuszki', '91/4');

INSERT INTO Opinie (Tytul, Opis, Ocena)
VALUES
('Podr�nicze Odkrycia', 'Fascynuj�ce relacje o niezwyk�ych przygodach podczas podr�y w czasie. 
Ksi��ka wci�gaj�ca od pierwszej strony, pozwalaj�ca zanurzy� si� w tajemniczym �wiecie czasoprzestrzennego.', 9),

('Gwiazdy i Tajemnice Kosmosu', 'Niezwyk�e opowie�ci o fascynuj�cych odkryciach astronomicznych.
Ksi��ka pe�na ciekawostek, kt�ra rozszerza horyzonty wiedzy o wszech�wiecie.', 8),

('S�odkie Zagadki Kryminalne', 'Pasjonuj�ce historie kryminalne, w kt�rych czytelnik mo�e samodzielnie rozwi�zywa� zagadki.
Ksi��ka doskonale ��czy wci�gaj�c� fabu�� z interaktywnym elementem.', 9),

('Smakowite Przygody na Ogniu', 'Wykwintne przepisy na dania gotowane na wolnym ogniu, kt�re rozbudz� zmys�y smaku.
Ksi��ka, kt�ra inspiruje do eksperymentowania w kuchni.', 10),

('Epoka Imperi�w', 'Zapieraj�ce dech opowie�ci o pot�dze i upadku wielkich cywilizacji. Ksi��ka, 
kt�ra ukazuje r�norodno�� historii ludzko�ci i wp�yw imperi�w na kszta�towanie �wiata.', 8),

('Magiczne W�dr�wki', 'Przygody w egzotycznych miejscach opowiedziane z pasj�. Ksi��ka, 
kt�ra przenosi czytelnika w podr� pe�n� egzotyki, kultury i niezwyk�ych prze�y�.', 9),

('Zakazane Sekrety Technologii', 'Intryguj�ce historie o tajnych projektach i wynalazkach, 
kt�re zmieni�y oblicze technologii. Ksi��ka, kt�ra odkrywa mroczne zakamarki rozwoju nauki.', 8),

('Mi�o�� w Erze Cyfrowej', 'Poruszaj�ca opowie�� o trudno�ciach mi�osnych w dobie nowoczesnych technologii. 
Ksi��ka, kt�ra sk�ania do refleksji nad wp�ywem cyfrowego �wiata na nasze relacje.', 7),

('Morskie Przygody Kapitana', 'Ekscytuj�ce opowie�ci o przygodach morskiego kapitana. Ksi��ka, 
kt�ra przenosi czytelnika na burzliwe morza, oferuj�c dawk� emocji i niezapomnianych chwil.', 9),

('Sztuka Doskona�ego Kadr', 'Praktyczne porady dla pasjonat�w fotografii. Ksi��ka, 
kt�ra pomaga rozwija� umiej�tno�ci fotograficzne, ucz�c sztuki uchwycania chwil.', 10),

('Pu�apki Podr�y Czasem', 'Obiecuj�cy temat podr�y w czasie zosta� niestety zagubiony w zawi�o�ci fabu�y. 
Ksi��ka trudna do zrozumienia, co utrudnia czytelnikowi �ledzenie wydarze�.', 4),

('Gwiezdne Troski', 'Mimo interesuj�cych zagadnie� astronomicznych, ksi��ka nie potrafi�a utrzyma� mojej uwagi. 
Zawarte informacje by�y zbyt suche i trudne do przyswajania.', 5),

('Zagadki Kryminalne dla Cierpliwych', 'Koncept interaktywnych zagadek kryminalnych okaza� si� m�cz�cy 
i nieprzyst�pny dla niekt�rych czytelnik�w. Ksi��ka wymaga zbyt du�ej cierpliwo�ci.', 3),

('Gor�ce Smaki na Ogniu', 'Przepisy s� skomplikowane, a techniki gotowania na wolnym ogniu s� trudne do opanowania.
Ksi��ka bardziej skomplikowana ni� inspiruj�ca.', 4),

('Upadki i Wzloty Imperi�w', 'Opowie�ci o imperiach okaza�y si� by� powtarzalne i ma�o intryguj�ce. 
Ksi��ka nie wnosi�a nowych spojrze� na histori� ludzko�ci.', 3),

('W�dr�wki Bezbarwne', 'Opowie�ci o podr�ach by�y nudne i pozbawione emocji. 
Ksi��ka nie potrafi�a odda� fascynacji zwi�zan� z odkrywaniem nowych miejsc.', 2),

('Technologiczne Przej�zyczenia', 'Opowie�ci o tajemniczych wynalazkach by�y niejasne i trudne do zrozumienia.
Ksi��ka pozostawia�a wiele pyta� bez odpowiedzi.', 4),

('Mi�o�� na Klikni�cie', 'Opowie�� o mi�o�ci w erze cyfrowej by�a banalna i przewidywalna. 
Ksi��ka nie potrafi�a prze�ama� schemat�w typowych dla tego gatunku.', 3),

('Zakazane Morskie Opowie�ci', 'Przygody morskiego kapitana okaza�y si� naci�gane i ma�o przekonuj�ce. 
Ksi��ka nie dostarcza�a emocji zwi�zanych z �yciem na morzu.', 2),

('Obiektywne Rozczarowanie', 'Porady fotograficzne by�y banalne, a ksi��ka nie wnosi�a nic nowego. 
Brakowa�o g��bszego spojrzenia na sztuk� fotografii.', 3),

('Przygody Nadzwyczajnego Detektywa', 'Wci�gaj�ca historia detektywa, kt�ry rozwi�zuje skomplikowane zagadki. 
Zaskakuj�ce zwroty akcji i doskona�a kreacja postaci sprawiaj�, �e ksi��ka trzyma w napi�ciu do ostatniej strony.', 8),

('Zakazana Mi�o��', 'Romantyczna opowie�� o mi�o�ci, kt�ra przetrwa�a mimo wszelkich przeciwno�ci. 
Poruszaj�ca i wzruszaj�ca, idealna dla mi�o�nik�w literatury obyczajowej.', 7),

('Sekrety Magicznego Ogrodu', 'Magiczna podr� do �wiata pe�nego tajemnic i czar�w. Ksi��ka, 
kt�ra przenosi czytelnika w fantastyczny �wiat pe�en niezwyk�ych stworze� i przyg�d.', 9),

('Mroczne Labirynty', 'Thriller pe�en napi�cia i zwrot�w akcji. Doskona�a dla mi�o�nik�w krymina��w i tajemniczych historii. 
Czytelnik nie b�dzie w stanie oderwa� si� od tej ksi��ki.', 8),

('Ostatni Bastion', 'Epicka saga fantasy o walce dobra ze z�em. Fascynuj�cy �wiat, 
w kt�rym bohaterowie zmierzaj� do ostatecznego starcia. Ksi��ka, kt�ra trzyma w napi�ciu do samego ko�ca.', 9),

('W stron� Nowego �witu', 'Intryguj�ca opowie�� o podr�y w poszukiwaniu nowych horyzont�w. 
Bohaterowie odkrywaj� pi�kno �wiata i samych siebie w trakcie niezwyk�ej wyprawy.', 3),

('G�osy Przesz�o�ci', 'Historia rodzinna pe�na tajemnic i ukrytych prawd. Ksi��ka, 
kt�ra porusza i zmusza do refleksji nad znaczeniem wi�zi rodzinnych.', 7),

('Labirynt Emocji', 'Intensywna opowie�� o mi�o�ci, zdradzie i przebaczeniu. 
Ksi��ka, kt�ra wci�ga od pierwszej strony i prowadzi czytelnika przez skomplikowane labirynty ludzkich uczu�.', 2),

('Szko�a Magii i Czarodziejstwa', 'Fantastyczna przygoda w magicznym �wiecie, 
gdzie uczniowie ucz� si� sztuki czarodziejstwa. Ksi��ka pe�na humoru, przyg�d i niezwyk�ych postaci.', 9);

INSERT INTO Przeklady (Jezyk, ID_Ksiazki, ID_Czlowieka)
VALUES
('angielski', 1, 1),
('hiszpa�ski', 1, 1),
('francuski', 2, 1),
('niemiecki', 2, 1),
('rosyjski', 2, 1),
('chi�ski (uproszczony)', 4, 3),
('japo�ski', 4, 3),
('arabski', 4, 3),
('portugalski', 9, 5),
('w�oski', 9, 5),
('angielski', 9, 5),
('holenderski', 9, 5),
('korea�ski', 9, 5),
('tajski', 10, 6),
('hebrajski', 10 ,6),
('turecki', 13, 7),
('rosyjski', 13, 7),
('szwedzki', 13, 7),
('grecki', 13, 7),
('hiszpa�ski', 13, 7);

INSERT INTO Wydawnictwa (Miasto, Nazwa, Kod_pocztowy, Ulica, Numer_lokalu)
 VALUES
 ('Warszawa', 'Wydawnictwo Ksi��kowe S�owo', '00-001', 'Literacka', '12A'),
('Krak�w', 'Naukowe Wydawnictwo Akademickie', '30-002', 'Uniwersytecka', '5'),
('Wroc�aw', 'Ksi�garnia Pod Atlantami', '50-100', 'Narodowa', '8'),
('Gda�sk', 'Morskie Wydawnictwo', '80-001', 'Portowa', '15'),
('Pozna�', 'Wydawnictwo Kultura', '60-200', 'S�owia�ska', '22B'),
('��d�', 'Historia Press', '90-003', 'Piotrkowska', '33'),
('Szczecin', 'Pomorskie Wydawnictwo Naukowe', '70-004', 'Akademicka', '10'),
('Bydgoszcz', 'Naukowe Wydawnictwo Pomorskie', '85-006', 'Toru�ska', '7C'),
('Katowice', '�l�skie Ksi�garnie', '40-007', 'G�rnicza', '18'),
('Bia�ystok', 'Podlaskie Wydawnictwo Literackie', '15-008', 'Le�na', '4'),
('Krak�w', 'Ma�e Wydawnictwo Pod Kopcem', '30-009', 'Kopiec Kraka', '2'),
('Gdynia', 'Nawigacja Literacka', '81-010', '�eglarska', '25'),
('Lublin', 'Ksi��ki Pod Zamek', '20-011', 'Zamkowa', '9'),
('Rzesz�w', 'Podkarpackie Wydawnictwo Regionalne', '35-012', 'Regionalna', '14'),
('Olsztyn', 'Warmi�skie Ksi��ki', '10-013', 'Mazurska', '6'),
('Cz�stochowa', 'Jasnog�rska Ksi�garnia', '42-014', 'Klasztorna', '3D'),
('Kielce', '�wi�tokrzyskie Wydawnictwo Naukowe', '25-015', 'Naukowa', '11'),
('Radom', 'Mazowieckie Ksi�garnie', '26-016', 'Mazowiecka', '7'),
('Sopot', 'Bursztynowe Wydawnictwo', '81-017', 'Bursztynowa', '10'),
('Toru�', 'Wydawnictwo Kopernikowskie', '87-018', 'Kopernika', '16');

INSERT INTO Wydania (ISBN, Rok_wydania, Liczba_stron, Cena, Rodzaj_okladki, ID_Wydawnictwa, ID_Ksiazki)
VALUES
('9780345453671', 2005, 320, 34.99, 'miekka', 1,1),
('9780061120084', 2012, 432, 25.50, 'twarda',1, 2),
('9780061120085', 2012, 432, 25.50, 'twarda',2, 2),
('9781250065038', 2018, 288, 42.75, 'miekka', 3, 3),
('9780743269514', 1999, 512, 19.99, 'twarda', 4, 4),
('9780743269515', 1999, 512, 19.99, 'twarda', 10, 4),
('9780399155956', 2015, 376, 29.95, 'miekka', 5, 5),
('9780385495322', 2008, 448, 38.50, 'twarda', 6, 6),
('9780553382553', 1995, 304, 22.75, 'miekka', 7, 7),
('9780446675605', 2019, 368, 45.99, 'twarda', 8, 8),
('9781451617206', 2013, 400, 28.99, 'miekka', 9, 9),
('9780312367308', 2002, 352, 33.25, 'twarda', 10, 10),
('9781847245459', 2014, 288, 27.50, 'miekka', 11, 11),
('9780061234004', 2017, 432, 40.75, 'twarda', 12, 12),
('9780765341629', 2007, 320, 31.99, 'miekka', 13, 13),
('9780143036531', 2003, 384, 26.50, 'twarda', 14, 14),
('9781400095224', 2016, 416, 36.99, 'miekka', 15, 15),
('9780312315167', 2000, 288, 23.75, 'twarda', 16, 16),
('9780670021399', 2011, 352, 37.50, 'miekka', 17, 17),
('9780525942405', 2010, 304, 29.25, 'twarda', 18, 18),
('9783161484100', 2004, 432, 35.99, 'miekka', 19, 19),
('9783161484102', 2004, 432, 35.99, 'miekka', 20, 19),
('9783161484101', 2008, 432, 35.99, 'miekka', 20, 20),
('9781439102753', 2014, 368, 42.50, 'twarda', 20, 21);

INSERT INTO KsiegarnieWydania(ID_Ksiegarni, ISBN)
VALUES
(1,  '9780345453671'),
(1,  '9780765341629'),
(3,  '9780385495322'),
(4,  '9780670021399'),
(5,  '9783161484100'),
(6,  '9781439102753'),
(7,  '9781451617206'),
(8,  '9780743269514'),
(9,  '9780312315167'),
(10, '9780446675605'),
(10, '9781847245459'),
(10, '9781250065038'),
(13, '9780525942405'),
(14, '9780312367308'),
(15, '9781400095224'),
(16, '9780553382553'),
(1, '9780061120084'),
(18, '9780061234004'),
(19, '9783161484101'),
(19, '9783161484102'),
(19, '9780143036531'),
(20, '9780143036531');

INSERT INTO PrzeczytaneKsiazkiOpinie(ID_Ksiazki, ID_Czlowieka, ID_Opinii)
VALUES
(5, 22, 8),
(9, 25, 1),
(3, 27, 3),
(10, 26, DEFAULT),
(1, 28, 4),
(7, 30, 7),
(2, 29, 1),
(6, 24, 6),
(8, 21, 9),
(4, 30, DEFAULT),
(5, 23, 8),
(9, 26, 1),
(3, 28, 3),
(10, 27, DEFAULT),
(1, 29, 4),
(7, 21, 7),
(2, 30, 1),
(6, 25, 6),
(8, 22, 9),
(2, 29, 20), --
(8, 21, 21),
(3, 30, 22),
(7, 25, 23),
(9, 22, 24),
(3, 29, 25),
(9, 21, 26),
(4, 30, 27),
(8, 25, 28),
(10, 22, 29),
(6, 21, 15);