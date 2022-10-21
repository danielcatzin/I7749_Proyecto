CREATE DATABASE db;

USE db;

CREATE TABLE perfiles {
    id INT(10) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    perfil VARCHAR(255) UNIQUE,
    descripcion VARCHAR(255)
};

CREATE TABLE usuarios (
    id INT(10) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    codigo INT(5) UNIQUE,
    nombre VARCHAR(255),
    primer_apellido VARCHAR(255),
    segundo_apellido VARCHAR(255),
    pin INT(6),
    id_perfil INT(10),
    CONSTRAINT 'fk_id_perfil' FOREIGN KEY (id_perfil) REFERENCES perfiles(id)
);

CREATE TABLE marcas (
    id INT(10) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    marca VARCHAR(255) UNIQUE
);

CREATE TABLE modelos (
    id INT(10) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    modelo VARCHAR(255) UNIQUE
);

CREATE TABLE colores (
    id INT(10) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    color VARCHAR(255) UNIQUE
);

CREATE TABLE articulos (
    id INT(10) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_marca VARCHAR(10),
    id_modelo INT(10),
    id_color INT(10),
    CONSTRAINT 'fk_id_marca' FOREIGN KEY (id_marca) REFERENCES marcas(id),
    CONSTRAINT 'fk_id_modelo' FOREIGN KEY (id_modelo) REFERENCES modelos(id),
    CONSTRAINT 'fk_id_color' FOREIGN KEY (id_color) REFERENCES colores(id)
);


-- DESCRIBE articulos;


-- FOREIGN KEY (perfil_id_perfil) REFERENCES perfiles(id_perfil)
-- INSERT INTO perfiles (perfil, descripcion) VALUES ('Administrador', 'Administrador de la aplicación');


--DELETE FROM users;
--insert into users (id, username, password) values ("12", "12", "12");
--DROP DATABASE db_erronea;
-- DELETE FROM users;
-- insert into cliente (id_cliente, nombre) values (1, "daniel");
-- insert into articulo (id_articulo, tipo) values (1, "tipo - a");
-- insert into detalle_venta (id_cliente, id_articulo) values (1, 1);
-- DROP DATABASE db_erronea;
-- DROP VIEW vistaErronea;
-- ALTER TABLE usuario CHANGE COLUMN nombreActual nombreNuevo VARCHAR(100);
-- DELETE FROM articulo WHERE id_articulo = 2; 