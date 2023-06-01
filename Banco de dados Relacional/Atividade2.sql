create database db_ecommerce;

use db_ecommerce;

create table tb_produtos (
	id bigint auto_increment,
    nome varchar(255) not null,
    categoria varchar(255) not null,
    cor varchar(255) not null,
    preco decimal not null,
    quantidadeestoque int,
    PRIMARY KEY (id)
);

insert into tb_produtos (nome,categoria,cor,preco,quantidadeestoque) values ("Camiseta","Vestuário","verde",569.00,685);
insert into tb_produtos (nome,categoria,cor,preco,quantidadeestoque) values ("Calça","Vestuário","amarelo",934.00,305);
insert into tb_produtos (nome,categoria,cor,preco,quantidadeestoque) values ("Vestido","Vestuário","azul",294.00,862);
insert into tb_produtos (nome,categoria,cor,preco,quantidadeestoque) values ("Meias","Vestuário","fúcsia",15.00,202);
insert into tb_produtos (nome,categoria,cor,preco,quantidadeestoque) values ("Perfume","Perfumaria","verde",535.00,280);
insert into tb_produtos (nome,categoria,cor,preco,quantidadeestoque) values ("Colônia","Perfumaria","preto",219.00,875);
insert into tb_produtos (nome,categoria,cor,preco,quantidadeestoque) values ("Maquiagem","Perfumaria","laranja",648.00,963);
insert into tb_produtos (nome,categoria,cor,preco,quantidadeestoque) values ("Sapatos","Vestuário","marrom",708.00,374);

select * from tb_produtos where preco > 500.00;

select * from tb_produtos where preco < 500.00;

update tb_produtos set quantidadeestoque = 300 where id = 2;