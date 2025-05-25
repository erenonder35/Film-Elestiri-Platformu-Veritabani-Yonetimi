create database Movies
alter database Movies modify name = Filmler
USE Filmler
GO
create table Kullanýcý
(
kullanýcýID int NOT NULL primary key,
Email nvarchar(50) NOT NULL,
Ad nvarchar(50) NOT NULL
)
USE Filmler
GO
create table Film
(
FilmID int NOT NULL primary key,
Baþlýk nvarchar(50) NOT NULL,
Yapýmyýlý int NOT NULL,
Süre int NOT NULL
)
USE Filmler
GO
create table Puan
(
PuanID int NOT NULL primary key,
Puandeðeri int NOT NULL check(Puandeðeri between 1 and 10),
Puantarihi date NOT NULL
)
USE Filmler
GO
create table Oyuncu
(
OyuncuID int NOT NULL primary key,
AdSoyad nvarchar(50) NOT NULL,
Doðumtarihi date NOT NULL,
Ülke nvarchar(50) NOT NULL
)
USE Filmler
GO
create table Yönetmen
(
YönetmenID int NOT NULL primary key,
AdSoyad nvarchar(50) NOT NULL,
Doðumtarihi date NOT NULL,
Ülke nvarchar(50) NOT NULL
)
USE Filmler
GO
CREATE TABLE FilmOyuncu
(
    FilmID int NOT NULL,
    OyuncuID int NOT NULL,
    PRIMARY KEY (FilmID, OyuncuID),
    FOREIGN KEY (FilmID) REFERENCES Film(FilmID),
    FOREIGN KEY (OyuncuID) REFERENCES Oyuncu(OyuncuID)
);
USE Filmler
GO
CREATE TABLE FilmYönetmen
(
    FilmID int NOT NULL,
    YönetmenID int NOT NULL,
    PRIMARY KEY (FilmID, YönetmenID),
    FOREIGN KEY (FilmID) REFERENCES Film(FilmID),
    FOREIGN KEY (YönetmenID) REFERENCES Yönetmen(YönetmenID)
);


ALTER TABLE Film
ADD Tür nvarchar(50);

INSERT INTO Film (FilmID, Baþlýk, Yapýmyýlý, Süre, Tür)
VALUES (1, N'Esaretin Bedeli', 1994, 142, N'Drama');
INSERT INTO Film (FilmID, Baþlýk, Yapýmyýlý, Süre, Tür)
VALUES
(2,  N'Baba',                      1972, 175, N'Suç'),
(3,  N'Kara Þövalye',              2008, 152, N'Aksiyon'),
(4,  N'Baba 2',                    1974, 202, N'Suç'),
(5,  N'12 Öfkeli Adam',            1957, 96,  N'Drama'),
(6,  N'Schindler''in Listesi',     1993, 195, N'Tarih'),
(7,  N'Yüzüklerin Efendisi: Kralýn Dönüþü', 2003, 201, N'Fantastik'),
(8,  N'Ucuz Roman',                1994, 154, N'Suç'),
(9,  N'Ýyi, Kötü ve Çirkin',       1966, 161, N'Western'),
(10, N'Yüzüklerin Efendisi: Yüzük Kardeþliði', 2001, 178, N'Fantastik'),
(11, N'Dövüþ Kulübü',              1999, 139, N'Drama'),
(12, N'Forrest Gump',             1994, 142, N'Drama'),
(13, N'Baþlangýç',                2010, 148, N'Bilim Kurgu'),
(14, N'Yýldýzlararasý',           2014, 169, N'Bilim Kurgu'),
(15, N'Matrix',                   1999, 136, N'Bilim Kurgu'),
(16, N'Ýyi Bir Gün',              2002, 179, N'Drama'),
(17, N'Yedi Samuray',             1954, 207, N'Aksiyon'),
(18, N'Hayat Güzeldir',           1997, 116, N'Drama'),
(19, N'Yeþil Yol',                1999, 189, N'Drama'),
(20, N'Senin Adýn',               2016, 106, N'Animasyon');

