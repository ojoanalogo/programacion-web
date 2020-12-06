CREATE DATABASE Movies;

USE Movies;

CREATE TABLE Generos (
  id INT NOT NULL AUTO_INCREMENT,
  genero VARCHAR(50) NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE Peliculas (
  id INT NOT NULL AUTO_INCREMENT,
  titulo VARCHAR(120) NOT NULL,
  director VARCHAR(100) NOT NULL,
  fecha VARCHAR(4) NOT NULL,
  genero INT NOT NULL,
  PRIMARY KEY(id)
);

ALTER TABLE Peliculas
  ADD CONSTRAINT `peliculas_genero_foreign` FOREIGN KEY(genero) REFERENCES Generos(id);