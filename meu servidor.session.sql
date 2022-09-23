use oficina;
create database oficina;
use oficina;

SHOW database;

create table Sistema_controle(
idCPF int auto_increment primary key ,
nome varchar (255) not null,
endereço varchar (255) not null,
especialista ENUM ('MECANICO PROFISSIONAL') not null,
telefone  integer (12),
constraint unique_cpf_sistema unique (idCPF)
);
 select*from Sistema_controle inner join Gerenciamento_execuçao on modelo_carro
 inner join Mao_obra on valor_peça = cliente_autoriza  inner join Pagamento ;


select * from Sistema_controle;
insert into sistema_controle (idCPF,nome,endereço,especialista,telefone)
values (150789645,'Fatima correia','Rua banedi','profissional',218745236);
-- -- -- -- 

create table Gerenciamento_execuçao (
 idgerencodigo int auto_increment primary key,
 nome varchar (255),
 modelo_carro varchar (255),
 analisar_carrro boolean

);
desc Gerenciamento_execuçao;
select * from Gerenciamento_execuçao;
insert into Gerenciamento_execuçao (idgerencodigo,nome,modelo_carro,analisar_carrro) values (256,'Eduardo Silva','Picape','2019');


create table Mao_obra(
valor_peça float auto_increment primary key ,
modelo_peça varchar (255),
cliente_autoriza varchar (255)
);
select * from Mao_obra;
desc Mao_obra;
insert into Mao_obra (valor_peça,modelo_peça,cliente_autoriza) values (6000,'grega','Maria Silva');
update Mao_obra set valor_peça =  '300' where valor_peça = '45';

create table Os_mecanico(
idOsmec int auto_increment primary key,
nome varchar (255),
numero numeric,
data_demisao date,
data_entrega date,
concluçao_trabalho time
   default 0 

);
desc Os_mecanico;
select * from Os_mecanico;
insert into Os_mecanico (idOsmec,nome,numero,data_demisao,data_entrega,concluçao_trabalho) values (2,'Fatima correia','245','2022-08-15','2022-08-20',12450);

create table Pagamento(
 idCliente int ,
 idPag int,
 TipoPag enum ('Boleto','Cartão','Dois Cartões'),
 Limitedocatao float,
 primary key (idCliente, idPag),
  constraint fk_pag_cliente foreign key (idPag) references sistema_controle (idCPF)
 
);

select * from Pagamento;
desc Pagamento;
insert into Pagamento (idCliente, idPag,TipoPag,Limitedocatao) values ( 3, 245,'cartao credito','3000');
