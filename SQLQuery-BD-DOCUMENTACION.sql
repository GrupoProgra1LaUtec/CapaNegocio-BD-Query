CREATE DATABASE DOCUMENTACION

CREATE TABLE CATEGORIA(
ID_CATEGORIA VARCHAR(90) PRIMARY KEY NOT NULL,
NOMBRE_CATEGORIA VARCHAR(150) NOT NULL,
TIPO_REPUESTO VARCHAR(150) NOT NULL,
DESCRIPCION VARCHAR(150) NOT NULL
)

CREATE TABLE PROVEEDOR(
ID_PROVEEDOR VARCHAR(90) PRIMARY KEY NOT NULL,
NOMBRE_EMPRESA VARCHAR(150) NOT NULL,
NOMBRE_CONTACTO VARCHAR(150) NOT NULL,
DIRECCION_PROV VARCHAR(150) NOT NULL,
CIUDAD_PROV VARCHAR(150) NOT NULL,
REGION_PROV VARCHAR(150) NOT NULL,
CP_PROV INT NOT NULL,
PAIS_PROV VARCHAR(150) NOT NULL,
TELEFONO_PROV VARCHAR(90) NOT NULL,
FAX_PROV VARCHAR(90) NULL,
EMAIL_PROV VARCHAR(90) NULL,
WEB_PROV VARCHAR(90) NULL,
)

DROP TABLE ROL

CREATE TABLE ROL(
ID_ROL VARCHAR(90) PRIMARY KEY NOT NULL,
NOMBRE_ROL VARCHAR(150) NOT NULL,
DESCRIPCION VARCHAR(150) NOT NULL
)

CREATE TABLE USUARIO(
ID_USUARIO VARCHAR(90) PRIMARY KEY NOT NULL,
ID_ROL_USER VARCHAR(90) NOT NULL,
NOMBRE_USUARIO VARCHAR(150) NOT NULL,
PASSWORD_USUARIO VARCHAR(150) NOT NULL,
ESTADO_USUARIO VARCHAR(150) NOT NULL,
CONSTRAINT FK_ID_ROL_USER FOREIGN KEY(ID_ROL_USER) REFERENCES ROL(ID_ROL)
)

CREATE TABLE TIPO_CLIENTE(
ID_TIPO INT PRIMARY KEY NOT NULL,
NOMBRE_TIPO VARCHAR(90) NOT NULL,
DESCRIPCION VARCHAR(150) NOT NULL
)

CREATE TABLE CLIENTE(
ID_CLIENTE INT PRIMARY KEY NOT NULL,
NOMBRE_CLIENTE VARCHAR(150) NOT NULL, 
APELLIDO_CLIENTE VARCHAR(150) NOT NULL,  
DUI VARCHAR(90) NOT NULL, 
NIT VARCHAR(90) NOT NULL, 
ID_TIPO_CLIENTE INT NOT NULL,  
DIRECCION_CLIENTE VARCHAR(90) NOT NULL, 
PAIS_CLIENTE VARCHAR(90) NOT NULL, 
MONEDA VARCHAR(90) NOT NULL, 
TELEFONO_CLIENTE VARCHAR(90), 
EMAIL_CLIENTE VARCHAR(150), 
DIAS_CREDITO INT NOT NULL, 
LIMITE_CREDITO FLOAT NOT NULL,	
CONSTRAINT FK_ID_TIPO_CLIENTE FOREIGN KEY(ID_TIPO_CLIENTE) REFERENCES TIPO_CLIENTE(ID_TIPO)
)

CREATE TABLE EMPLEADO(
COD_EMPLEADO VARCHAR(90) PRIMARY KEY NOT NULL, 
NOMBRE_EMPLEADO VARCHAR(90) NOT NULL, 
APELLIDO_EMPLEADO VARCHAR(90) NOT NULL, 
DPTO_EMPLEADO VARCHAR(90) NOT NULL, 
FECHA_INGRESO VARCHAR(90) NOT NULL, 
TELEFONO_EMPLEADO VARCHAR(90) NOT NULL, 
EMAIL_EMPLEADO VARCHAR(90) NOT NULL, 
FECHA_NACIMIENTO VARCHAR(90) NOT NULL, 
ESTUDIOS_ACADEMICOS VARCHAR(90) NOT NULL
)
