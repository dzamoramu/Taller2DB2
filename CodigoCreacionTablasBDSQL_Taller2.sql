CREATE TABLE propietario(
	id_propietario int not null,
	nombre varchar(30),
	contacto varchar(20),
	mail varchar(40),
	contraseña varchar(15) not null,
	residencia varchar(25) not null,
	barrio varchar(20),
	localidad varchar(20), 
	primary key(id_propietario)
);

INSERT INTO propietario(id_propietario, nombre, contacto, mail, contraseña, residencia, barrio, localidad)
VALUES ('78459264','Lina Mendoza','3102457895','lina.mendoza@gmail.com', 'perritosano1', 'carrera 8 #145-45', 'tibabita', 'usaquen');

INSERT INTO propietario(id_propietario, nombre, contacto, mail, contraseña, residencia, barrio, localidad)
VALUES ('1335746942','Carlos Pinilla','3112447895','carlos.pinilla@hotmail.com', 'nosemeolvida1', 'calle 10 #14-45', 'San victorino', 'Candelaria');

INSERT INTO propietario(id_propietario, nombre, contacto, mail, contraseña, residencia, barrio, localidad)
VALUES ('657498512','Laura Rojas ','3214587542','laura.rojas@unbosque.edu.co', 'toronto23', 'carrera 45 # 28-51', 'Belalcazar', 'Los Martires');

INSERT INTO propietario(id_propietario, nombre, contacto, mail, contraseña, residencia, barrio, localidad)
VALUES ('147852369','Pablo Correa','3251457896','pablo.correa@gmail.com', 'rojo2314', 'carrera 45 #145-45', 'el cedrito', 'usaquen');

INSERT INTO propietario(id_propietario, nombre, contacto, mail, contraseña, residencia, barrio, localidad)
VALUES ('23614975','Anita manzanares','3214785987','anita.manzanares@yahoo.com', 'animalamable76', 'calle 70 # 25-21', 'Alcazares', 'barrios unidos');

INSERT INTO propietario(id_propietario, nombre, contacto, mail, contraseña, residencia, barrio, localidad)
VALUES ('1008746425','David Barrera','3168521478','david.barrera@unpunto.com', 'nocreoquelasepa', 'carrera 53 # 23 -41', 'Paulo IV', 'Teusaquillo');

INSERT INTO propietario(id_propietario, nombre, contacto, mail, contraseña, residencia, barrio, localidad)
VALUES ('7105624','Juan Moreno','3105478213','juan.moreno@gmail.com', 'facildeaprender', 'calle 134 # 25-37', 'soatama', 'suba');   

INSERT INTO propietario(id_propietario, nombre, contacto, mail, contraseña, residencia, barrio, localidad)
VALUES ('56426354','Felipe Blanco','3189764528','felipe.blanco@outlook.com', 'unicaensi65', 'calle 7 # 78 - 87', 'rosales', 'chapinero');

INSERT INTO propietario(id_propietario, nombre, contacto, mail, contraseña, residencia, barrio, localidad)
VALUES ('36985741','Angie rojas','3256987451','angie.rojas@gmail.com', 'zapato.2021', 'carrera 7 # 21 - 47', 'Sagrado corazon', 'santafe');

INSERT INTO propietario(id_propietario, nombre, contacto, mail, contraseña, residencia, barrio, localidad)
VALUES ('147826498','Fabian delgado','321757566','fabian.delgado@hotmail.com', 'relojdalahora', 'calle 8 #145-45', 'voto nacional', 'Los Martires');

INSERT INTO propietario(id_propietario, nombre, contacto, mail, contraseña, residencia, barrio, localidad)
VALUES ('9854263','Nelson cuadros','3152478962','nelson.cuadros@gmail.com', 'unafacil45', 'Cl. 138 #58 - 74', 'Colina campestre', 'Suba');

