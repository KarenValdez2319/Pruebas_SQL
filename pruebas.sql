CREATE DATABASE pruebas_sql;

USE pruebas_sql;

CREATE TABLE equipos(
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nombre_equipo VARCHAR (20) NOT NULL,
  marca_equipo VARCHAR (20) NOT NULL,
  modelo_equipo VARCHAR (20) NOT NULL, 
  serie_equipo VARCHAR (20) NOT NULL
);

CREATE TABLE asignacion_equipo(
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
  id_equipo INT NOT NULL,
  estatus INT NOT NULL, 
  fecha_asignacion DATE,
  fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO equipos(nombre_equipo, marca_equipo, modelo_equipo, serie_equipo)
  VALUES ('Equipo1', 'DELL', 'Latitude', '9830AIS'),
        ('Equipo2', 'HP', 'Victus', '9088YASO'),
        ('Equipo3', 'DELL', 'Latitude', '8E9RJC'),
        ('Equipo4', 'TechOne', 'Mouse_12A', '712AYQW');

INSERT INTO asignacion_equipo(id_equipo, estatus, fecha_asignacion)
  VALUES (1, 1, '2023-03-10'),
          (2, 1, '2023-12-11');
