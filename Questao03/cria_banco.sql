-- DROP DATABASE `banco`;
-- CREATE DATABASE banco;
-- USE banco;

-- cria tabelas
create table contratos(
	id int auto_increment,
    valor_parcela int,
    parcelas int,
    primary key (id)
);
create table pessoas (
	id int auto_increment,
    nome varchar(50) not null,
    contrato_id int ,
    inadinplente boolean default false,
    dt_completo date,
    primary key (id),
    foreign key (contrato_id) references contratos(id)
);
create table pagamentos(
	id int auto_increment,
    id_pessoa int,
    dt_pagamento date default '2001-01-01',
    primary key (id),
    foreign key (id_pessoa) references pessoas(id)
);

-- adiciona entradas
insert into contratos(valor_parcela, parcelas) values (150,100);
insert into contratos(valor_parcela, parcelas) values (300,48);
insert into contratos(valor_parcela, parcelas) values (550,24);
insert into contratos(valor_parcela, parcelas) values (1000,12);

insert into pessoas(nome, contrato_id, inadinplente, dt_completo) values ('Cristian Ghyprievy',2,true,null);
insert into pessoas(nome, contrato_id, inadinplente, dt_completo) values ('Joana Cabel',1,true,null);
insert into pessoas(nome, contrato_id, inadinplente, dt_completo) values ('John Serial',3,true,null);
insert into pessoas(nome, contrato_id, inadinplente, dt_completo) values ('Michael Seven',2,false,'2021-09-25');

insert into pagamentos(id_pessoa, dt_pagamento) values (4,'2021-09-01');
insert into pagamentos(id_pessoa, dt_pagamento) values (3,'2021-09-05');
insert into pagamentos(id_pessoa, dt_pagamento) values (1,'2021-09-19');
insert into pagamentos(id_pessoa, dt_pagamento) values (2,'2021-09-25');