INSERT INTO Kullanýcý (kullanýcýID, Email, Ad)
VALUES
(1,  N'erenonder24@gmail.com',     N'Eren Önder'),
(2,  N'nurrakdemir@gmail.com',     N'Ümmühan Nur Akdemir'),
(3,  N'emir.mutlu@ogr.deu.edu.tr',        N'Emir Mutlu'),
(4,  N'elif.arslan@outlook.com',    N'Elif Arslan'),
(5,  N'burak.tas@gmail.com',        N'Burak Taþ'),
(6,  N'zeynep.dogan@hotmail.com',   N'Zeynep Doðan'),
(7,  N'emre.ozkan@gmail.com',       N'Emre Özkan'),
(8,  N'asli.kurt@outlook.com',      N'Aslý Kurt'),
(9,  N'mehmet.cetin@yahoo.com',     N'Mehmet Çetin'),
(10, N'selin.aksoy@gmail.com',      N'Selin Aksoy'),
(11, N'kerem.aydin@hotmail.com',    N'Kerem Aydýn'),
(12, N'nazli.sari@gmail.com',       N'Nazlý Sarý'),
(13, N'umut.kaya@outlook.com',      N'Umut Kaya'),
(14, N'ayse.bulut@gmail.com',       N'Ayþe Bulut'),
(15, N'deniz.yildiz@hotmail.com',   N'Deniz Yýldýz'),
(16, N'sinan.ozdemir@yahoo.com',    N'Sinan Özdemir'),
(17, N'gul.turan@gmail.com',        N'Gül Turan'),
(18, N'tolga.kaplan@outlook.com',   N'Tolga Kaplan'),
(19, N'seda.celik@gmail.com',       N'Seda Çelik'),
(20, N'mustafa.ugur@hotmail.com',   N'Mustafa Uður');
INSERT INTO Puan (PuanID, Puandeðeri, Puantarihi)
VALUES
(1,  9,  '2025-01-15'),
(2,  8,  '2025-01-18'),
(3,  10, '2025-01-21'),
(4,  7,  '2025-02-02'),
(5,  6,  '2025-02-10'),
(6,  5,  '2025-02-12'),
(7,  8,  '2025-03-01'),
(8,  9,  '2025-03-05'),
(9,  7,  '2025-03-15'),
(10, 6,  '2025-03-20'),
(11, 10, '2025-04-01'),
(12, 9,  '2025-04-03'),
(13, 4,  '2025-04-08'),
(14, 7,  '2025-04-15'),
(15, 3,  '2025-04-20'),
(16, 6,  '2025-05-01'),
(17, 8,  '2025-05-05'),
(18, 10, '2025-05-10'),
(19, 5,  '2025-05-15'),
(20, 7,  '2025-05-20');

INSERT INTO Oyuncu (OyuncuID, AdSoyad, Doðumtarihi, Ülke) VALUES
(1,  N'Morgan Freeman',        '1937-06-01', N'ABD'),
(2,  N'Al Pacino',             '1940-04-25', N'ABD'),
(3,  N'Christian Bale',        '1974-01-30', N'Ýngiltere'),
(4,  N'Marlon Brando',         '1924-04-03', N'ABD'),
(5,  N'Henry Fonda',           '1905-05-16', N'ABD'),
(6,  N'Liam Neeson',           '1952-06-07', N'Ýrlanda'),
(7,  N'Elijah Wood',           '1981-01-28', N'ABD'),
(8,  N'John Travolta',         '1954-02-18', N'ABD'),
(9,  N'Clint Eastwood',        '1930-05-31', N'ABD'),
(10, N'Brad Pitt',             '1963-12-18', N'ABD'),
(11, N'Edward Norton',         '1969-08-18', N'ABD'),
(12, N'Tom Hanks',             '1956-07-09', N'ABD'),
(13, N'Leonardo DiCaprio',     '1974-11-11', N'ABD'),
(14, N'Matthew McConaughey',   '1969-11-04', N'ABD'),
(15, N'Keanu Reeves',          '1964-09-02', N'Kanada'),
(16, N'Takeshi Kaneshiro',     '1973-10-11', N'Tayvan'),
(17, N'Toshirô Mifune',        '1920-04-01', N'Japonya'),
(18, N'Roberto Benigni',       '1952-10-27', N'Ýtalya'),
(19, N'Michael Clarke Duncan', '1957-12-10', N'ABD'),
(20, N'Ryunosuke Kamiki',      '1993-05-19', N'Japonya');

