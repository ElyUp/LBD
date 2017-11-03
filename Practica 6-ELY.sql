CREATE VIEW Estado AS
SELECT Manga.Estado, COUNT(manga.IDGenero) AS 'Nid', SUM([Nivel-Acceso]) AS 'NA', MAX([Nivel-Acceso]) AS 'MNA' 
FROM Manga
JOIN Genero ON Genero.IDGenero = Manga.IDGenero
GROUP BY Manga.Estado

SELECT *
FROM Estado
---------------------------------------------------------------------------------------------------------------
CREATE VIEW Capitulo AS
SELECT RegistroCapituloM.Estado, CapituloManga.Tomo, CapituloManga.NumeroCapitulo
FROM CapituloManga
JOIN RegistroCapituloM ON RegistroCapituloM.IDRegistroCapMan = CapituloManga.IDRegistroCapMan

SELECT *
FROM Capitulo
---------------------------------------------------------------------------------------------------------------
CREATE VIEW Mangas AS
SELECT Genero.Nombre AS 'Genero', Manga.Nombre AS 'Manga', RegistroManga.IDRegistroManga
FROM Genero
JOIN Manga ON Manga.IDGenero = Genero.IDGenero
JOIN RegistroManga ON RegistroManga.IDRegistroManga = Manga.IDRegistroManga

SELECT *
FROM Mangas
---------------------------------------------------------------------------------------------------------------
CREATE VIEW Detalles AS
SELECT Manga.Estado, CapituloManga.Nombre, CapituloManga.Tomo
FROM CapituloManga
JOIN Manga ON Manga.IDManga = CapituloManga.IDManga

SELECT *
FROM Detalles
---------------------------------------------------------------------------------------------------------------
CREATE VIEW Lista AS
SELECT Genero.Nombre AS 'Genero', Manga.Nombre AS 'Manga', CapituloManga.NumeroCapitulo
FROM Genero
JOIN Manga ON Manga.IDGenero = Genero.IDGenero
JOIN CapituloManga ON CapituloManga.IDManga = Manga.IDManga

SELECT *
FROM Lista
----------------------------------------------------------------------------------------------------------------
CREATE VIEW ValorActual AS
SELECT [Detalles-RM].ValorActual AS 'ValorManga', Manga.Nombre AS 'Manga', CapituloManga.NumeroCapitulo AS 'Capitulo'
FROM [Detalles-RM]
JOIN Manga ON Manga.IDRegistroManga = [Detalles-RM].IDRegistroManga
JOIN CapituloManga ON CapituloManga.IDManga = Manga.IDManga

SELECT *
FROM ValorActual

---------------------------------------------------------------------------

SELECT *
FROM 
(
SELECT *
FROM CapituloManga
WHERE Tomo > 59
) AS TomosMax
WHERE TomosMax.Tomo < 84 
---------------------------------------------------------------------------
WITH Prueba as 
(
SELECT Genero.Nombre AS 'Genero', Manga.Nombre AS 'Manga'
FROM Genero, Manga
WHERE Genero.IDGenero = Manga.IDGenero
)
SELECT *
FROM Prueba
WHERE Prueba.Genero = 'Gore'
----------------------------------------------------------------------------
SELECT Manga.Nombre, CapituloManga.NumeroCapitulo, CapituloManga.Tomo
INTO #PruebaTemp
FROM Manga,CapituloManga
WHERE CapituloManga.Tomo > 59 and Manga.IDManga = CapituloManga.IDManga

SELECT *
FROM #PruebaTemp
-----------------------------------------------------------------------------