INSERT INTO propietario(id_propietario, nombre, contacto, mail, contraseña, residencia, barrio, localidad)
VALUES ('89416243','Carolina Vasquez','3129844895','caro.vasquez@gmail.com', 'samoyedo74', 'carrera 150 #15-45', 'Mazuren', 'usaquen');

INSERT INTO propietario(id_propietario, nombre, contacto, mail, contraseña, residencia, barrio, localidad)
VALUES ('142587496','Camilo Herrera','3103007895','camilo.herrera@hotmail.com', 'herrera74850', 'calle 4 #36-70', 'Tibana', 'Puente Aranda');

INSERT INTO propietario(id_propietario, nombre, contacto, mail, contraseña, residencia, barrio, localidad)
VALUES ('26974136','Laura Ramirez','3120878542','laura.ra@unbosque.edu.co', 'quebec23', 'calle 128 c # 45-74', 'Rubi', 'Suba');

INSERT INTO propietario(id_propietario, nombre, contacto, mail, contraseña, residencia, barrio, localidad)
VALUES ('74812671','Pablo Contreras','3223007896','pablo.contreas1@gmail.com', 'azul74', 'carrera 85 #74-33', 'La felicidad', 'Fontibon');


CREATE TABLE Mascota(
	id_propietario_mascota int NOT NULL,
	nombre varchar(40) NOT NULL, 
    edad int NOT NULL, 
	especie varchar(40) NOT NULL, 
    sexo varchar(40) NOT NULL,
	tamaño varchar(30) NOT NULL,
    potencialmente_peligroso varchar(30) NOT NULL,
    id_mascota varchar(25) NOT NULL,
    primary key (id_mascota),
    FOREIGN KEY(id_propietario_mascota) REFERENCES propietario(id_propietario) 
);

INSERT INTO mascota(id_propietario_mascota, nombre, edad,especie, sexo, tamaño, potencialmente_peligroso,id_mascota)
VALUES (78459264, 'Kira', 2, 'Pug','Hembra', 'Pequeño','No','ADG874') ;

INSERT INTO mascota(id_propietario_mascota, nombre, edad,especie, sexo, tamaño, potencialmente_peligroso,id_mascota)
VALUES (1335746942, 'Nova', 1, 'Samoyedo','Hembra', 'Mediano','No','BGH049') ;

INSERT INTO mascota(id_propietario_mascota, nombre, edad,especie, sexo, tamaño, potencialmente_peligroso,id_mascota)
VALUES (657498512, 'Tommy', 4, 'Golden retriever','Macho', 'Grande','No','QWR842') ;

INSERT INTO mascota(id_propietario_mascota, nombre, edad,especie, sexo, tamaño, potencialmente_peligroso,id_mascota)
VALUES (147852369, 'Ragnar', 3, 'Husky','Macho', 'Grande','No','OQI236') ;

INSERT INTO mascota(id_propietario_mascota, nombre, edad,especie, sexo, tamaño, potencialmente_peligroso,id_mascota)
VALUES (23614975, 'Nieve', 6, 'Border collie','Hembra', 'Mediano','No','TYI741') ;

INSERT INTO mascota(id_propietario_mascota, nombre, edad,especie, sexo, tamaño, potencialmente_peligroso,id_mascota)
VALUES (1008746425, 'Luna', 7, 'Dalmata','Hembra', 'Mediano','No','IUD652') ;

INSERT INTO mascota(id_propietario_mascota, nombre, edad,especie, sexo, tamaño, potencialmente_peligroso,id_mascota)
VALUES (7105624, 'Thor', 4, 'Rottweiler','Macho', 'Grande','Si','OQN123') ;

INSERT INTO mascota(id_propietario_mascota, nombre, edad,especie, sexo, tamaño, potencialmente_peligroso,id_mascota)
VALUES (56426354, 'Max', 6, 'Pitbull','Hembra', 'Grande','Si','NFG785') ;