DELETE FROM FilmOyuncu;
DELETE FROM Oyuncu;

INSERT INTO Oyuncu (OyuncuID, AdSoyad, Doðumtarihi, Ülke) VALUES
(1,  N'Tim Robbins',            '1958-10-16', N'ABD'),              -- Esaretin Bedeli
(2,  N'Morgan Freeman',         '1937-06-01', N'ABD'),              -- Esaretin Bedeli
(3,  N'Marlon Brando',          '1924-04-03', N'ABD'),              -- Baba
(4,  N'Al Pacino',              '1940-04-25', N'ABD'),              -- Baba
(5,  N'Christian Bale',         '1974-01-30', N'Ýngiltere'),        -- Kara Þövalye
(6,  N'Heath Ledger',           '1979-04-04', N'Avustralya'),       -- Kara Þövalye
(7,  N'Robert Duvall',          '1931-01-05', N'ABD'),              -- (alternatif)
(8,  N'Henry Fonda',            '1905-05-16', N'ABD'),              -- 12 Öfkeli Adam
(9,  N'Lee J. Cobb',            '1911-12-08', N'ABD'),              -- 12 Öfkeli Adam
(10, N'Liam Neeson',            '1952-06-07', N'Ýrlanda'),          -- Schindler
(11, N'Ben Kingsley',           '1943-12-31', N'Ýngiltere'),        -- Schindler
(12, N'Elijah Wood',            '1981-01-28', N'ABD'),              -- LOTR
(13, N'Viggo Mortensen',        '1958-10-20', N'ABD'),              -- LOTR
(14, N'Uma Thurman',            '1970-04-29', N'ABD'),              -- (alternatif)
(15, N'John Travolta',          '1954-02-18', N'ABD'),              -- Pulp Fiction
(16, N'Samuel L. Jackson',      '1948-12-21', N'ABD'),              -- Pulp Fiction
(17, N'Clint Eastwood',         '1930-05-31', N'ABD'),              -- Good, Bad, Ugly
(18, N'Eli Wallach',            '1915-12-07', N'ABD'),              -- Good, Bad, Ugly
(19, N'Brad Pitt',              '1963-12-18', N'ABD'),              -- Fight Club
(20, N'Edward Norton',          '1969-08-18', N'ABD');             

INSERT INTO FilmOyuncu (FilmID, OyuncuID) VALUES
(1,  1),   -- Tim Robbins
(1,  2),   -- Morgan Freeman
(2,  3),   -- Marlon Brando
(2,  4),   -- Al Pacino
(3,  5),   -- Christian Bale
(3,  6),   -- Heath Ledger
(4,  3),   -- Marlon Brando
(4,  4),   -- Al Pacino
(5,  8),   -- Henry Fonda
(5,  9),   -- Lee J. Cobb
(6, 10),   -- Liam Neeson
(6, 11),   -- Ben Kingsley
(7, 12),   -- Elijah Wood
(7, 13),   -- Viggo Mortensen
(8, 15),   -- John Travolta
(8, 16),   -- Samuel L. Jackson
(9, 17),   -- Clint Eastwood
(9, 18),   -- Eli Wallach
(11,19),   -- Brad Pitt
(11,20);   -- Edward Norton

INSERT INTO Yönetmen (YönetmenID, AdSoyad, Doðumtarihi, Ülke)
VALUES
(1,  N'Frank Darabont',     '1959-01-28', N'ABD'),
(2,  N'Francis Ford Coppola','1939-04-07', N'ABD'),
(3,  N'Christopher Nolan',  '1970-07-30', N'Ýngiltere'),
(4,  N'Sidney Lumet',       '1924-06-25', N'ABD'),
(5,  N'Steven Spielberg',   '1946-12-18', N'ABD'),
(6,  N'Peter Jackson',      '1961-10-31', N'Yeni Zelanda'),
(7,  N'Quentin Tarantino',  '1963-03-27', N'ABD'),
(8,  N'Sergio Leone',       '1929-01-03', N'Ýtalya'),
(9,  N'David Fincher',      '1962-08-28', N'ABD'),
(10, N'Robert Zemeckis',    '1951-05-14', N'ABD'),
(11, N'Makoto Shinkai',     '1973-02-09', N'Japonya'),
(12, N'Lana Wachowski',     '1965-06-21', N'ABD'),
(13, N'Lilly Wachowski',    '1967-12-29', N'ABD'),
(14, N'Akira Kurosawa',     '1910-03-23', N'Japonya'),
(15, N'Roberto Benigni',    '1952-10-27', N'Ýtalya'),
(16, N'Sam Mendes',         '1965-08-01', N'Ýngiltere'),
(17, N'Denis Villeneuve',   '1967-10-03', N'Kanada'),
(18, N'Ridley Scott',       '1937-11-30', N'Ýngiltere'),
(19, N'James Cameron',      '1954-08-16', N'Kanada'),
(20, N'Martin Scorsese',    '1942-11-17', N'ABD');

