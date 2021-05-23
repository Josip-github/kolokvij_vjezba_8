drop database if exists kolokvij_vjezba_8;
create database kolokvij_vjezba_8;
use kolokvij_vjezba_8;

create table prijateljica(
	sifra int not null primary key auto_increment,
	vesta varchar(50),
	nausnica int not null,
	introvertno bit not null
);

create table cura(
	sifra int not null primary key auto_increment,
	nausnica int not null,
	indiferentno bit,
	ogrlica int not null,
	gustoca decimal(12,6),
	drugiputa datetime,
	vesta varchar(33),
	prijateljica int
);

create table neprijatelj(
	sifra int not null primary key auto_increment,
	kratkamajica varchar(44),
	introvertno bit,
	indiferentno bit,
	ogrlica int not null,
	becar int not null
);

create table brat(
	sifra int not null primary key auto_increment,
	introvertno bit,
	novcica decimal(14,7) not null,
	treciputa datetime,
	neprijatelj int
);

create table becar(
	sifra int not null primary key auto_increment,
	eura decimal(15,10) not null,
	trciputa datetime,
	prviputa datetime,
	muskarac int not null
);

create table muskarac(
	sifra int not null primary key auto_increment,(47),
	haljina varchar(44),
	drugiputa datetime not null,
	treciputa datetime,
);

create table decko(
	sifra int not null primary key auto_increment,
	kuna decimal(),
	lipa decimal(),
	bojakose varchar(44),
	treciputa datetime not null,
	ogrlica int not null,
	ekstroverto bit not null
);

create table muskarac_decko(
	sifra int not null primary key auto_increment,
	muskarac int not null,
	decko int not null
);