INSERT INTO mascota(id_propietario_mascota, nombre, edad,especie, sexo, tamaño, potencialmente_peligroso,id_mascota)
VALUES (36985741, 'Mia', 3, 'Pomerania','Hembra', 'Pequeño','No','QIK741') ;

INSERT INTO mascota(id_propietario_mascota, nombre, edad,especie, sexo, tamaño, potencialmente_peligroso,id_mascota)
VALUES (147826498, 'Rocky', 8, 'Doberman','Hembra', 'Grande','Si','SFK745') ;

INSERT INTO mascota(id_propietario_mascota, nombre, edad,especie, sexo, tamaño, potencialmente_peligroso,id_mascota)
VALUES (9854263, 'Nala', 7, 'Pug','Hembra', 'Pequeño','No','YUG789') ;

INSERT INTO mascota(id_propietario_mascota, nombre, edad,especie, sexo, tamaño, potencialmente_peligroso,id_mascota)
VALUES (89416243, 'Coco', 5, 'Pastor aleman','Hembra', 'Grande','No','FJU741') ;

INSERT INTO mascota(id_propietario_mascota, nombre, edad,especie, sexo, tamaño, potencialmente_peligroso,id_mascota)
VALUES (142587496, 'Lucas', 4, 'Bulldog','Macho', 'Mediano','No','QWE422') ;

INSERT INTO mascota(id_propietario_mascota, nombre, edad,especie, sexo, tamaño, potencialmente_peligroso,id_mascota)
VALUES (269741356, 'Canela', 2, 'Pomerania','Hembra', 'Pequeño','No','IKN159') ;

INSERT INTO mascota(id_propietario_mascota, nombre, edad,especie, sexo, tamaño, potencialmente_peligroso,id_mascota)
VALUES (74812671, 'Maya', 8, 'Dachshund','Macho', 'Pequeño','No','YTJ852') ;


CREATE TABLE veterinaria (
  Nit VARCHAR(15) NOT NULL,
  Razon_Social VARCHAR(45) NOT NULL,
  Telefono VARCHAR(40) NOT NULL,
  correo VARCHAR(45) NOT NULL,
  direccion VARCHAR(45) NOT NULL,
  barrio VARCHAR(45) NOT NULL,
  localidad VARCHAR(45) NOT NULL,
  PRIMARY KEY (Nit));
  
  /* REGISTROS TABLA VETERINARIA */
INSERT INTO veterinaria(Nit,Razon_Social, telefono, correo, direccion, barrio, localidad) 
VALUES ('21109383-8','veterinaria la 34','344220901','la34@gmail.com','cra 34 #52-60','Veraguas Centra','Puente Aranda'),
('39891237-3','Los canchosos','504878552','canchosos@gmail.com','cra 87-22-3 ','J vargas','Barrios Unidos'),
('13520983-2','La merced veterinaria','872350559','lamerced@gmail.com','cra 45 #3-45','El campin','Martires'),
('10915493-8','Veterinaria Galan','146483735','VetGalan@gmail.com','Cra 34 #3-23','Galan','Puente aranda'),
('5870297-8','Veterinaria las cruces','745493661','lascrucesVet@gmail.com','Cra 23 #5-73','las cruces','marties');


CREATE TABLE tipos_casos_mascotas(
Nombre_mascota varchar(40) NOT NULL,  
caso  varchar(40) NOT NULL,  
fecha_ingreso date NOT NULL,     
nit_veterinaria varchar(20) NOT NULL,     
FOREIGN KEY(nit_veterinaria) REFERENCES veterinaria(Nit) 
);
  /* REGISTROS TABLA TIPOS CASOS MASCOTAS*/
INSERT INTO tipos_casos_mascotas(Nombre_mascota, caso, fecha_ingreso,nit_veterinaria )
VALUES ('Nala','perdida ','2020-12-12','5870297-8') ;

INSERT INTO tipos_casos_mascotas(Nombre_mascota, caso, fecha_ingreso,nit_veterinaria )
VALUES ('Jack','fallecimiento ','2021-04-01','10915493-8') ;

