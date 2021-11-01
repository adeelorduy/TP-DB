DROP DATABASE IF EXISTS `andres_db`;
CREATE DATABASE `andres_db`;
USE `andres_db`;

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
   `id_usuarios` INT AUTO_INCREMENT,
   `nombre` VARCHAR(40) NOT NULL,
   `apellido` VARCHAR(40) NOT NULL,
   `email` VARCHAR(80) NOT NULL,
   PRIMARY KEY (`id_usuarios`)
);

DROP TABLE IF EXISTS `notas`;
CREATE TABLE `notas` (
   `id_notas` INT AUTO_INCREMENT,
   `titulo` VARCHAR(50) NOT NULL,
   `usuario` INT NOT NULL AUTO_INCREMENT,
   `fecha_creacion` DATETIME NOT NULL,
   `fecha_modificacion` DATETIME NOT NULL,
   `descripcion` TEXT NOT NULL,
   `eliminacion` INT NOT NULL,
   PRIMARY KEY (`id_notas`)
);

DROP TABLE IF EXISTS `notas_categorias`;
CREATE TABLE `notas_categorias` (
   `nota_id` INT AUTO_INCREMENT,
   `categoria_id` INT NOT NULL AUTO_INCREMENT
   PRIMARY KEY ()
);

DROP TABLE IF EXISTS `categorias`;
CREATE TABLE `categorias` (
   `id_categorias` INT AUTO_INCREMENT,
   `nombre` VARCHAR(50) NOT NULL,
   PRIMARY KEY (`id_categorias`)
);


ALTER TABLE `notas` ADD CONSTRAINT `FK_dbfbe1b4-e24c-4318-8342-35de22cb2667` FOREIGN KEY (`usuario`) REFERENCES `usuarios`(`id_usuarios`)  ;

ALTER TABLE `notas_categorias` ADD CONSTRAINT `FK_71730750-f13c-40d0-bed6-447ac7f2d9f8` FOREIGN KEY (`nota_id`) REFERENCES `notas`(`id_notas`)  ;

ALTER TABLE `notas_categorias` ADD CONSTRAINT `FK_120c3ea4-4311-4140-94cf-e27f1c8732c8` FOREIGN KEY (`categoria_id`) REFERENCES `categorias`(`id_categorias`)  ;

INSERT INTO `usuarios` VALUES (1,'Daniela','Becerra','dani@gmail.com'),(2,'Frida','Rodriguez','frida@gmail.com'),(3,'Matias','Acerbi','acerbi@gmail.com'),(4,'Leonardo','Martin','leo@gmail.com'),(5,'Nicolas','Lopez','nico@gmail.com'),(6,'Pablo','Radaelli','pablo@gmail.com'),(7,'Ricardo','Garcia','ricardo@gmail.com'),(8,'Mariano','Veleda','mariano@gmail.com'),(9,'Santiago','Gomez','santiago@gmail.com'),(10,'Pilar','Alonso','pilar@gmail.com');

INSERT INTO `notas` VALUES (DEFAULT,'Pagar cuentas','5','05/10/2021','05/10/2021 09:01:00','Gas-Electricidad-Cable','1'),(DEFAULT,'Cargar Nafta','3','17/10/2021','17/10/2021 18:01:00','YPF','1'),(DEFAULT,'Comprar Camisa','6','18/10/2021','18/10/2021 19:00:00','Ir al shopping','7'),(DEFAULT,'Ir al veterinario','9','11/10/2021','11/10/2021 17:01:00','llevar a Frida al Veterianario','1'),(DEFAULT,'Cargar Celu','7','28/10/2021','28/10/2021 19:11:00','recargar el celu','1'),(DEFAULT,'Ir a la farmacia','3','25/10/2021','25/10/2021 13:30:00','comprar shampoo y paracetamol','1'),(DEFAULT,'Retirar ropa','8','18/10/2021','18/10/2021 18:11:00','Retirar ropa que compre x internet','1'),(DEFAULT,'Piedras para Frida','1','30/10/2021','30/10/2021 17:31:00','comprarle piedras a Frida','1'),(DEFAULT,'transferir prepaga','1','01/10/2021','01/10/2021 19:05:00','Transferirle la prepaga a Maite','1'),(DEFAULT,'cena con amigos','2','30/10/2021','30/10/2021 21:00:00','Cena con amigos','1');

INSERT INTO `notas_categorias` VALUES ('1','5'),('2','8'),('3','7'),('4','2'),('5','1'),('6','9'),('7','2'),('8','10'),('9','6'),('10','4');

INSERT INTO `categorias` VALUES (1,'personas'),(2,'tareas'),(3,'comentarios'),(4,'peliculas'),(5,'series'),(6,'clases'),(7,'videos'),(8,'cumpleaños'),(9,'cuentas'),(10,'juegos');


