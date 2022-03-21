INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(1,'Andres','Guzman','profesor@bolsaideas.com','2017-08-29','');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(2,'John','Doe','john.doe@correo.com','2017-08-30','');

INSERT INTO productos(nombre, precio, create_at) VALUES('Panasonic Pantalla LCS','259990',NOW());
INSERT INTO productos(nombre, precio, create_at) VALUES('Sony Camara digital','123490',NOW());
INSERT INTO productos(nombre, precio, create_at) VALUES('Aple Ipod shuffle','1499990',NOW());


INSERT INTO facturas(descripcion, observacion, cliente_id, create_at) VALUES('Factura equipos de oficina',null,1,NOW());
INSERT INTO facturas_items(cantidad, factura_id, producto_id) VALUES(1,1,1);
INSERT INTO facturas_items(cantidad, factura_id, producto_id) VALUES(2,1,2);
INSERT INTO facturas_items(cantidad, factura_id, producto_id) VALUES(1,1,3);

INSERT INTO facturas(descripcion, observacion, cliente_id, create_at) VALUES('Factura bicicleta','alguna nota importante',1,NOW());
INSERT INTO facturas_items(cantidad, factura_id, producto_id) VALUES(3,2,3);


INSERT INTO users(username, password, enabled) VALUES('fabian','$2a$10$UESFqxoBXBonrvnvBIW0XOFIublsb1.LD9.XxVOjBpVCgbNWrhtES',1);
INSERT INTO users(username, password, enabled) VALUES('admin','$2a$10$X0j27N20KsrVrl0u1nLjk./Y.Bp6cOfv9L997BVSLhr/JYaPZ5neW',1);

INSERT INTO authorities(user_id, authority) VALUES(1,'ROLE_USER');
INSERT INTO authorities(user_id, authority) VALUES(2,'ROLE_ADMIN');
INSERT INTO authorities(user_id, authority) VALUES(2,'ROLE_USER');