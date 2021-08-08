CREATE TABLE `INFO` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`cpf` varchar(11) NOT NULL UNIQUE,
	`genero` char(1),
	`ano_nascimento` int(4) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `USUARIO` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`cpf` varchar(11) NOT NULL UNIQUE,
	`nome` varchar(150) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `INFO` ADD CONSTRAINT `INFO_fk0` FOREIGN KEY (`cpf`) REFERENCES `USUARIO`(`id`);



