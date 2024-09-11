#DDL - Data Definition Language
create database escola;
use escola;

create table professor(
id int not null auto_increment primary key,
nome varchar(50),
disiplina varchar(50),
serie int
);

desc professor;

#DML - Data Manipulation Language

Insert into professor values(null, 'Ione', 'Português',2);
insert into professor(nome, disiplina) values('Artur', 'AmbCom');
insert into professor(serie) values(2);
set sql_safe_updates = 1;
update professor set serie = 2 where id = 2;
delete from professor where id = 3;
Insert into professor values(null, 'Halley', 'AmbCom',2);
#alterar os profssores de AmbCom para a série 3
update professor set serie = 3 where disiplina = 'AmbCom'; 
update professor set serie = 3 where disiplina = 'Português';
update professor set serie = 2 where id > 1; 
select * from professor;