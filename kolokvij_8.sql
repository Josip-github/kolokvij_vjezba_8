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
	sifra int not null primary key auto_increment,
	haljina varchar(44),
	drugiputa datetime not null,
	treciputa datetime
);

create table decko(
	sifra int not null primary key auto_increment,
	kuna decimal(12,10),
	lipa decimal(17,10),
	bojakose varchar(44),
	treciputa datetime not null,
	ogrlica int not null,
	ekstrovertno bit not null
);

create table muskarac_decko(
	sifra int not null primary key auto_increment,
	muskarac int not null,
	decko int not null
);

alter table cura add foreign key (prijateljica) references prijateljica(sifra);

alter table brat add foreign key (neprijatelj) references neprijatelj(sifra);

alter table neprijatelj add foreign key (becar) references becar(sifra);

alter table becar add foreign key (muskarac) references muskarac(sifra);

alter table muskarac_decko add foreign key (muskarac) references muskarac(sifra);
alter table muskarac_decko add foreign key (decko) references decko(sifra);

#U tablice neprijatelj, becar i muskarac_decko unesite po 3 retka.
#muskarac, decko, muskarac_decko, becar, neprijatelj
insert into muskarac(drugiputa)
values('2020-01-01'),('2019-01-01'),('2018-01-01');

insert into decko(treciputa,ogrlica,ekstrovertno)
values('2020-01-01',17,0),('2008-02-01',15,1),('1998-05-23',7,1);

insert into muskarac_decko(muskarac,decko)
values(1,1),(2,2),(3,3);

insert into becar(eura,muskarac)
values(13.87,1),(14.86,2),(21.54,3);

insert into neprijatelj(ogrlica,becar)
values(7,1),(20,2),(29,3);

#U tablici cura postavite svim zapisima kolonu indiferentno na vrijednost false.
update cura set indiferentno = false;

















