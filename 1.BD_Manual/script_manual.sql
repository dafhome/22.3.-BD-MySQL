CREATE SCHEMA libreria_comics;
USE libreria_comics;
CREATE TABLE personajes_comics (
  id INT NOT NULL AUTO_INCREMENT,
  timestamp DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  ud_timestamp DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  name VARCHAR(50) NOT NULL,
  age INT(3) NULL,
  comic VARCHAR(50) NULL,
  PRIMARY KEY (id),
  specie VARCHAR(50) NULL,
  favorite_phrase TEXT(250)
  );
ALTER TABLE personajes_comics DROP specie;
ALTER TABLE personajes_comics ADD(
	specie VARCHAR(50) NULL
);
INSERT INTO personajes_comics (name,age,comic,favorite_phrase,specie) VALUES ('Pepe',35,'Superman','Me gusta el chocolate','Humano');
