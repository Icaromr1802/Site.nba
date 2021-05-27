create database nba;
use nba;
create table times(
id_time int primary key auto_increment,
nome_time varchar(50),
titulos int,
conferencia varchar (10)
)auto_increment = 01;

insert into times values
(01,'76ers',3,'leste'),
(02,'Bucks',17,'leste'),
(03,'Bulls',6,'leste'),
(04,'Cavaliers',1,'leste'),
(05,'Celtics',17,'leste'),
(06,'Clippers',0,'Oeste'),
(07,'Grizzlies',0,'Oeste'),
(08,'Hawks',1,'leste'),
(09,'Heat',3,'leste'),
(10,'Hornets',0,'leste'),
(11,'Jazz',0,'Oeste'),
(12,'Kings',1,'Oeste'),
(13,'Knicks',2,'leste'),
(14,'Lakers',17,'Oeste'),
(15,'Magic',0,'leste'),
(16,'Mavericks',1,'Oeste'),
(17,'Nets',0,'leste'),
(18,'Nuggets',0,'Oeste'),
(19,'Pacers',0,'leste'),
(20,'Pelicans',0,'Oeste'),
(21,'Pistons',3,'leste'),
(22,'Raptors',1,'leste'),
(23,'Rockets',2,'Oeste'),
(24,'Spurs',5,'Oeste'),
(25,'Suns',0,'Oeste'),
(26,'Thunder',0,'Oeste'),
(27,'Timberwolves',0,'Oeste'),
(28,'Trail Blazzers',1,'Oeste'),
(29,'Warriors',6,'Oeste'),
(30,'Wizards',1,'leste');

create table jogadores(
id_jogador int primary key auto_increment,
nome_jogador varchar (60),
fk_times int,
constraint times_cadastro foreign key (fk_times) references times(id_time)

)auto_increment =101;

insert into jogadores values
(101,'Lebron James'),
(102,'Bird'),
(103,'Lillard'),
(104,'Duncan'),
(105,'Curry'),
(106,'Vince Carter'),
(107,'Harden'),
(108,'Paul Pierce'),
(109,'Leonard'),
(110,'Magic Johnson'),
(111,'Antetokoumpo'),
(112,'Michael Jordan'),
(113,'Durant'),
(114,'O Neal'),
(115,'Embiid'),
(116,'Nowitzki'),
(117,'Irving'),
(118,'Karl Malone'),
(119,'Carmelo Anthony'),
(120,'Barkley');



create table cadastrados(
id_cadastrados int primary key auto_increment,
nome_completo varchar(100),
email varchar(200),
fk_jogador int,
constraint jogador_cadastro foreign key (fk_jogador) references jogadores(id_jogador),
fk_times int,
constraint times_cadastro foreign key (fk_times) references times(id_time),
login varchar(100),
senha varchar(100)
) auto_increment =1001;

select * from cadastrados;

