CREATE TABLE "user" (
  id INT NOT NULL,
  name VARCHAR(50) NOT NULL,
  edad INT NOT NULL,
  correo VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

ALTER TABLE "user" SET id INT auto_increment;

INSERT INTO "user" (id, name, edad, correo)
VALUES
	(1, 'Daniel', 28, 'dcanosu@gmail.com'),
    (2, 'Paola', 31, 'ipalaci3@gmail.com'),
    (3, 'Manuela', 23, 'laosa29@hotmail.com'),
    (4, 'Margarita', 54, 'maris29@gmail.com');
    
SELECT * FROM "user";
EXEC sp_rename usarios, cuchos;

-- SQL server

CREATE TABLE venta(
  idVenta int IDENTITY(1,1),
  idProducto int,
  cantidad int,
  fechaVenta datetime,
  CONSTRAINT pk_venta PRIMARY KEY (idVenta)
 );
 
 CREATE TABLE producto(
   idproducto int,
   descripcion varchar(50),
   color varchar(20),
   precio money,
   PRIMARY key (idproducto)
  );
  
  SELECT * from producto;
  
  INSERT into producto (idproducto, descripcion, color, precio)
  values
  	(1, 'camiseta', 'rojo', 250),
    (2, 'pantalon', 'negro', 260),
    (3, 'camisilla', 'blanca', 100),
    (4, 'camisa', 'amarilla', 80);
    
  INSERT into venta (idproducto, cantidad)
  values
  	(505, 10),
    (506, 20),
    (507, 30);
    
SELECT * FROM producto
WHERE precio > 200 AND color = 'negro';
  
SELECT TOP 2 * FROM venta;
SELECT SUM(precio) FROM producto;

UPDATE venta SET fechaventa = 12/12/1995 WHERE idproducto = 505;
UPDATE venta SET cantidad = 30 WHERE cantidad = 20;

DELETE from venta WHERE idproducto = 505;

CREATE PROC SP_INS_producto (
   @descripcion varchar(50),
   @color varchar(20),
   @precio money,
)
AS
-- Contenido
INSERT INTO producto(@descripcion, @color, @precio
                     
EXEC SP_INS_producto 'camisa', 'negra', 100;
                     
