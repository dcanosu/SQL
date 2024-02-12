CREATE TABLE products(
	id INT NOT NULL auto_increment,
	name VARCHAR(50) NOT NULL,
    created_by INT NOT NULL,
    marca VARCHAR(50) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (created_by) REFERENCES user(id)
);

RENAME TABLE products TO product;

INSERT INTO product (name, created_by, marca)
VALUES
	('ipad', 1, 'Apple'),
    ('Iphone', 1, 'Apple'),
    ('Watch', 2, 'Apple'),
    ('MackBook', 1, 'Apple'),
    ('iMac', 3, 'Apple'),
    ('ipad mini', 2, 'Apple');

SELECT * FROM product;

SELECT u.id, u.email FROM user as u;
-- select id, email from user -> es como hacer esta consulta pero sin alias

SELECT u.id, u.email, p.name FROM user u LEFT JOIN product p ON u.id = p.created_by;
SELECT u.id, u.email, p.name FROM user u RIGHT JOIN product p ON u.id = p.created_by;
SELECT u.id, u.email, p.name FROM user u INNER JOIN product p ON u.id = p.created_by;
SELECT u.id, u.name, p.id, p.name FROM user u CROSS JOIN product p;

SELECT * FROM product;
SELECT COUNT(id), marca FROM product GROUP BY marca;
SELECT COUNT(id), name FROM product GROUP BY name;

SELECT COUNT(p.id), u.name FROM product p LEFT JOIN user u ON u.id = p.created_by GROUP BY p.created_by;


SELECT COUNT(p.id), u.name FROM product p LEFT JOIN user u
ON u.id = p.created_by GROUP BY p.created_by
HAVING COUNT(p.id) >= 2;

DROP TABLE product;
DROP TABLE animales;
DROP TABLE user;