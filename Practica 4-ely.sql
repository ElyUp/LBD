Use [Pagina web]
GO
select *
from Genero

insert into Genero (IDGenero, Nombre)
values (NEWID(), 'Romance')

insert into Genero (IDGenero, Nombre)
values (NEWID(), 'Aventura')

insert into Genero (IDGenero, Nombre)
values (NEWID(), 'Gore')


select *
from RegistroManga

insert into RegistroManga(IDRegistroManga, FechaHora, Estado)
values (NEWID(), '2017-10-14', 'Listo')

insert into RegistroManga(IDRegistroManga, FechaHora, Estado)
values (NEWID(), '2017-10-14', 'Ausente')

insert into RegistroManga(IDRegistroManga, FechaHora, Estado)
values (NEWID(), '2017-10-14', 'Proceso')

select *
from [Detalles-RM]

insert into [Detalles-RM] ([IDDetalles-RM], Atributos, ValorActual, ValorPasado, IDRegistroManga)
values (NEWID(), 'Good', 'Nuevo', 'Nuevo', 'E6E10443-3779-4339-AE5C-3313E3E37EC2')

insert into [Detalles-RM] ([IDDetalles-RM], Atributos, ValorActual, ValorPasado, IDRegistroManga)
values (NEWID(), 'Good', 'Nuevo', 'Viejo', '6ADA7965-670F-41F2-8B7C-12CE3D2D8356')

insert into [Detalles-RM] ([IDDetalles-RM], Atributos, ValorActual, ValorPasado, IDRegistroManga)
values (NEWID(), 'Bad', 'Viejo', 'Viejo', 'C474952D-9D41-4E6C-8DD2-A8DBE74FA653')


select *
from Manga

insert into Manga (IDManga, Nombre, Descripcion, Estado, Descarga, [Nivel-Acceso], IDGenero, IDRegistroManga)
values (newid(), 'Kimi Ni Todoke', 'Chica timida que da miedo pero es muy buena', 'Terminado', 'http', '8', 'BAEBB540-437D-4022-AF1E-81C0D77ABA92', '1255CB7B-D649-44A3-8BEA-046C541B222F')

insert into Manga (IDManga, Nombre, Descripcion, Estado, Descarga, [Nivel-Acceso], IDGenero, IDRegistroManga)
values (newid(), 'Made In Abyss', 'Dos niños se´pieden en un pozo sin fin', 'Pendiendiente', 'http', '9', '6E6D5874-CAD3-4C06-A918-23B63B2C13FC', 'C474952D-9D41-4E6C-8DD2-A8DBE74FA653')

insert into Manga (IDManga, Nombre, Descripcion, Estado, Descarga, [Nivel-Acceso], IDGenero, IDRegistroManga)
values (newid(), 'Another', 'En un salon de clases siempre sobra un banco, si alguien lo llena, uno de ellos esta muerto sin saber', 'Proceso', 'http', '8', 'B5BC5565-244D-41D6-851D-850AFF310268', '6ADA7965-670F-41F2-8B7C-12CE3D2D8356')


select *
from RegistroCapituloM

insert into RegistroCapituloM(IDRegistroCapMan, FechaHora, Estado)
values (NEWID(), '2017-10-14', 'Listo')

insert into RegistroCapituloM(IDRegistroCapMan, FechaHora, Estado)
values (NEWID(), '2017-10-14', 'Ausente')

insert into RegistroCapituloM(IDRegistroCapMan, FechaHora, Estado)
values (NEWID(), '2017-10-14', 'Proceso')


select *
from [Detalles-RCM]

insert into [Detalles-RCM] ([IDDetalles-RCM], Atributos, ValorActual, ValorPasado, IDRegistroCapMan)
values (NEWID(), 'Good', 'Nuevo', 'Nuevo', '4115667D-A66F-4895-A44D-DA5C59D31C6C')

insert into [Detalles-RCM] ([IDDetalles-RCM], Atributos, ValorActual, ValorPasado, IDRegistroCapMan)
values (NEWID(), 'Good', 'Nuevo', 'Viejo', 'EFBFEA88-2448-405C-9CF9-70DFA3CD8577')

insert into [Detalles-RCM] ([IDDetalles-RCM], Atributos, ValorActual, ValorPasado, IDRegistroCapMan)
values (NEWID(), 'Bad', 'Viejo', 'Viejo', '30C1A567-4A66-4C88-B783-63B9E27A7A78')


select *
from CapituloManga

insert into CapituloManga (IDCapituloManga, Tomo, NumeroCapitulo, Nombre, Descripción, URL, [Nivel-Acceso], IDManga, IDRegistroCapMan)
values (NEWID(), '70', '1', 'Chica flor', 'Hoy sera un dia especial y unico para ella', 'https', '8', '6BA6B68A-2B56-4FF3-AC53-142BB4D7D91F', '4115667D-A66F-4895-A44D-DA5C59D31C6C')

insert into CapituloManga (IDCapituloManga, Tomo, NumeroCapitulo, Nombre, Descripción, URL, [Nivel-Acceso], IDManga, IDRegistroCapMan)
values (NEWID(), '59', '6', 'Hoy no fui yo', 'Siente que todos lo precionan, sera que es su culpa?', 'https', '8', '117318BF-17EF-40E5-8E35-6B50C627BCE7', 'EFBFEA88-2448-405C-9CF9-70DFA3CD8577')

insert into CapituloManga (IDCapituloManga, Tomo, NumeroCapitulo, Nombre, Descripción, URL, [Nivel-Acceso], IDManga, IDRegistroCapMan)
values (NEWID(), '84', '12', 'Sera mejor mañana', 'Despues de ser lastimada, se podria recuperar o morir...', 'https', '10', '117318BF-17EF-40E5-8E35-6B50C627BCE7', '30C1A567-4A66-4C88-B783-63B9E27A7A78')


select *
from Genero

select *
from RegistroManga

select *
from [Detalles-RM]

select *
from Manga

select *
from RegistroCapituloM

select *
from [Detalles-RCM]

select *
from CapituloManga

UPDATE Genero set Nombre = 'Gore sin sangre'
where IDGenero = 'B5BC5565-244D-41D6-851D-850AFF310268'

UPDATE Manga set Estado = 'Andando' 
where Nombre = 'Another'

UPDATE Manga set Descarga = 'xml'
where Nombre = 'Made In Abyss'

UPDATE CapituloManga set NumeroCapitulo = '16'
where IDCapituloManga = 'FE0AC314-DCDC-45A6-83FE-E412D1F784FD'

UPDATE Genero set Nombre = 'Amor'
where IDGenero = '6E6D5874-CAD3-4C06-A918-23B63B2C13FC'

DELETE
from Manga 
Where IDManga = '117318BF-17EF-40E5-8E35-6B50C627BCE7'

DELETE
from Manga 
Where IDManga = '6BA6B68A-2B56-4FF3-AC53-142BB4D7D91F'

DELETE
from CapituloManga 
Where IDCapituloManga = 'FF4ADC16-03DF-482E-B8E5-67FC291A21CE'

DELETE
from CapituloManga 
Where IDCapituloManga = '26CB27ED-0AB3-48DE-AAB3-30C146D4E2C1'

DELETE
from Genero 
Where IDGenero = 'BAEBB540-437D-4022-AF1E-81C0D77ABA92'