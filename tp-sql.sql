DROP DATABASE IF EXISTS `notes_db`;
CREATE DATABASE `notes_db`;
USE `notes_db`;

CREATE TABLE `notes` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `title` VARCHAR(80) NOT NULL,
   `date_creation` TIMESTAMP NOT NULL,
   `date_last_edit` TIMESTAMP NOT NULL,
   `description` TEXT NOT NULL,
   `users_id` INT NOT NULL,
   `removed` TINYINT(1) NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `users` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `name` VARCHAR(80) NOT NULL,
   `last_name` VARCHAR(80) NOT NULL,
   `email` VARCHAR(80) NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `categories` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `name` VARCHAR(100),
   PRIMARY KEY (`id`)
);

CREATE TABLE `note_category` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `notes_id` INT NOT NULL,
   `categories_id` INT NOT NULL,
   PRIMARY KEY (`id`)
);


ALTER TABLE `notes` ADD CONSTRAINT `FK_66000a77-fa11-4481-a439-d8208b7899fd` FOREIGN KEY (`users_id`) REFERENCES `users`(`id`)  ;

ALTER TABLE `note_category` ADD CONSTRAINT `FK_2c2dfb8e-66da-4aed-a760-50d23765d76c` FOREIGN KEY (`notes_id`) REFERENCES `notes`(`id`)  ;

ALTER TABLE `note_category` ADD CONSTRAINT `FK_7b58d134-eb8c-4b6f-99cb-2a303c1f64cd` FOREIGN KEY (`categories_id`) REFERENCES `categories`(`id`)  ;

INSERT INTO `notes_db.notes` VALUES (DEFAULT,'Pagar cuentas','5','05/10/2021','05/10/2021 09:01:00','Gas-Electricidad-Cable','1'),(DEFAULT,'Cargar Nafta','3','17/10/2021','17/10/2021 18:01:00','YPF','1'),(DEFAULT,'Comprar Camisa','6','18/10/2021','18/10/2021 19:00:00','Ir al shopping','7'),(DEFAULT,'Ir al veterinario','9','11/10/2021','11/10/2021 17:01:00','llevar a Frida al Veterianario','1'),(DEFAULT,'Cargar Celu','7','28/10/2021','28/10/2021 19:11:00','recargar el celu','1'),(DEFAULT,'Ir a la farmacia','3','25/10/2021','25/10/2021 13:30:00','comprar shampoo y paracetamol','1'),(DEFAULT,'Retirar ropa','8','18/10/2021','18/10/2021 18:11:00','Retirar ropa que compre x internet','1'),(DEFAULT,'Piedras para Frida','1','30/10/2021','30/10/2021 17:31:00','comprarle piedras a Frida','1'),(DEFAULT,'transferir prepaga','1','01/10/2021','01/10/2021 19:05:00','Transferirle la prepaga a Maite','1'),(DEFAULT,'cena con amigos','2','30/10/2021','30/10/2021 21:00:00','Cena con amigos','1');

INSERT INTO `notes_db.categories` VALUES (1,'personas'),(2,'tareas'),(3,'comentarios'),(4,'peliculas'),(5,'series'),(6,'clases'),(7,'videos'),(8,'cumpleaños'),(9,'cuentas'),(10,'juegos');

INSERT INTO 'notes_db.users' VALUES (1,'Daniela','Becerra','dani@gmail.com'),(2,'Frida','Rodriguez','frida@gmail.com'),(3,'Matias','Acerbi','acerbi@gmail.com'),(4,'Leonardo','Martin','leo@gmail.com'),(5,'Nicolas','Lopez','nico@gmail.com'),(6,'Pablo','Radaelli','pablo@gmail.com'),(7,'Ricardo','Garcia','ricardo@gmail.com'),(8,'Mariano','Veleda','mariano@gmail.com'),(9,'Santiago','Gomez','santiago@gmail.com'),(10,'Pilar','Alonso','pilar@gmail.com');

INSERT INTO `notes_db.note_category` VALUES ('1','5'),('2','8'),('3','7'),('4','2'),('5','1'),('6','9'),('7','2'),('8','10'),('9','6'),('10','4');

SELECT * FROM note_category
INNER JOIN notes ON notes_id = notes.id
INNER JOIN categories ON note_category.categories_id = categories.id 