INSERT INTO FilmYönetmen (FilmID, YönetmenID)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 2),
(5, 4),
(6, 5),
(7, 6),
(8, 7),
(9, 8),
(10,6),
(11,9),
(12,10),
(13,3),
(14,3),
(15,12),
(16,16),
(17,14),
(18,15),
(19,5),
(20,11);
CREATE TABLE KullaniciPuan (
    PuanID INT PRIMARY KEY,
    kullanýcýID INT NOT NULL,
    FilmID INT NOT NULL,
    FOREIGN KEY (PuanID) REFERENCES Puan(PuanID),
    FOREIGN KEY (kullanýcýID) REFERENCES Kullanýcý(kullanýcýID),
    FOREIGN KEY (FilmID) REFERENCES Film(FilmID)
);
-- Kullanýcý 1, Film 1'e Puan 1'i vermiþtir, vb.
INSERT INTO KullaniciPuan (PuanID, kullanýcýID, FilmID) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20);


SELECT *                                                         --1.sorgu"tüm film tablosunu gösterme"
FROM Film;                                                       
SELECT Ad FROM Kullanýcý;                                        --2.sorgu "Kullanýcýlarýn isimleri"
SELECT * FROM Oyuncu WHERE Doðumtarihi < '1970-01-01';           --3.sorgu "1970den önce doðmuþ oyuncular"
SELECT * FROM Film ORDER BY Yapýmyýlý DESC;                      --4.sorgu "filmleri yeniden eskiye sýralama"
SELECT * FROM Film WHERE Tür = N'Bilim Kurgu';                   --5.sorgu "türü bilim kurgu olan filmler"
SELECT * FROM Kullanýcý WHERE Email LIKE '%gmail.com';           --6.sorgu "gmail kullanan kullanýcýlar"
SELECT Tür, COUNT(*) AS 'Film Sayýsý'                            --7.sorgu "türleri film sayýsýna göre sýralama"
FROM Film
GROUP BY Tür
ORDER BY COUNT(*) DESC;

SELECT Oyuncu.AdSoyad, COUNT(FilmOyuncu.FilmID) AS 'Film Sayýsý' --8.sorgu "1den fazla filmde oynayan oyuncular"        
FROM Oyuncu
JOIN FilmOyuncu ON Oyuncu.OyuncuID = FilmOyuncu.OyuncuID
GROUP BY Oyuncu.AdSoyad
HAVING COUNT(FilmOyuncu.FilmID) > 1
ORDER BY COUNT(FilmOyuncu.FilmID) DESC;

SELECT                                                          --9.sorgu "aksiyon türünde yapýlan filmlerin yönetmenleri ve yönetmenlerin ülkesi"
    Film.Baþlýk AS 'Film Adý',
    Yönetmen.AdSoyad AS 'Yönetmen',
    Yönetmen.Ülke AS 'Yönetmenin Ülkesi'
FROM  Film
JOIN  FilmYönetmen ON Film.FilmID = FilmYönetmen.FilmID
JOIN  Yönetmen ON FilmYönetmen.YönetmenID = Yönetmen.YönetmenID
WHERE  Film.Tür = N'Aksiyon'
ORDER BY  Film.Baþlýk;

	SELECT TOP 3 Oyuncu.AdSoyad, Oyuncu.Doðumtarihi            --10.sorgu"En genç 3 oyuncu"
