DROP TABLE producto, demo, usuarios, venta;

CREATE DATABASE TestJoin;

USE TestJoin;

CREATE TABLE EMPLEADOS (
	Nombre varchar(50),
    DepartamentoId int
);

CREATE TABLE DEPARTAMENTOS (
	Id INT,
    Nombre VARCHAR(50)
);

INSERT INTO EMPLEADOS (Nombre, DepartamentoId)
VALUES
	('Rofferty', 31),
    ('Jones', 33),
    ('Heinsenber', 33),
    ('Robinson', 34),
    ('Smith', 34),
    ('Williams', NULL);
    
INSERT INTO DEPARTAMENTOS (Id, Nombre)
VALUES
	(31, 'Sales'),
    (33, 'Engineering'),
    (34, 'Clerical'),
    (35, 'Marketing');
        
SELECT * FROM EMPLEADOS;
SELECT * FROM DEPARTAMENTOS;

-- Clausula Join

SELECT *
FROM EMPLEADOS E
JOIN DEPARTAMENTOS D
ON E.DepartamentoId = D.Id
ORDER BY D.Nombre ASC;
        
SELECT E.Nombre as 'Empleado', D.Nombre as 'Departamento'
FROM EMPLEADOS E
JOIN DEPARTAMENTOS D
ON E.DepartamentoId = D.Id
ORDER by D.Nombre ASC;
        
SELECT D.Nombre AS 'Departamento', E.Nombre AS 'Empleado'
FROM DEPARTAMENTOS D
JOIN EMPLEADOS E
ON D.Id = E.DepartamentoId;
        
-- Clausula Left Join
        
SELECT E.Nombre AS 'Empleado', D.Nombre 'Departamento'
FROM EMPLEADOS E
LEFT JOIN DEPARTAMENTOS D
ON E.DepartamentoId = D.Id;
        
-- Clausula Right Join

SELECT E.Nombre AS 'Empleado', D.Nombre 'Departamento'
FROM EMPLEADOS E
RIGHT JOIN DEPARTAMENTOS D
ON E.DepartamentoId = D.Id;
        
SELECT D.Nombre AS 'Departamento', E.Nombre As 'Empleado'
FROM DEPARTAMENTOS D
LEFT JOIN EMPLEADOS E
ON D.Id = E.DepartamentoId;
        
-- Clausula Full Join
        
SELECT E.Nombre As 'Empleado', D.Nombre 'Departamento'
FROM EMPLEADOS E
FULL JOIN DEPARTAMENTOS D
ON E.DepartamentoId = D.Id;

-- Clausula Left Excluding Join
        
SELECT E.Nombre AS 'Empleado', D.Nombre AS 'Departamento'
FROM EMPLEADOS E
LEFT JOIN DEPARTAMENTOS D
ON E.DepartamentoId = D.Id
WHERE D.Nombre IS NOT NULL;