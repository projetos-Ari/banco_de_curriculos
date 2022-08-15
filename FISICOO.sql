CREATE DATABASE projeto;
USE projeto;



CREATE TABLE usuarios (
id_us int PRIMARY KEY AUTO_INCREMENT,
nome varchar(255),
email varchar (255),
senha varchar (255),
cpf varchar(14),
tipo int
);

CREATE TABLE competencias (
id_comp int PRIMARY KEY AUTO_INCREMENT,
competencias varchar (255),
id_curr int
);

CREATE TABLE habilidades (
id_hab int PRIMARY KEY AUTO_INCREMENT,
habilidade varchar (255),
id_curr int
);

CREATE TABLE educacao (
fim date,
id_educ int PRIMARY KEY AUTO_INCREMENT,
inicio date,
instituição varchar (255),
curso varchar (255),
id_curr int
);

CREATE TABLE experiencia (
id_exp int PRIMARY KEY AUTO_INCREMENT,
empresa varchar (255),
fim date,
ocupacao varchar (255),
inicio date,
id_curr int
);

CREATE TABLE curriculo (
email varchar (255),
curso varchar (255),
nome varchar (255),
telefone varchar (14),
id_curr int PRIMARY KEY AUTO_INCREMENT
);

ALTER TABLE competencias ADD FOREIGN KEY(id_curr) REFERENCES curriculo (id_curr)
ALTER TABLE habilidades ADD FOREIGN KEY(id_curr) REFERENCES curriculo (id_curr)
ALTER TABLE educacao ADD FOREIGN KEY(id_curr) REFERENCES curriculo (id_curr)
ALTER TABLE experiencia ADD FOREIGN KEY(id_curr) REFERENCES curriculo (id_curr)