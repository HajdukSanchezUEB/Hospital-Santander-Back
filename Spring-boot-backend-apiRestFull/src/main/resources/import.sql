INSERT INTO usuarios (username, password,enabled, nombre, apellido, email) VALUES ('jorge','$2a$10$mpiEKqgdcJcqkuWOqcwL2eFFSTTpU29hbLvVXgFtVgN6ApQitsHoW',1,'Jorge Andres','Rangel Zapata', 'jorgeandresr2001-20@hotmail.com');
INSERT INTO usuarios (username, password,enabled, nombre, apellido, email) VALUES ('admin','$2a$10$/AO7A.pjDJB5HJkdAxgZkua03KsyZ8XDeYDWh90HXpJw5iyR6XJlC',1,'Jorge ','DevOps', 'root@hotmail.com');

INSERT INTO roles (nombre) VALUES ('ROLE_ADMIN');
INSERT INTO roles (nombre) VALUES ('ROLE_USER');

INSERT INTO usuarios_roles (usuario_id, role_id) values(1,2);
INSERT INTO usuarios_roles (usuario_id, role_id) values(2,1);
INSERT INTO usuarios_roles (usuario_id, role_id) values(2,2);

INSERT INTO regiones (id,nombre)VALUES(1, 'Sudamerica');
INSERT INTO regiones (id,nombre)VALUES(2, 'Centroamerica');
INSERT INTO regiones (id,nombre)VALUES(3, 'Norteamerica');
INSERT INTO regiones (id,nombre)VALUES(4, 'Europa');
INSERT INTO regiones (id,nombre)VALUES(5, 'Asia');
INSERT INTO regiones (id,nombre)VALUES(6, 'Africa');
INSERT INTO regiones (id,nombre)VALUES(7, 'Oceania');
INSERT INTO regiones (id,nombre)VALUES(8, 'Antartida');



INSERT INTO clientes (region_id,nombre, apellido,create_at, email ) VALUES (1,'Jorge','Rangel','2021-01-01','Jorgeandresr2001-20@hotmail.com');
INSERT INTO clientes (region_id,nombre, apellido,create_at, email) VALUES (2,'Ricargo','paz','2021-01-01','Ricargo-20@hotmail.com');
INSERT INTO clientes (region_id,nombre, apellido,create_at, email) VALUES (3,'Santiago','Torres','2021-01-01','Santiago-20@hotmail.com');
INSERT INTO clientes (region_id,nombre, apellido,create_at, email) VALUES (4,'Kevin','Mauro','2021-01-01','Kevin-20@hotmail.com');
INSERT INTO clientes (region_id,nombre, apellido,create_at, email) VALUES (5,'Steve','Jobs','2021-01-01','Steve-20@hotmail.com');
INSERT INTO clientes (region_id,nombre, apellido,create_at, email) VALUES (6,'Lina','Ariza','2021-01-01','Lina-20@hotmail.com');
INSERT INTO clientes (region_id,nombre, apellido,create_at, email) VALUES (7,'Patico','Guzman','2021-01-01','Patico-20@hotmail.com');
INSERT INTO clientes (region_id,nombre, apellido,create_at, email) VALUES (8,'Elenena','Martinez','2021-01-01','Elenena-20@hotmail.com');
INSERT INTO clientes (region_id,nombre, apellido,create_at, email) VALUES (1,'Luzma','Rafaela','2021-01-01','Luzma-20@hotmail.com');
INSERT INTO clientes (region_id,nombre, apellido,create_at, email) VALUES (2,'GordoNuel','Noel','2021-01-01','GordoNuel-20@hotmail.com');
