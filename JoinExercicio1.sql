create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
    id bigint auto_increment,
    nome varchar(255) not null,
    descricao varchar(255) not null,
    PRIMARY KEY(id)
);

create table tb_personagens(
    id bigint auto_increment,
    nome varchar(255) not null,
    cor_principal varchar(255) not null,
    ataque INT(3),
    defesa INT(3),
    habilidade_principal varchar(255) not null,
    id_classes BIGINT,
	PRIMARY key(id)
);

ALTER TABLE tb_personagens ADD CONSTRAINT fk_id_classes FOREIGN KEY (id_classes) REFERENCES tb_classes (id);

insert into tb_classes (nome,descricao) values ("Defensor","Protege as fronteiras do terreno");
insert into tb_classes (nome,descricao) values ("Artista","Anima o povoado e melhora o nível de vida dos outros personagens");
insert into tb_classes (nome,descricao) values ("Criador de caos","Dificulta o nível do jogo em todas as fases");
insert into tb_classes (nome,descricao) values ("Vendedor","Traz suprimentos para os outros personagens");
insert into tb_classes (nome,descricao) values ("Criança","Desbloqueia sub-níveis do jogo");

insert into tb_personagens (nome,cor_principal,ataque,defesa,habilidade_principal,id_classes) values ("Bobolinha","amarelo",2000,3812,"soltar bolinhas",3);
insert into tb_personagens (nome,cor_principal,ataque,defesa,habilidade_principal,id_classes) values ("Fortitica","verde",1000,1433,"soco forte",3);
insert into tb_personagens (nome,cor_principal,ataque,defesa,habilidade_principal,id_classes) values ("Grandalhoso","marrom",1500,1954,"interromper a passagem",1);
insert into tb_personagens (nome,cor_principal,ataque,defesa,habilidade_principal,id_classes) values ("Vô Gogh","azul",3000,436,"pintar",2);
insert into tb_personagens (nome,cor_principal,ataque,defesa,habilidade_principal,id_classes) values ("Lulu","cinza",2000,3691,"falar muito",4);
insert into tb_personagens (nome,cor_principal,ataque,defesa,habilidade_principal,id_classes) values ("Renzo","rosa",1200,1995,"brincadeiras com corda",5);
insert into tb_personagens (nome,cor_principal,ataque,defesa,habilidade_principal,id_classes) values ("Gatalhão","laranja",3200,457,"unhas afiadas",1);
insert into tb_personagens (nome,cor_principal,ataque,defesa,habilidade_principal,id_classes) values ("Freeda","vermelho",5000,589,"pensamento",2);

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.id_classes;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.id_classes WHERE tb_classes.nome = "Defensor";