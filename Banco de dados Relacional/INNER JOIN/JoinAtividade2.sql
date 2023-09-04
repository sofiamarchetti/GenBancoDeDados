create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categorias(
    id bigint auto_increment,
    nome varchar(255) not null,
    categoria varchar(255) not null,
    PRIMARY KEY(id)
);

create table tb_pizzas(
    id bigint auto_increment,
    nome varchar(255) not null,
    codigo INT(3),
    sabor varchar(255) not null,
    preco decimal not null,
    id_categorias BIGINT,
	PRIMARY key(id)
);

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_id_categorias FOREIGN KEY (id_categorias) REFERENCES tb_categorias (id);

insert into tb_categorias (nome,categoria) values ("Salgadas simples","Salgadas");
insert into tb_categorias (nome,categoria) values ("Salgadas premium","Salgadas");
insert into tb_categorias (nome,categoria) values ("Doces simples","Doces");
insert into tb_categorias (nome,categoria) values ("Doces premium","Doces");
insert into tb_categorias (nome,categoria) values ("Promoções","Salgadas e Doces");

insert into tb_pizzas (nome,codigo,sabor,preco,id_categorias) values ("Marguerita",006,"Queijo com manjericão e tomates",38.12,1);
insert into tb_pizzas (nome,codigo,sabor,preco,id_categorias) values ("Da casa",005,"Queijo, presunto, ervilha e milho",14.33,2);
insert into tb_pizzas (nome,codigo,sabor,preco,id_categorias) values ("Brigadeiro",003,"Chocolate com confeitos",19.54,3);
insert into tb_pizzas (nome,codigo,sabor,preco,id_categorias) values ("Suprema",007,"Tudo o que tem direito - versão doce",43.60,4);
insert into tb_pizzas (nome,codigo,sabor,preco,id_categorias) values ("Calabresa",004,"Calabresa e cebola",36.91,5);
insert into tb_pizzas (nome,codigo,sabor,preco,id_categorias) values ("Vrango com cajupiry",008,"Vrango e cajupiry",19.95,1);
insert into tb_pizzas (nome,codigo,sabor,preco,id_categorias) values ("A monstra",001,"Tudo o que tem direito - versão salgada",45.70,2);
insert into tb_pizzas (nome,codigo,sabor,preco,id_categorias) values ("Beijinho",002,"Coco",58.90,3);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.id_categorias;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.id_categorias WHERE tb_categorias.categoria = "Doces";

SELECT * FROM tb_pizzas