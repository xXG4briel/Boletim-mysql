create database if not exists escola;

use escola;

-- Tabelas Criação
create table if not exists `aluno` (
	`alunoId` int unsigned not null primary key auto_increment,
    `nome` varchar(50) not null,
    `sexo` enum("F", "M") not null default "M",
    `ano`  enum( "1° Ano", "2° Ano", "3° Ano") not null default "1° Ano"
) engine=InnoDB default charset=utf8mb4;
create table if not exists `disciplinas` (
	`disciplinaId` int unsigned not null primary key auto_increment,
    `nome` varchar(50) unique not null
) engine=InnoDB default charset=utf8mb4;
create table if not exists `boletim` (
	`boletimId` int unsigned not null auto_increment,
    `alunoId` int unsigned not null,
    `disciplinaId` int unsigned not null,
    `nota` decimal(10,1),
    `faltas` int unsigned default 0,
    
    primary key(boletimId),
    foreign key(alunoId) references aluno(alunoId),
    foreign key(disciplinaId) references disciplinas(disciplinaId)
) engine=InnoDB default charset=utf8mb4;

-- Dados das outras tabela 
insert into disciplinas(`nome`) 
values
("Matemática"),
("Português"),
("Inglês"),
("Geografia"),
("História"),
("Sociologia"),
("Filosofia"),
("Física"),
("Química"),
("Artes"),
("Educação Física")
;

insert into aluno ( nome, sexo, ano)
values
( "Maria Rita", "F", "2° Ano" ),
( "Adriano Cavalcante", "M", "3° Ano" ),
( "Robson Costas", "M", "3° Ano" ),
( "Enzo Gabriel", "M" , "1° Ano"),
( "Giovana Nascimento", "F" , "1° Ano"),
( "Gabriel de Souza", "M", "2° Ano" ),
( "Alice Fernadez", "F", "2° Ano" ),
( "Debora Santana", "F", "3° Ano" ),
( "Enzo Gabriel", "M" ,"1° Ano")
;

insert into boletim
( alunoId, disciplinaId, nota, faltas )
values
(1, 1, 8.6, 15),
(2, 1, 10.6, 10),
(3, 1, 8.3, 15),
(4, 1, 3.2, 1),
(5, 1, 8.3, 6),
(6, 1, 8.5, 5),
(7, 1, 10.9, 13),
(1, 2, 5.9, 15),
(2, 2, 7.9, 15),
(3, 2, 10.7, 7),
(4, 2, 8.9, 0),
(5, 2, 6.4, 2),
(6, 2, 9.6, 1),
(7, 2, 6.9, 10),
(1, 3, 9.8, 8),
(2, 3, 2.6, 8),
(3, 3, 0.2, 7),
(4, 3, 6.9, 7),
(5, 3, 5.6, 12),
(6, 3, 4.8, 7),
(7, 3, 10.6, 15),
(1, 4, 3.9, 12),
(2, 4, 6.4, 12),
(3, 4, 8.9, 15),
(4, 4, 5.8, 2),
(5, 4, 3.8, 5),
(6, 4, 9.1, 12),
(7, 4, 5.3, 4),
(1, 5, 2.4, 10),
(2, 5, 2.9, 2),
(3, 5, 2.7, 0),
(4, 5, 6.2, 6),
(5, 5, 1.7, 14),
(6, 5, 4.2, 5),
(7, 5, 5.5, 6),
(1, 6, 9.4, 8),
(2, 6, 9.9, 6),
(3, 6, 8.7, 11),
(4, 6, 2.7, 15),
(5, 6, 10.3, 14),
(6, 6, 7.3, 12),
(7, 6, 0.2, 11),
(1, 7, 10.6, 15),
(2, 7, 5.9, 2),
(3, 7, 8.8, 7),
(4, 7, 0.7, 15),
(5, 7, 2.7, 13),
(6, 7, 3.2, 7),
(7, 7, 0.6, 3),
(1, 8, 9.9, 9),
(2, 8, 7.2, 5),
(3, 8, 6.7, 8),
(4, 8, 6.8, 10),
(5, 8, 0.4, 15),
(6, 8, 5.2, 5),
(7, 8, 1.4, 8),
(1, 9, 6.8, 8),
(2, 9, 9.3, 8),
(3, 9, 0.3, 3),
(4, 9, 7.5, 8),
(5, 9, 8.5, 3),
(6, 9, 0.3, 5),
(7, 9, 6.6, 11),
(1, 10, 10.4, 4),
(2, 10, 9.6, 6),
(3, 10, 3.7, 8),
(4, 10, 8.1, 8),
(5, 10, 4.7, 9),
(6, 10, 4.6, 12),
(7, 10, 3.1, 8),
(1, 11, 9.1, 9),
(2, 11, 3.7, 2),
(3, 11, 5.3, 8),
(4, 11, 9.9, 11),
(5, 11, 3.1, 7),
(6, 11, 5.1, 2),
(7, 11, 9.4, 6)
;
