USE strona_internetowa;

INSERT INTO Czlowiek (Imie, Nazwisko)
VALUES
('Jan', 'Kowalski'),
('Anna', 'Nowak'),
('Piotr', 'Wiœniewski'),
('Katarzyna', 'D¹browska'),
('Tomasz', 'Lewandowski'),
('Magdalena', 'Wójcik'),
('Pawe³', 'Kamiñski'),
('Karolina', 'Kowalczyk'),
('Micha³', 'Zieliñski'),
('Monika', 'Szymañska'),
('Adam', 'WoŸniak'),
('Natalia', 'Duda'),
('Krzysztof', 'Mazur'),
('Aleksandra', 'Jankowska'),
('Marcin', 'Wojciechowski'),
('Agnieszka', 'Kwiatkowska'),
('£ukasz', 'Krawczyk'),
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
('Rafa³', 'Sikorski'),
('Olga', 'Jasiñska'),
('Kacper', 'Miko³ajczyk');

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
('Podró¿e w czasie', 
 'Niesamowite opowieœci o podró¿ach w czasie, które zmieni³y bieg historii. Prze¿yj fascynuj¹ce przygody bohaterów, którzy zanurzyli siê w wir czasu, próbuj¹c naprawiæ b³êdy przesz³oœci lub przewidzieæ przysz³oœæ.
 Poznaj tajemnice skomplikowanego mechanizmu czasoprzestrzennego i œledŸ, jak konsekwencje podró¿y w czasie wp³ywaj¹ na ¿ycie bohaterów i œwiat, w którym ¿yj¹.', 11),

('Tajemnice Wszechœwiata', 
 'Odkryj nieznane zak¹tki kosmosu i zanurz siê w fascynuj¹cych tajemnicach wszechœwiata. PrzeœledŸ historiê odkryæ astronomicznych, pocz¹wszy od staro¿ytnoœci a¿ po najnowsze badania kosmosu.
 Dowiedz siê, jak naukowcy zg³êbiaj¹ sekrety ciemnej materii, czarnej dziury i ¿ycia pozaziemskiego, rzucaj¹c nowe œwiat³o na nasze zrozumienie wszechœwiata.', 11),

('Intryguj¹ce zagadki kryminalne', 
 'Rozwi¹zuj zawi³e zagadki kryminalne razem z utalentowanym detektywem w tej pasjonuj¹cej serii. Wciel siê w rolê œledczego i towarzysz¹ mu podczas rozpracowywania trudnych przypadków.
 Odkrywaj ukryte motywy, analizuj dowody i œledŸ œladami, aby doprowadziæ do odkrycia prawdy. Czy uda Ci siê rozwi¹zaæ wszystkie zagadki przed bohaterem ksi¹¿ki?', 12),

('Sztuka gotowania na wolnym ogniu', 
 'Przepisy na wykwintne dania przygotowywane przy u¿yciu tradycyjnych technik gotowania na wolnym ogniu. Zanurz siê w kulinarnej podró¿y, odkrywaj¹c smaki ró¿nych kultur i regionów.
 Naucz siê sztuki kontrolowania temperatury, korzystaj¹c z przyrz¹dów do gotowania na otwartym ogniu. Ksi¹¿ka pe³na inspiracji dla wszystkich pasjonatów kulinariów.', 13),

('Wzloty i upadki wielkich imperiów', 
 'Historie o potêdze i upadku wielkich cywilizacji, które kszta³towa³y dzieje ludzkoœci. Od staro¿ytnych imperiów po wspó³czesne mocarstwa, œledŸ losy spo³eczeñstw,
 które osi¹gnê³y szczyt œwietnoœci, ale tak¿e te, które upad³y z ró¿nych powodów. Poznaj decydentów, wodzów i naukowców, którzy mieli wp³yw na losy ludzkoœci.', 13),

('Odkrywanie egzotycznych miejsc', 
 'Podró¿uj z bohaterem ksi¹¿ki i odkrywaj egzotyczne miejsca pe³ne przygód i niezwyk³ych doœwiadczeñ. Prze¿yj kulturowe spotkania, poznawaj tradycje i ucz siê historii od mieszkañców odleg³ych krain. 
 Od malowniczych pla¿ po góry i dzikie d¿ungle – ksi¹¿ka przeniesie Ciê w podró¿ po najbardziej fascynuj¹cych zak¹tkach œwiata.', 14),

('Zakazane technologie', 
 'Sekretne projekty, które zmieni³y oblicze nauki i technologii, ale pozosta³y tajemnic¹ przed œwiatem. Odkryj zakulisowe historie in¿ynierów i wynalazców,
 którzy tworzyli nowatorskie technologie, czêsto z dala od oczu opinii publicznej. Czy to tajemnicze wynalazki by³y dla dobra ludzkoœci, czy te¿ skrywa³y mroczne zamiary?', 14),

('Mi³oœæ w czasach cyfrowych', 
 'Opowieœæ o mi³oœci, która rozkwita w erze nowoczesnych technologii i zwi¹zanych z nimi wyzwañ. ŒledŸ losy bohaterów, którzy próbuj¹ zbudowaæ trwa³e i g³êbokie zwi¹zki,
 pomimo wp³ywu internetu, mediów spo³ecznoœciowych i szybkiego tempa ¿ycia. Czy wspó³czesne technologie u³atwiaj¹ czy utrudniaj¹ budowanie zdrowych relacji?', 14),

('Przygody morskiego kapitana', 
 'Odkrywaj nieznane wyspy, walcz z piratami i prze¿ywaj niesamowite przygody u boku doœwiadczonego kapitana. Wyrusz w morsk¹ podró¿ pe³n¹ niebezpieczeñstw i tajemnic,
 uczestnicz¹c w bitwach na morzu i odkrywaj¹c skarby ukryte na dnie oceanu. Czy uda siê bohaterowi ksi¹¿ki pokonaæ trudnoœci i zdobyæ s³awê jako nieustraszony kapitan?', 15),

('Sztuka fotografii', 
 'Porady i techniki, które pozwol¹ ci staæ siê lepszym fotografem i uchwyciæ niezapomniane chwile. Poznaj tajniki kompozycji, œwiat³a i kolorów, które sprawi¹,
 ¿e Twoje zdjêcia stan¹ siê prawdziwymi dzie³ami sztuki. Ksi¹¿ka dla wszystkich, którzy pragn¹ rozwijaæ swoje umiejêtnoœci w dziedzinie fotografii.', 16),

('Rzemios³o krawieckie', 
 'Twórz w³asne unikatowe ubrania, korzystaj¹c z tradycyjnych technik krawieckich i eksperymentuj z mod¹. Ksi¹¿ka dla pasjonatów szycia,
 oferuj¹ca praktyczne wskazówki dotycz¹ce wyboru materia³ów, kroju i szycia. Odkryj radoœæ tworzenia ubrañ, które s¹ nie tylko wyj¹tkowe, ale tak¿e idealnie dopasowane do Twojego stylu.', 16),

('Sekrety zdrowego stylu ¿ycia', 
 'Odkryj tajemnice d³ugowiecznoœci i zdrowego stylu ¿ycia, które pomog¹ ci zachowaæ witalnoœæ na lata. Przeczytaj o skutecznych metodach utrzymania równowagi miêdzy prac¹ a ¿yciem prywatnym,
 zdrowym od¿ywianiu i aktywnoœci fizycznej. Ksi¹¿ka stanowi inspiracjê do wprowadzenia pozytywnych zmian w swoim codziennym ¿yciu.', 16),

('Edukacja bez granic', 
 'Innowacyjne metody nauczania, które sprawi¹, ¿e nauka stanie siê fascynuj¹c¹ podró¿¹ przez œwiat wiedzy. Prze¿yj przygody bohaterów, 
 którzy ucz¹ siê poprzez eksperymenty, podró¿e edukacyjne i interaktywne zajêcia. Czy tradycyjne metody nauczania mog¹ byæ zast¹pione nowoczesnymi i bardziej anga¿uj¹cymi formami edukacji?', 17),

('Wp³yw sztuki na psychikê', 
 'Zanurz siê w œwiecie sztuki i odkryj, w jaki sposób mo¿e ona wp³ywaæ na Twoje samopoczucie i zdrowie psychiczne. Przeczytaj o psychologicznych korzyœciach zwi¹zanych z obcowaniem ze sztuk¹,
 zarówno jako twórc¹, jak i odbiorc¹. Czy sztuka mo¿e byæ form¹ terapii, pomagaj¹c¹ radziæ sobie ze stresem i emocjonalnymi wyzwaniami?', 17),

('Podwodne odkrycia', 
 'Opowieœci o fascynuj¹cych odkryciach dokonywanych podczas eksploracji g³êbin oceanicznych i tajemniczych morskich œwiatów.
 Prze¿yj przygody nurków, badaczy i oceanografów, którzy odkrywaj¹ nieznane gatunki morskie, zatopione wraki i niezwyk³e formacje geologiczne. Ksi¹¿ka dla mi³oœników podwodnych tajemnic.', 17),

('Historie niezwyk³ych zwierz¹t', 
 'Poznaj historie o zwierzêtach, które dziêki swoim niezwyk³ym umiejêtnoœciom zdoby³y serca ludzi na ca³ym œwiecie. Od najmniejszych owadów po wielkie ssaki, œledŸ losy zwierz¹t,
 które wykazuj¹ niesamowite zdolnoœci adaptacyjne, inteligencjê czy zdolnoœæ do wspó³pracy. Czy cz³owiek mo¿e siê wiele nauczyæ, obserwuj¹c zachowanie zwierz¹t w ich naturalnym œrodowisku?', 18),

('Mistrzowie kuchni', 
 'Zanurz siê w kulinarnym œwiecie mistrzów kuchni i naucz siê przygotowywaæ wykwintne dania jak prawdziwy szef kuchni.
 Ksi¹¿ka oferuje przepisy na potrawy znanych restauracji, sekrety przyrz¹dzania dañ z ró¿nych kuchni œwiata oraz cenne wskazówki dotycz¹ce technik gotowania. Odkryj tajniki sztuki kulinarnej od prawdziwych mistrzów.', 18),

('Innowacje technologiczne', 
 'ŒledŸ rozwój najnowszych technologii i odkrywaj, jak zmieniaj¹ one nasze ¿ycie i sposób funkcjonowania spo³eczeñstwa. Przeczytaj o rewolucyjnych wynalazkach,
 które mia³y wp³yw na ró¿ne dziedziny ¿ycia, od komunikacji po medycynê. Czy technologia mo¿e byæ si³¹ napêdow¹ postêpu czy te¿ stanowi zagro¿enie dla tradycyjnych wartoœci?', 19),

('W poszukiwaniu zaginionych skarbów', 
 'Podejmij siê ekscytuj¹cej wyprawy w poszukiwaniu zaginionych skarbów ukrytych w ró¿nych zak¹tkach œwiata. Prze¿yj przygody poszukiwaczy skarbów, którzy przemierzaj¹ d¿ungle,
 góry i pustynie, szukaj¹c ukrytych klejnotów i artefaktów. Czy uda siê odkryæ skarby, czy te¿ tajemnice pozostan¹ zakopane na zawsze?', 20),

('Sztuka autoprezentacji', 
 'Nauka skutecznej autoprezentacji i budowania pozytywnego wizerunku, który pomo¿e ci osi¹gn¹æ sukces w ¿yciu zawodowym.
 Ksi¹¿ka oferuje praktyczne wskazówki dotycz¹ce mówienia publicznego, radzenia sobie ze stresem i budowania trwa³ych relacji zawodowych.
 Czy umiejêtnoœæ autoprezentacji mo¿e byæ kluczowym czynnikiem wp³ywaj¹cym na karierê zawodow¹?', 20),

 ('Pokaz prezentacji', 
 'Nauka skutecznej prezentacji i budowania pozytywnego wizerunku, który pomo¿e ci osi¹gn¹æ sukces w ¿yciu zawodowym.
 Ksi¹¿ka oferuje praktyczne wskazówki dotycz¹ce mówienia publicznego, radzenia sobie ze stresem i budowania trwa³ych relacji zawodowych.
 Czy umiejêtnoœæ oprezentacji mo¿e byæ kluczowym czynnikiem wp³ywaj¹cym na karierê zawodow¹?', 20);

INSERT INTO Ksiegarnie (Miasto, Nazwa, Kod_pocztowy, Ulica, Numer_lokalu)
 VALUES
('Warszawa', 'Ksiêgarnia Pod Ksiê¿ycem', '00-001', 'Aleje Jerozolimskie', '123A'),
('Kraków', 'Ksiêgarnia Ksi¹¿kowe Marzenie', '30-002', 'ul. Szewska', '45'),
('Gdañsk', 'Morska Ksiêgarnia', '80-001', 'ul. D³uga', '67/2'),
('Wroc³aw', 'Ksiêgarnia Fabularna', '50-003', 'ul. Ruska', '89'),
('Poznañ', 'Magiczne Strony Ksi¹¿ek', '60-004', 'ul. Œwiêty Marcin', '112'),
('£ódŸ', 'Literacki Zak¹tek', '90-005', 'ul. Piotrkowska', '78/3'),
('Szczecin', 'Ksiêgarnia Portowa', '70-006', 'ul. Wa³y Chrobrego', '21'),
('Bydgoszcz', 'Wodne Opowieœci Ksi¹¿ek', '85-007', 'ul. Gdañska', '34'),
('Lublin', 'Ksiêgarnia Labirynt Literatury', '20-008', 'ul. Krakowskie Przedmieœcie', '56/7'),
('Bia³ystok', 'Ksi¹¿kowe Promienie', '15-009', 'ul. Lipowa', '98'),
('Katowice', 'Ksiêgarnia Górnicza', '40-010', 'ul. S³owackiego', '23'),
('Gdynia', 'Ksiêgarnia Morze Ksi¹¿ek', '81-011', 'ul. Starowiejska', '76'),
('Czêstochowa', 'Ksiêgarnia Jasna Góra', '42-012', 'ul. Ogrodowa', '11'),
('Radom', 'S³owo Ksi¹¿ki', '26-013', 'ul. Wernera', '44/2'),
('Toruñ', 'Ksiêgarnia Planetarium', '87-014', 'ul. Rynek Staromiejski', '32'),
('Kielce', 'Literacka Przystañ', '25-015', 'ul. Sienkiewicza', '55'),
('Olsztyn', 'Podró¿nicza Ksiêgarnia', '10-016', 'ul. Pi³sudskiego', '67'),
('Rzeszów', 'Ksiêgarnia Rzeszowska', '35-017', 'ul. 3 Maja', '78'),
('Opole', 'Opolskie Litery', '45-018', 'ul. Krakowska', '22'),
('Suwa³ki', 'Podlasie w Ksi¹¿kach', '16-019', 'ul. Tadeusza Koœciuszki', '91/4');

INSERT INTO Opinie (Tytul, Opis, Ocena)
VALUES
('Podró¿nicze Odkrycia', 'Fascynuj¹ce relacje o niezwyk³ych przygodach podczas podró¿y w czasie. 
Ksi¹¿ka wci¹gaj¹ca od pierwszej strony, pozwalaj¹ca zanurzyæ siê w tajemniczym œwiecie czasoprzestrzennego.', 9),

('Gwiazdy i Tajemnice Kosmosu', 'Niezwyk³e opowieœci o fascynuj¹cych odkryciach astronomicznych.
Ksi¹¿ka pe³na ciekawostek, która rozszerza horyzonty wiedzy o wszechœwiecie.', 8),

('S³odkie Zagadki Kryminalne', 'Pasjonuj¹ce historie kryminalne, w których czytelnik mo¿e samodzielnie rozwi¹zywaæ zagadki.
Ksi¹¿ka doskonale ³¹czy wci¹gaj¹c¹ fabu³ê z interaktywnym elementem.', 9),

('Smakowite Przygody na Ogniu', 'Wykwintne przepisy na dania gotowane na wolnym ogniu, które rozbudz¹ zmys³y smaku.
Ksi¹¿ka, która inspiruje do eksperymentowania w kuchni.', 10),

('Epoka Imperiów', 'Zapieraj¹ce dech opowieœci o potêdze i upadku wielkich cywilizacji. Ksi¹¿ka, 
która ukazuje ró¿norodnoœæ historii ludzkoœci i wp³yw imperiów na kszta³towanie œwiata.', 8),

('Magiczne Wêdrówki', 'Przygody w egzotycznych miejscach opowiedziane z pasj¹. Ksi¹¿ka, 
która przenosi czytelnika w podró¿ pe³n¹ egzotyki, kultury i niezwyk³ych prze¿yæ.', 9),

('Zakazane Sekrety Technologii', 'Intryguj¹ce historie o tajnych projektach i wynalazkach, 
które zmieni³y oblicze technologii. Ksi¹¿ka, która odkrywa mroczne zakamarki rozwoju nauki.', 8),

('Mi³oœæ w Erze Cyfrowej', 'Poruszaj¹ca opowieœæ o trudnoœciach mi³osnych w dobie nowoczesnych technologii. 
Ksi¹¿ka, która sk³ania do refleksji nad wp³ywem cyfrowego œwiata na nasze relacje.', 7),

('Morskie Przygody Kapitana', 'Ekscytuj¹ce opowieœci o przygodach morskiego kapitana. Ksi¹¿ka, 
która przenosi czytelnika na burzliwe morza, oferuj¹c dawkê emocji i niezapomnianych chwil.', 9),

('Sztuka Doskona³ego Kadr', 'Praktyczne porady dla pasjonatów fotografii. Ksi¹¿ka, 
która pomaga rozwijaæ umiejêtnoœci fotograficzne, ucz¹c sztuki uchwycania chwil.', 10),

('Pu³apki Podró¿y Czasem', 'Obiecuj¹cy temat podró¿y w czasie zosta³ niestety zagubiony w zawi³oœci fabu³y. 
Ksi¹¿ka trudna do zrozumienia, co utrudnia czytelnikowi œledzenie wydarzeñ.', 4),

('Gwiezdne Troski', 'Mimo interesuj¹cych zagadnieñ astronomicznych, ksi¹¿ka nie potrafi³a utrzymaæ mojej uwagi. 
Zawarte informacje by³y zbyt suche i trudne do przyswajania.', 5),

('Zagadki Kryminalne dla Cierpliwych', 'Koncept interaktywnych zagadek kryminalnych okaza³ siê mêcz¹cy 
i nieprzystêpny dla niektórych czytelników. Ksi¹¿ka wymaga zbyt du¿ej cierpliwoœci.', 3),

('Gor¹ce Smaki na Ogniu', 'Przepisy s¹ skomplikowane, a techniki gotowania na wolnym ogniu s¹ trudne do opanowania.
Ksi¹¿ka bardziej skomplikowana ni¿ inspiruj¹ca.', 4),

('Upadki i Wzloty Imperiów', 'Opowieœci o imperiach okaza³y siê byæ powtarzalne i ma³o intryguj¹ce. 
Ksi¹¿ka nie wnosi³a nowych spojrzeñ na historiê ludzkoœci.', 3),

('Wêdrówki Bezbarwne', 'Opowieœci o podró¿ach by³y nudne i pozbawione emocji. 
Ksi¹¿ka nie potrafi³a oddaæ fascynacji zwi¹zan¹ z odkrywaniem nowych miejsc.', 2),

('Technologiczne Przejêzyczenia', 'Opowieœci o tajemniczych wynalazkach by³y niejasne i trudne do zrozumienia.
Ksi¹¿ka pozostawia³a wiele pytañ bez odpowiedzi.', 4),

('Mi³oœæ na Klikniêcie', 'Opowieœæ o mi³oœci w erze cyfrowej by³a banalna i przewidywalna. 
Ksi¹¿ka nie potrafi³a prze³amaæ schematów typowych dla tego gatunku.', 3),

('Zakazane Morskie Opowieœci', 'Przygody morskiego kapitana okaza³y siê naci¹gane i ma³o przekonuj¹ce. 
Ksi¹¿ka nie dostarcza³a emocji zwi¹zanych z ¿yciem na morzu.', 2),

('Obiektywne Rozczarowanie', 'Porady fotograficzne by³y banalne, a ksi¹¿ka nie wnosi³a nic nowego. 
Brakowa³o g³êbszego spojrzenia na sztukê fotografii.', 3),

('Przygody Nadzwyczajnego Detektywa', 'Wci¹gaj¹ca historia detektywa, który rozwi¹zuje skomplikowane zagadki. 
Zaskakuj¹ce zwroty akcji i doskona³a kreacja postaci sprawiaj¹, ¿e ksi¹¿ka trzyma w napiêciu do ostatniej strony.', 8),

('Zakazana Mi³oœæ', 'Romantyczna opowieœæ o mi³oœci, która przetrwa³a mimo wszelkich przeciwnoœci. 
Poruszaj¹ca i wzruszaj¹ca, idealna dla mi³oœników literatury obyczajowej.', 7),

('Sekrety Magicznego Ogrodu', 'Magiczna podró¿ do œwiata pe³nego tajemnic i czarów. Ksi¹¿ka, 
która przenosi czytelnika w fantastyczny œwiat pe³en niezwyk³ych stworzeñ i przygód.', 9),

('Mroczne Labirynty', 'Thriller pe³en napiêcia i zwrotów akcji. Doskona³a dla mi³oœników krymina³ów i tajemniczych historii. 
Czytelnik nie bêdzie w stanie oderwaæ siê od tej ksi¹¿ki.', 8),

('Ostatni Bastion', 'Epicka saga fantasy o walce dobra ze z³em. Fascynuj¹cy œwiat, 
w którym bohaterowie zmierzaj¹ do ostatecznego starcia. Ksi¹¿ka, która trzyma w napiêciu do samego koñca.', 9),

('W stronê Nowego Œwitu', 'Intryguj¹ca opowieœæ o podró¿y w poszukiwaniu nowych horyzontów. 
Bohaterowie odkrywaj¹ piêkno œwiata i samych siebie w trakcie niezwyk³ej wyprawy.', 3),

('G³osy Przesz³oœci', 'Historia rodzinna pe³na tajemnic i ukrytych prawd. Ksi¹¿ka, 
która porusza i zmusza do refleksji nad znaczeniem wiêzi rodzinnych.', 7),

('Labirynt Emocji', 'Intensywna opowieœæ o mi³oœci, zdradzie i przebaczeniu. 
Ksi¹¿ka, która wci¹ga od pierwszej strony i prowadzi czytelnika przez skomplikowane labirynty ludzkich uczuæ.', 2),

('Szko³a Magii i Czarodziejstwa', 'Fantastyczna przygoda w magicznym œwiecie, 
gdzie uczniowie ucz¹ siê sztuki czarodziejstwa. Ksi¹¿ka pe³na humoru, przygód i niezwyk³ych postaci.', 9);

INSERT INTO Przeklady (Jezyk, ID_Ksiazki, ID_Czlowieka)
VALUES
('angielski', 1, 1),
('hiszpañski', 1, 1),
('francuski', 2, 1),
('niemiecki', 2, 1),
('rosyjski', 2, 1),
('chiñski (uproszczony)', 4, 3),
('japoñski', 4, 3),
('arabski', 4, 3),
('portugalski', 9, 5),
('w³oski', 9, 5),
('angielski', 9, 5),
('holenderski', 9, 5),
('koreañski', 9, 5),
('tajski', 10, 6),
('hebrajski', 10 ,6),
('turecki', 13, 7),
('rosyjski', 13, 7),
('szwedzki', 13, 7),
('grecki', 13, 7),
('hiszpañski', 13, 7);

INSERT INTO Wydawnictwa (Miasto, Nazwa, Kod_pocztowy, Ulica, Numer_lokalu)
 VALUES
 ('Warszawa', 'Wydawnictwo Ksi¹¿kowe S³owo', '00-001', 'Literacka', '12A'),
('Kraków', 'Naukowe Wydawnictwo Akademickie', '30-002', 'Uniwersytecka', '5'),
('Wroc³aw', 'Ksiêgarnia Pod Atlantami', '50-100', 'Narodowa', '8'),
('Gdañsk', 'Morskie Wydawnictwo', '80-001', 'Portowa', '15'),
('Poznañ', 'Wydawnictwo Kultura', '60-200', 'S³owiañska', '22B'),
('£ódŸ', 'Historia Press', '90-003', 'Piotrkowska', '33'),
('Szczecin', 'Pomorskie Wydawnictwo Naukowe', '70-004', 'Akademicka', '10'),
('Bydgoszcz', 'Naukowe Wydawnictwo Pomorskie', '85-006', 'Toruñska', '7C'),
('Katowice', 'Œl¹skie Ksiêgarnie', '40-007', 'Górnicza', '18'),
('Bia³ystok', 'Podlaskie Wydawnictwo Literackie', '15-008', 'Leœna', '4'),
('Kraków', 'Ma³e Wydawnictwo Pod Kopcem', '30-009', 'Kopiec Kraka', '2'),
('Gdynia', 'Nawigacja Literacka', '81-010', '¯eglarska', '25'),
('Lublin', 'Ksi¹¿ki Pod Zamek', '20-011', 'Zamkowa', '9'),
('Rzeszów', 'Podkarpackie Wydawnictwo Regionalne', '35-012', 'Regionalna', '14'),
('Olsztyn', 'Warmiñskie Ksi¹¿ki', '10-013', 'Mazurska', '6'),
('Czêstochowa', 'Jasnogórska Ksiêgarnia', '42-014', 'Klasztorna', '3D'),
('Kielce', 'Œwiêtokrzyskie Wydawnictwo Naukowe', '25-015', 'Naukowa', '11'),
('Radom', 'Mazowieckie Ksiêgarnie', '26-016', 'Mazowiecka', '7'),
('Sopot', 'Bursztynowe Wydawnictwo', '81-017', 'Bursztynowa', '10'),
('Toruñ', 'Wydawnictwo Kopernikowskie', '87-018', 'Kopernika', '16');

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