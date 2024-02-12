
show databases;
use holamunda;
CREATE TABLE animales(
id int,
tipo varchar(255),
estado varchar(255),
PRIMARY KEY(id)
);

-- INSERT INTO animales (tipo, estado) VALUES ('chanchito', 'feliz');
-- esta linea no será ejecutada

ALTER TABLE animales MODIFY COLUMN id int auto_increment;

SHOW CREATE TABLE animales;

CREATE TABLE `animales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO animales (tipo, estado) VALUES ('chanchito', 'feliz');
INSERT INTO animales (tipo, estado) VALUES ('dragon', 'feliz');
INSERT INTO animales (tipo, estado) VALUES ('felipe', 'triste');

SELECT * FROM animales;
SELECT * FROM animales WHERE id = 1;
SELECT * FROM animales WHERE estado = 'feliz';
SELECT * FROM animales WHERE estado = 'feliz' AND tipo = 'felipe';

UPDATE animales SET estado = 'feliz' WHERE id = 3;
DELETE FROM animales WHERE estado = 'feliz';

-- Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE
-- that uses a KEY column. To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.

DELETE FROM animales WHERE id = 3;
SELECT * FROM animales;

UPDATE animales SET estado = 'triste' WHERE tipo = 'dragon';
-- Esta también genera error dado que para eliminar o actualizar se debe de pasar es un id