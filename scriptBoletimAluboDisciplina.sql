create database if not exists escola;

use escola;

-- Tabelas Criação
create table if not exists `aluno` (
	`alunoId` int unsigned not null auto_increment,
    `nome` varchar(50) not null,
    `sexo` enum("F", "M") not null default "M",
    `ano`  enum( "1° Ano", "2° Ano", "3° Ano") not null default "1° Ano",
    
     primary key(alunoId)
    
) engine=InnoDB default charset=utf8mb4;
create table if not exists `disciplinas` (
	`disciplinaId` int unsigned not null primary key auto_increment,
    `nome` varchar(50) unique not null
) engine=InnoDB default charset=utf8mb4;
create table if not exists `boletim` (
	`boletimId` int unsigned not null auto_increment,
    `alunoId` int unsigned not null,
    `disciplinaId` int unsigned not null,
    `nota1` decimal(10,1) not null default 0,
    `nota2` decimal(10,1) not null default 0,
    `nota3` decimal(10,1) not null default 0,
    `nota4` decimal(10,1) not null default 0,
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
( "Matheus Silva", "M" ,"1° Ano")
;

insert into boletim
( alunoId, disciplinaId, nota1, nota2, nota3, nota4, faltas )
values
(1, 1, 8, 5.6, 9.4, 7.8, 1),
(2, 1, 8.1, 2.3, 4.1, 8.7, 9),
(3, 1, 4.4, 8.6, 7, 9, 12),
(4, 1, 2.8, 7.4, 9.3, 9.6, 4),
(5, 1, 7.5, 7.5, 7, 9.7, 3),
(6, 1, 10.0, 8.2, 9.7, 8.5, 1),
(7, 1, 7.4, 4.7, 3, 6.2, 0),
(1, 2, 4.6, 9.2, 8.6, 8.1, 1),
(2, 2, 4.7, 8.3, 6.5, 6.2, 6),
(3, 2, 9, 8.9, 8.7, 7.7, 2),
(4, 2, 2.7, 5.7, 6.2, 6.3, 0),
(5, 2, 4.7, 6.9, 7.3, 7.1, 1),
(6, 2, 8.1, 7.6, 9.6, 9.3, 10),
(7, 2, 5.2, 3.6, 6.6, 3.7, 2),
(1, 3, 5, 6.5, 6.9, 3.2, 12),
(2, 3, 7.6, 3.7, 4, 8.8, 8),
(3, 3, 3, 8, 4.6, 4.2, 9),
(4, 3, 6.2, 7.9, 6.9, 4.4, 6),
(5, 3, 3.3, 7.3, 10, 3.6, 12),
(6, 3, 5.6, 5.9, 10, 4.1, 8),
(7, 3, 2.7, 3.7, 3.9, 6.3, 4),
(1, 4, 4.8, 5.7, 8.5, 2.1, 10),
(2, 4, 6.6, 3.4, 4.6, 2.7, 12),
(3, 4, 9.7, 9.5, 9.3, 8.9, 6),
(4, 4, 8.3, 4.8, 6.5, 3.3, 3),
(5, 4, 6.5, 7.8, 7.4, 5.4, 12),
(6, 4, 8, 4.4, 7.5, 2.4, 4),
(7, 4, 7.2, 8, 4, 9.6, 11),
(1, 5, 6.8, 5.3, 2.9, 4.3, 2),
(2, 8.9, 8.4, 9.9, 8.9, 8.8, 3),
(3, 5, 10, 9.2, 3.2, 5, 11),
(4, 5, 9.2, 7.8, 9.6, 8.1, 4),
(5, 5, 9.2, 8.2, 8.7, 9.6, 2),
(6, 5, 3.4, 2.2, 6.7, 9.5, 7),
(7, 5, 3.5, 8.2, 4.7, 2.8, 12),
(1, 6, 6.7, 2.8, 4, 4.9, 9),
(2, 6, 9, 9.9, 6.1, 2.3, 4),
(3, 6, 8.2, 9.7, 3.1, 5.4, 9),
(4, 6, 7.7, 8, 6.8, 4.6, 9),
(5, 6, 9.9, 9.1, 3, 5.9, 9),
(6, 6, 2.6, 7.4, 7.4, 3.6, 12),
(7, 6, 7.1, 6.8, 9.4, 3.6, 12),
(1, 7, 9.5, 6.7, 4.4, 7.8, 3),
(2, 7, 8.1, 5.4, 4.5, 5.9, 2),
(3, 7, 4.6, 2.7, 8.1, 9.3, 12),
(4, 7, 6.4, 5.5, 8, 9.6, 1),
(5, 7, 2.1, 7.6, 4.6, 4.7, 7),
(6, 7, 8.6, 9.6, 8.1, 9, 5),
(7, 7, 7.2, 7.5, 5.6, 2.6, 2),
(1, 8, 2.9, 9.5, 4.6, 5.5, 9),
(2, 8, 5.6, 5.2, 7.9, 5.7, 8),
(3, 8, 3.8, 6.9, 8.5, 8.3, 8),
(4, 8, 10, 5.5, 5.3, 9.7, 6),
(5, 8, 9.7, 6, 8.4, 5.7, 9),
(6, 8, 9.4, 5, 7.3, 4.2, 11),
(7, 8, 8.9, 5, 7.6, 9.2, 1),
(1, 9, 8.9, 5.4, 2.1, 9.5, 8),
(2, 9, 7.7, 9.1, 2.5, 9.2, 4),
(3, 9, 4, 8.6, 6.9, 2.1, 0),
(4, 9, 5.7, 2.6, 3.7, 4.5, 0),
(5, 9, 7.7, 6, 7.1, 4.1, 1),
(6, 9, 3.3, 8.2, 7.9, 7.4, 5),
(7, 9, 2.5, 7.7, 3.7, 4.6, 7),
(1, 10, 7.6, 8.7, 2.7, 4.2, 5),
(2, 10, 3.2, 2.8, 2.8, 5.3, 2),
(3, 10, 6.2, 9.9, 4.5, 4.4, 1),
(4, 10, 5.1, 4.5, 7.8, 2.4, 1),
(5, 10, 3.1, 5.4, 9.2, 8.1, 6),
(6, 10, 9.1, 3, 4.1, 2.8, 10),
(7, 10, 6.5, 8.3, 9.6, 2.5, 11),
(1, 11, 8.1, 4.7, 6.8, 8.6, 2),
(2, 11, 6.5, 7.2, 3.4, 2.4, 3),
(3, 11, 5.5, 4.7, 4.7, 8.7, 4),
(4, 11, 8, 8, 2.5, 6.5, 12),
(5, 11, 3.1, 9.5, 3.2, 2.4, 12),
(6, 11, 2.7, 3.9, 9.8, 6.3, 7),
(7, 11, 9, 3.1, 9.4, 2.5, 4)
;
/*
Procedures
*/

DELIMITER $$

create procedure `sp_boletim_todas_turmas` ()
	begin
		select
			a.nome,
			a.ano,
			d.nome as disciplina,
			b.nota1,
			b.nota2,
			b.nota3,
			b.nota4,
			truncate( ( b.nota1 + b.nota2 + b.nota3 + b.nota4 ) / 4, 1 ) as media,
			if ( truncate( ( b.nota1 + b.nota2 + b.nota3 + b.nota4 ) / 4, 1 ) >= 6, "A", "R" ) as resultado
		from ((boletim b

		inner join aluno a on a.alunoId = b.alunoId) 
		inner join disciplinas d on d.disciplinaId = b.disciplinaId)
		order by a.ano, a.nome, d.nome  
		;
    end

$$

delimiter $$
create procedure `sp_boletim_turma` (
	in Ano enum('1° Ano','2° Ano','3° Ano')
)
	begin
	select
		a.nome,
		d.nome as disciplina,
		b.nota1,
		b.nota2,
		b.nota3,
		b.nota4,
		truncate( ( b.nota1 + b.nota2 + b.nota3 + b.nota4 ) / 4, 1 ) as media,
		if ( truncate( ( b.nota1 + b.nota2 + b.nota3 + b.nota4 ) / 4, 1 ) >= 6, "A", "R" ) as resultado
	from ((boletim b
		inner join aluno a on a.alunoId = b.alunoId) 
		inner join disciplinas d on d.disciplinaId = b.disciplinaId)
	where a.ano = Ano
	order by a.nome, d.nome;
	end
$$

delimiter $$
create procedure `sp_boletim_melhores_alunos` ()
	
    begin
		select
		a.nome,
		a.ano,
		d.nome as disciplina,
		truncate( ( b.nota1 + b.nota2 + b.nota3 + b.nota4 ) / 4, 1 ) as media
		from ((boletim b

		inner join aluno a on a.alunoId = b.alunoId)
		inner join disciplinas d on d.disciplinaId = b.disciplinaId)
		where truncate( ( b.nota1 + b.nota2 + b.nota3 + b.nota4 ) / 4, 1 ) > 7.5
		order by a.ano, a.nome, d.nome;
	end

$$