FROM Oyuncu
ORDER BY Oyuncu.Doðumtarihi DESC;






SELECT Film.Baþlýk, Film.Süre                                 --11.sorgu " Türü Suç olup 160 dakikdadan kýsa olan filmler"
FROM Film
WHERE Film.Tür = N'Suç' AND Film.Süre < 160;   


SELECT TOP 5 Film.Baþlýk, Puan.Puandeðeri                   --12.sorgu "En yüksek puanlý 5 film"
FROM Film
JOIN KullaniciPuan ON Film.FilmID = KullaniciPuan.FilmID
JOIN Puan ON KullaniciPuan.PuanID = Puan.PuanID
ORDER BY Puan.Puandeðeri DESC;



SELECT *                                                        --13.sorgu "ismi C ile baþlayan oyuncular"
FROM Oyuncu                                              
WHERE AdSoyad LIKE 'C%';

SELECT *                                                        --14.sorgu"Ýngiliz yönetmenler"
FROM Yönetmen
WHERE ülke = 'Ýngiltere';

SELECT TOP 1                                                    --15.sorgu"en uzun süreli film"
    Baþlýk AS 'Film Adý', 
    Süre AS 'Süre (dakika)', 
    Tür AS 'Film Türü', 
    Yapýmyýlý AS 'Yapým Yýlý'
FROM 
    Film
ORDER BY 
    Süre DESC;

SELECT                                                          --16.sorgu"verilen ortalama puandan daha yüksek puan alan filmler"
    Film.Baþlýk AS [Film Adý],
    AVG(Puan.Puandeðeri) AS [Film Ortalama Puaný],
    (SELECT AVG(Puandeðeri) FROM Puan) AS [Genel Ortalama Puan]
FROM 
    Film
JOIN 
    KullaniciPuan ON Film.FilmID = KullaniciPuan.FilmID
JOIN 
    Puan ON KullaniciPuan.PuanID = Puan.PuanID
GROUP BY 
    Film.FilmID, Film.Baþlýk
HAVING 
    AVG(Puan.Puandeðeri) > (SELECT AVG(Puandeðeri) FROM Puan)
ORDER BY 
    AVG(Puan.Puandeðeri) DESC;

	SELECT                                                   --17.sorgu"farklý türlerin film sayýlarý,ortalama süreleri ve ortalama puanlarý"
    Film.Tür AS [Film Türü],
    COUNT(Film.FilmID) AS [Film Sayýsý],
    AVG(Film.Süre) AS [Ortalama Süre (dk)],
    AVG(Puan.Puandeðeri) AS [Ortalama Puan]
FROM 
    Film
LEFT JOIN 
    KullaniciPuan ON Film.FilmID = KullaniciPuan.FilmID
LEFT JOIN 
    Puan ON KullaniciPuan.PuanID = Puan.PuanID
GROUP BY 
    Film.Tür
ORDER BY 
    COUNT(Film.FilmID) DESC;
	
SELECT TOP 3                                                      --18.sorgu"en düþük puanlý 3 film"
    Film.Baþlýk AS [Film Adý],
    AVG(Puan.Puandeðeri) AS [Ortalama Puan]
FROM 
    Film
JOIN 
    KullaniciPuan ON Film.FilmID = KullaniciPuan.FilmID
JOIN 
    Puan ON KullaniciPuan.PuanID = Puan.PuanID
GROUP BY 
    Film.FilmID, Film.Baþlýk
ORDER BY 
    AVG(Puan.Puandeðeri) ASC;
	SELECT TOP 1							           	--19.sorgu "en kýsa süreli film"                                     
    Baþlýk AS [Film Adý],
    Süre AS [Süre (Dakika)],
    Tür AS [Film Türü],
    Yapýmyýlý AS [Yapým Yýlý]
FROM 
    Film
ORDER BY 
    Süre ASC;
	 
	SELECT                                             --20.sorgu"en çok puan verilen günler"
    DATENAME(WEEKDAY, Puan.Puantarihi) AS Gün,
    COUNT(*) AS PuanSayýsý
FROM 
    Puan
GROUP BY 
    DATENAME(WEEKDAY, Puan.Puantarihi)
ORDER BY 
    PuanSayýsý DESC;

	