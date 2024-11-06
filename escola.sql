create database db_escola;
use db_escola;

create table tb_aluno(
pk_id_aluno int primary key auto_increment,
nome_aluno varchar(100),
genero_aluno enum('m','f'),
data_nasc_aluno date,
nome_mae_aluno varchar(100),
nome_pai_aluno varchar(100),
endereco_aluno varchar(100),
ra_aluno char(11)
);

select*from tb_aluno;

drop table tb_professor;

create table tb_professor(
pk_id_professor int primary key auto_increment,
nome_porfessor varchar(100),
genero_professor enum('m','f'),
data_nasc_professor date,
estado_civil_professor char(10),
nome_mae_professor varchar(100),
cpf_professor char(11),
cidade_professor varchar(50),
formacao_professor varchar(50)
);

create table tb_aula(
pk_id_aula int primary key auto_increment,
sala_aula char(2),
experimental_aula enum ("Sim","Não"),
data_aula date,
quantidade_aula varchar(50)
);

select*from tb_aula;

alter table tb_professor
add column email_professor varchar(150),
add column possui_filhos_professor char(3),
add column periodo_professor enum ("manhã","tarde","noite");

select*from tb_professor;


START TRANSACTION;
  DELETE FROM tb_professor; 
  INSERT INTO tb_professor(possui_filhos_professor, periodo_professor)
    VALUES ('Sim','manhã');
  SELECT * FROM tb_professor;
ROLLBACK;
COMMIT;

SELECT * FROM tb_professor; 


delete from tb_professor where cidade_professor;
