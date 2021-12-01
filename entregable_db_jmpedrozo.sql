
CREATE DATABASE juanmanupedrozo;
use juanmanupedrozo;
CREATE TABLE `usuarios` (
   `id` INT NOT NULL,
   `nombre` VARCHAR(255) NOT NULL,
   `apellido` VARCHAR(255) NOT NULL,
   `email` VARCHAR(255) NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `notas` (
   `id` INT NOT NULL,
   `usuarios_id` INT NOT NULL,
   `titulo` VARCHAR(100) NOT NULL,
   `fecha_de_inicio` DATE NOT NULL,
   `fecha_de_modificacion` DATE NOT NULL,
   `cuerpo` VARCHAR(255) NOT NULL,
   `eliminado` TINYINT NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `categorias` (
   `id` INT NOT NULL,
   `nombre` VARCHAR(60) NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `categorias_notas` (
   `id` INT NOT NULL,
   `notas_id` INT NOT NULL,
   `categorias_id` INT NOT NULL,
   PRIMARY KEY (`id`)
);


ALTER TABLE `notas` ADD CONSTRAINT `FK_2d1e914b-0031-4fa0-ae93-e8082049cfe6` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios`(`id`)  ;

ALTER TABLE `categorias_notas` ADD CONSTRAINT `FK_850363fe-0433-4120-9bf3-cb9f84efb707` FOREIGN KEY (`notas_id`) REFERENCES `notas`(`id`)  ;

ALTER TABLE `categorias_notas` ADD CONSTRAINT `FK_55c3c4a5-55d6-4921-9448-129c847cbef4` FOREIGN KEY (`categorias_id`) REFERENCES `categorias`(`id`)  ;

INSERT INTO usuarios (`id`, `nombre`,`apellido`, `email`) VALUES (1, 'harry','potter', 'harrypotter@gmail.com');
INSERT INTO usuarios (`id`, `nombre`,`apellido`, `email`) VALUES (2, 'homero','simpson', 'homerosimpson@gmail.com');
INSERT INTO usuarios (`id`, `nombre`,`apellido`, `email`) VALUES (3, 'bart','flanders', 'bartflanders@gmail.com');
INSERT INTO usuarios (`id`, `nombre`,`apellido`, `email`) VALUES (4, 'ricardo','arjona', 'ricardoarjona@gmail.com');
INSERT INTO usuarios (`id`, `nombre`,`apellido`, `email`) VALUES (5, 'guillermo','gimenez', 'guillermogimenez@gmail.com');
INSERT INTO usuarios (`id`, `nombre`,`apellido`, `email`) VALUES (6, 'emiliano','gonzalez', 'emilianogonzalez@gmail.com');
INSERT INTO usuarios (`id`, `nombre`,`apellido`, `email`) VALUES (7, 'ricardo','datin', 'ricardatin@gmail.com');
INSERT INTO usuarios (`id`, `nombre`,`apellido`, `email`) VALUES (8, 'anama','ferrareto', 'anamaf@gmail.com');
INSERT INTO usuarios (`id`, `nombre`,`apellido`, `email`) VALUES (9, 'romina','gurgui', 'rominagm@gmail.com');
INSERT INTO usuarios (`id`, `nombre`,`apellido`, `email`) VALUES (10, 'melody','mendoza', 'melodym@gmail.com');

INSERT INTO categorias (id, nombre) values (1, 'ideas');
INSERT INTO categorias (id, nombre) values (2, 'notas mentales');
INSERT INTO categorias (id, nombre) values (3, 'historias');
INSERT INTO categorias (id, nombre) values (4, 'compras');
INSERT INTO categorias (id, nombre) values (5, 'contraseñas');
INSERT INTO categorias (id, nombre) values (6, 'recordatorios');
INSERT INTO categorias (id, nombre) values (7, 'fechas');
INSERT INTO categorias (id, nombre) values (8, 'no olvidar');
INSERT INTO categorias (id, nombre) values (9, 'no comer');
INSERT INTO categorias (id, nombre) values (10, 'estudio');

INSERT INTO categorias_notas (id, categorias_id, notas_id) VALUES ('1', '1', '1');
INSERT INTO categorias_notas (id, categorias_id, notas_id) VALUES ('2', '2', '2');
INSERT INTO categorias_notas (id, categorias_id, notas_id) VALUES ('3', '3', '3');
INSERT INTO categorias_notas (id, categorias_id, notas_id) VALUES ('4', '4', '4');
INSERT INTO categorias_notas (id, categorias_id, notas_id) VALUES ('5', '5', '5');
INSERT INTO categorias_notas (id, categorias_id, notas_id) VALUES ('6', '6', '6');
INSERT INTO categorias_notas (id, categorias_id, notas_id) VALUES ('7', '7', '7');
INSERT INTO categorias_notas (id, categorias_id, notas_id) VALUES ('8', '8', '8');
INSERT INTO categorias_notas (id, categorias_id, notas_id) VALUES ('9', '9', '9');
INSERT INTO categorias_notas (id, categorias_id, notas_id) VALUES ('10', '10', '10');

INSERT INTO notas (id, titulo,  fecha_de_inicio, fecha_de_modificacion, cuerpo, eliminado , usuarios_id) VALUES (1, 'Título', '2012-2-9', '2013-3-12', 'Texto 1', '0','1');
INSERT INTO notas (id, titulo,  fecha_de_inicio, fecha_de_modificacion, cuerpo, eliminado , usuarios_id) VALUES (1, 'cancion', '2013-2-8', '2014-4-13', 'Texto 2', '0','2');
INSERT INTO notas (id, titulo,  fecha_de_inicio, fecha_de_modificacion, cuerpo, eliminado , usuarios_id) VALUES (1, 'nota', '2014-3-7', '2014-6-6', 'Texto 3', '0','3');
INSERT INTO notas (id, titulo,  fecha_de_inicio, fecha_de_modificacion, cuerpo, eliminado , usuarios_id) VALUES (1, 'camprar', '2013-4-6', '2015-6-25', 'Texto 4', '0','4');
INSERT INTO notas (id, titulo,  fecha_de_inicio, fecha_de_modificacion, cuerpo, eliminado , usuarios_id) VALUES (1, 'examen', '2012-5-5', '2012-8-17', 'Texto 5', '0','5');
INSERT INTO notas (id, titulo,  fecha_de_inicio, fecha_de_modificacion, cuerpo, eliminado , usuarios_id) VALUES (1, 'estudio', '2011-6-4', '2013-4-12', 'Texto 6', '0','6');
INSERT INTO notas (id, titulo,  fecha_de_inicio, fecha_de_modificacion, cuerpo, eliminado , usuarios_id) VALUES (1, 'practica', '2010-7-3', '2017-5-14', 'Texto 7', '0','7');
INSERT INTO notas (id, titulo,  fecha_de_inicio, fecha_de_modificacion, cuerpo, eliminado , usuarios_id) VALUES (1, 'cosas', '2009-8-2', '2011-3-12', 'Texto 8', '0','8');
INSERT INTO notas (id, titulo,  fecha_de_inicio, fecha_de_modificacion, cuerpo, eliminado , usuarios_id) VALUES (1, 'guardar', '2018-9-1', '2018-9-23', 'Texto 9', '0','9');
INSERT INTO notas (id, titulo,  fecha_de_inicio, fecha_de_modificacion, cuerpo, eliminado , usuarios_id) VALUES (1, 'constraseña', '2017-4-3', '2018-3-20', 'Texto 10', '0','10');
