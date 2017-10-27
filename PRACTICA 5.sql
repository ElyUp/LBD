SELECT Genero.Nombre, Manga.Nombre
FROM Genero, Manga
WHERE Genero.IDGenero = Manga.IDGenero
GROUP BY Manga.Nombre, Genero.Nombre
ORDER BY Manga.Nombre, Genero.Nombre ASC
------------------------------------------------------------------------------------

select Manga.Estado, COUNT(manga.IDGenero) AS 'Nid', SUM([Nivel-Acceso]) AS 'NA', MAX([Nivel-Acceso]) AS 'MNA' 
from manga, Genero
where Genero.IDGenero = Manga.IDGenero
GROUP by Manga.Estado
---------------------------------------------------------------------------------------

SELECT COUNT(Manga.Nombre) AS 'M', SUM(NumeroCapitulo) AS 'NC', MAX(Tomo) AS 'T' 
FROM Manga, CapituloManga 
WHERE CapituloManga.IDManga=Manga.IDManga 


SELECT COUNT(RegistroCapituloM.IDRegistroCapMan) AS 'IDRM', SUM(Tomo) AS 'TT', MAX([Nivel-Acceso]) AS 'NA' 
FROM RegistroCapituloM, CapituloManga 
WHERE RegistroCapituloM.IDRegistroCapMan = CapituloManga.IDRegistroCapMan 
-------------------------------------------------------------------------------------------------

SELECT Manga.Nombre, COUNT(Manga.Nombre) AS 'M', SUM(NumeroCapitulo) AS 'NC', MAX(Tomo) AS 'T' 
FROM Manga, CapituloManga
WHERE Manga.IDManga = CapituloManga.IDManga
GROUP BY Manga.Nombre 
HAVING MAX(Tomo) < 70

select Manga.Estado, COUNT(manga.IDGenero) AS 'Nid', SUM([Nivel-Acceso]) AS 'NA', MAX([Nivel-Acceso]) AS 'MNA' 
from manga, Genero
where Genero.IDGenero = Manga.IDGenero
GROUP by Manga.Estado
HAVING SUM([Nivel-Acceso]) < 17 
-------------------------------------------------------------------

SELECT TOP 2 * 
FROM Manga
ORDER BY Manga.[Nivel-Acceso] ASC

