create database Empregados;

create table `empregados`.`tbFuncionarios` (
matricula varchar(8),
nome varchar(100),
data_admissão date,
salario float,
produção smallint,
melhor_funcionario_do_mes bit(1));

alter table tbFuncionarios add primary key (matricula);

insert into tbFuncionarios (
matricula, nome, data_admissão, salario, produção, melhor_funcionario_do_mes ) values (
'19771866','Lucas da Silva Rodrigues','2022-05-22',1350.00,36,0);

insert into tbFuncionarios (
matricula, nome, data_admissão, salario, produção, melhor_funcionario_do_mes ) values (
'54660102','Giovanna da Silva Leite','2022-03-19',1500.00,50,0);

insert into tbFuncionarios (
matricula, nome, data_admissão, salario, produção, melhor_funcionario_do_mes ) values (
'90167789','Rivaldo da Silva Lima','2022-04-12',1400.00,41,0);

insert into tbFuncionarios (
matricula, nome, data_admissão, salario, produção, melhor_funcionario_do_mes ) values (
'70091717','Silvio da Mata Oliveira','2019-10-06',1510.00,49,0);

insert into tbFuncionarios (
matricula, nome, data_admissão, salario, produção, melhor_funcionario_do_mes ) values (
'56779009','Harnaldo Fabio de Mello','2018-02-03',1890.00,59,1);

insert into tbFuncionarios (
matricula, nome, data_admissão, salario, produção, melhor_funcionario_do_mes ) values (
'87167809','Mirian Rodrigues Alves','2021-01-14',1400.00,61,0);

select * from tbFuncionarios;

use empregados;

update tbFuncionarios set melhor_funcionario_do_mes = 1 where matricula = '87167809';

insert into tbFuncionarios (
matricula, nome, data_admissão, salario, produção, melhor_funcionario_do_mes) values (
'76550033','Carlos Andrade de Souza','2021-09-15',1300.00,32,0);

delete from tbfuncionarios where matricula = '76550033';

alter table tbfuncionarios add column (Ferias bit(1));

select * from tbfuncionarios where produção < 40;

select * from tbfuncionarios where data_admissão < '2019-01-01';

select * from tbfuncionarios where ferias = 1 and year(data_admissão) < 2016;