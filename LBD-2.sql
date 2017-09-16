create database DATOS;

create TABLE DATOS_PERSONALES
( 
ID uniqueidentifier NOT NULL primary key
,Nombre CHAR NOT NULL
,Apellido VARCHAR(50) NOT NULL
,FN DATE NOT NULL
,Edad AS DATEDIFF(YEAR, FN, GETDATE()) 
,Sexo CHAR NOT NULL 
,Dirección VARCHAR(150) NOT NULL
);

CREATE TABLE DATOS_CINE
( 
Credencial INT NOT NULL primary key
,Clase CHAR NOT NULL
,Nombre CHAR NOT NULL
,Apellido VARCHAR(50) NOT NULL
,FN DATE NOT NULL
,Edad AS DATEDIFF(YEAR, FN, GETDATE()) 
,Sexo CHAR NULL 
,Email VARCHAR(45) NULL
);

CREATE TABLE DATOS_RESTAURANTE
( 
Codigo TINYINT NOT NULL primary key
,Nombre CHAR NOT NULL
,Apellido VARCHAR(50) NOT NULL
,Compras Money NULL
,FN DATE NOT NULL
,Edad AS DATEDIFF(YEAR, FN, GETDATE()) 
,Sexo CHAR NULL 
);

CREATE TABLE DATOS_HOSPITAL
(
Codigo INT NOT NULL primary key
,Nombre CHAR NOT NULL
,Apellidos VARCHAR(50) NOT NULL
,FN DATE NOT NULL
,Edad AS DATEDIFF(YEAR, FN, GETDATE()) 
,Telefono INT NOT NULL
,Ingreso TIME NOT NULL
,Especialidad TEXT NOT NULL
);

CREATE TABLE DATOS_ESCUELA
(
Matricula INT NOT NULL primary key
,Nombre CHAR NOT NULL
,Apellidos VARCHAR(50) NOT NULL
,Aprovado BIT NOT NULL
,FN DATE NOT NULL
,Edad AS DATEDIFF(YEAR, FN, GETDATE()) 
,Sexo CHAR NULL
);

CREATE TABLE DATOS_TIENDA
(
ID INT NOT NULL primary key
,Nombre CHAR NOT NULL
,Horario TEXT NOT NULL
,Ubicacion VARCHAR(150) NOT NULL
,Productos int NOT NULL
,Ganancias FLOAT NOT NULL
,Perdidas FLOAT NOT NULL
);

CREATE TABLE DATOS_HOTEL
(
ID INT NOT NULL primary key
,Clase CHAR NOT NULL
,Nombre CHAR NOT NULL
,Apellidos VARCHAR(50) NOT NULL
,FN DATE NOT NULL
,Edad AS DATEDIFF(YEAR, FN, GETDATE()) 
,Telefono INT NOT NULL
,Email VARCHAR(45) NULL
);
