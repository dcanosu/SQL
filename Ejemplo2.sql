CREATE TABLE user (
	id int not null auto_increment,
    name varchar(50) not null,
    edad int not null,
    email varchar(100) not null,
    primary key (id)
);

INSERT INTO user (name, edad, email) VALUES ('Oscar', 25, 'oscar@gmail.com');
INSERT INTO user (name, edad, email) VALUES ('Layla', 15, 'layla@gmail.com');
INSERT INTO user (name, edad, email) VALUES ('Nicolas', 36, 'nicola@gmail.com');
INSERT INTO user (name, edad, email) VALUES ('Chanchito', 7, 'chanchito@gmail.com');

SELECT * FROM user;
SELECT * FROM user LIMIT 1;
SELECT * FROM user WHERE edad > 18;
SELECT * FROM user WHERE edad >= 15;
SELECT * FROM user WHERE edad > 18;
SELECT * FROM user WHERE edad > 20 AND email = 'nicola@gmail.com';
SELECT * FROM user WHERE edad > 20 OR email = 'layla@gmail.com';
SELECT * FROM user WHERE email != 'layla@gmail.com';
SELECT * FROM user WHERE edad BETWEEN 15 AND 30;
SELECT * FROM user WHERE email LIKE '%gmail%';
SELECT * FROM user WHERE email LIKE 'nico%';
SELECT * FROM user WHERE email LIKE '%gmail';


SELECT * FROM user ORDER BY edad ASC;
SELECT * FROM user ORDER BY edad DESC;

SELECT MAX(edad) FROM user;
SELECT MAX(edad) AS mayor FROM user;
SELECT MIN(edad) AS menor FROM user;
SELECT SUM(edad) AS suma FROM user;
SELECT SUM(edad) AS mayor FROM user WHERE email LIKE 'layla%'; 
SELECT AVG(edad) AS mayor FROM user;

SELECT id, name FROM user;
SELECT id, name AS nombre FROM user;
