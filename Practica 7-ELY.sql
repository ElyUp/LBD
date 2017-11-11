create Procedure ReporteCapitulo(@valor int)
as 
begin 
select * 
from dbo.Capitulo
where NumeroCapitulo >1
end

exec ReporteCapitulo 8

----------------------------------------------------------------

create Procedure ReporteDetalles(@valor int)
as 
begin 
select * 
from dbo.Detalles
where Tomo > 59
end

exec ReporteDetalles 8

----------------------------------------------------------------

create Procedure ReporteEstado(@valor int)
as 
begin 
select * 
from dbo.Estado
where NA >= 8
end

exec ReporteEstado 1

----------------------------------------------------------------

create Procedure ReporteLista(@valor varchar)
as 
begin 
select * 
from dbo.Lista
where Genero = 'Aventura'
end

exec ReporteLista 'a'

----------------------------------------------------------------

create Procedure ReporteManga(@valor varchar)
as 
begin 
select * 
from dbo.Mangas
where Manga <> 'Another'
end

exec ReporteManga 'an'

----------------------------------------------------------------

select *
from Capitulo

create function PromedioDeCap(@Numero int, @Numero2 int, @Numero3 int)
returns float 
as
begin
	return (@Numero + @Numero2 + @Numero3)/3   
	end

select dbo.PromedioDeCap(6, 1, 12) as 'Prom de 3 capitulos'

----------------------------------------------------------------

create trigger DisparadorManga
on CapituloManga
after update 
as
begin
select * 
from inserted
end

update CapituloManga
set CapituloManga.NumeroCapitulo = '8'
from CapituloManga
where CapituloManga.NumeroCapitulo = '1'

select * from CapituloManga

----------------------------------------------------------------

create trigger DisparadorGenero
on Genero
instead of update 
as 
IF UPDATE (Nombre)
	begin
		select * 
		from inserted
	end
else 
	begin
		select * 
		from Genero
end

update Genero
set Nombre = 'Amor'
from Genero
where Nombre = 'Romance'

select * from Genero

----------------------------------------------------------------
