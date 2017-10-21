SELECT Genero.Nombre, Manga.Nombre
FROM Genero, Manga
WHERE Genero.IDGenero = Manga.IDGenero
GROUP BY Manga.Nombre, Genero.Nombre
ORDER BY Manga.Nombre, Genero.Nombre ASC

-----------------------------------------------------------

select Genero.Nombre, COUNT(manga.IDGenero)
  from manga, Genero
  where Genero.IDGenero = Manga.IDGenero
  GROUP by Genero.Nombre

  
  select Manga.Estado, COUNT(manga.IDGenero)
  from manga, Genero
  where Genero.IDGenero = Manga.IDGenero
  GROUP by Manga.Estado
-------------------------------------------------------------

SELECT RegistroManga.IDRegistroManga COUNT(IDRegistroManga) AS 'IDRM', CapituloManga.Tomo SUM(Tomo) AS 'TT', CapituloManga.Nivel-Acceso MAX([Nivel-Acceso]) AS 'NA' 
FROM RegistroManga, CapituloManga 

SELECT COUNT(Manga.Nombre) AS 'M', SUM(NumeroCapitulo) AS 'NC', MAX(Tomo) AS 'T' 
FROM Manga, CapituloManga 

SELECT COUNT(IDRegistroManga) AS 'IDRM', SUM(Tomo) AS 'TT', MAX([Nivel-Acceso]) AS 'NA' 
FROM RegistroManga, CapituloManga 
WHERE IDRegistroManga= '084CDC7B-13FC-4B23-855C-C6BC8295C628'

SELECT COUNT(Manga.Nombre) AS 'M', SUM(NumeroCapitulo) AS 'NC', MAX(Tomo) AS 'T' 
FROM Manga, CapituloManga 
WHERE Tomo= '70'


SELECT COUNT(IDRegistroManga) AS 'IDRM', SUM(Tomo) AS 'TT', MAX([Nivel-Acceso]) AS 'NA' 
FROM RegistroManga, CapituloManga 
HAVING COUNT ([Nivel-Acceso]) > 8

SELECT COUNT(Manga.Nombre) AS 'M', SUM(NumeroCapitulo) AS 'NC', MAX(Tomo) AS 'T' 
FROM Manga, CapituloManga 
HAVING COUNT(NumeroCapitulo) > 1

------------------------------

SELECT TOP 1 * 
FROM Manga
ORDER BY Manga.[Nivel-Acceso] ASC