INSERT INTO tipos_casos_mascotas(Nombre_mascota, caso, fecha_ingreso,nit_veterinaria )
VALUES ('Canela','robo ','2021-08-13','10915493-8') ;

INSERT INTO tipos_casos_mascotas(Nombre_mascota, caso, fecha_ingreso,nit_veterinaria )
VALUES ('Bimba','perdida ','2021-07-28','13520983-2') ;

INSERT INTO tipos_casos_mascotas(Nombre_mascota, caso, fecha_ingreso,nit_veterinaria )
VALUES ('Zeus','robo ','2021-08-31','5870297-8') ;

INSERT INTO tipos_casos_mascotas(Nombre_mascota, caso, fecha_ingreso,nit_veterinaria )
VALUES ('Coco','fallecimiento ','2021-05-26','13520983-2') ;

INSERT INTO tipos_casos_mascotas(Nombre_mascota, caso, fecha_ingreso,nit_veterinaria )
VALUES ('Toby','perdida ','2021-02-25','39891237-3') ;

INSERT INTO tipos_casos_mascotas(Nombre_mascota, caso, fecha_ingreso,nit_veterinaria )
VALUES ('Bruno','fallecimiento ','2021-01-12','13520983-2') ;

INSERT INTO tipos_casos_mascotas(Nombre_mascota, caso, fecha_ingreso,nit_veterinaria )
VALUES ('Lucas','fallecimiento ','2021-06-04','39891237-3') ;

CREATE TABLE visitaVeterinaria (
  nitVeterinaria VARCHAR(15) NOT NULL,
  tipoVisita VARCHAR(15) NOT NULL,
  fecha_Ingreso TIMESTAMP NOT NULL,
  id_mascota varchar(40) not null,
 FOREIGN KEY(nitVeterinaria) REFERENCES veterinaria(Nit),
 FOREIGN KEY(id_mascota) REFERENCES Mascota(id_mascota)
 );

INSERT INTO visitaveterinaria (nitVeterinaria,tipoVisita,fecha_Ingreso,id_mascota) 
VALUES 
('39891237-3','microchip','06-09-2021','OQI236'),
('13520983-2','esterilizacion','29-09-2021','TYI741'),
('21109383-8','microchip','28-09-2021','IUD652'),
('10915493-8','esterilizacion','27-09-2021','OQN123'),
('5870297-8','microchip','15-09-2021','NFG785'),
('39891237-3','esterilizacion','13-09-2021','QIK741'),
('13520983-2','microchip','17-09-2021','SFK745'),
('39891237-3','esterilizacion','07-09-2021','ADG874'),
('13520983-2','microchip','12-09-2021','FJU741'),
('10915493-8','microchip','08-09-2021','QWE422'),
('21109383-8','microchip','10-09-2021','IKN159'),
('10915493-8','microchip','09-09-2021','YTJ852'),
('39891237-3','esterilizacion','28-09-2021','YUG789'),
('21109383-8','esterilizacion','16-09-2021','OQN123');

/*Nueva Tabla Solicitada Punto 1 */
CREATE TABLE pet_audit(
	id_propietario_mascota int NOT NULL,
	nombre varchar(40) NOT NULL, 
    edad int NOT NULL, 
	especie varchar(40) NOT NULL, 
    sexo varchar(40) NOT NULL,
	tamaño varchar(30) NOT NULL,
    potencialmente_peligroso varchar(30) NOT NULL,
    microchip varchar(22) NOT NULL,
	event_type varchar(22) NOT NULL, 
	event_datetime date NOT NULL,
    primary key (microchip),
    FOREIGN KEY(id_propietario_mascota) REFERENCES propietario(id_propietario) 
);

/* Nueva Tabla Solicitada Punto 3 */
CREATE TABLE microchip_goals(
	fechas TIMESTAMP NOT NULL, 
	cuentaChips int NOT NULL, 
	cumplimiento int NOT NULL
);

