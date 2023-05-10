CREATE TABLE ogrenci(
ogr_id number(7),
ad varchar2(30) not null,
soyad varchar2(30) not null, 
tcno char(11),
adres varchar2(50),
bolumno number(2),
dogtar date,
Constraint dmg1 primary key(ogr_id),
Constraint dmg2 foreign key(bolumno) references bolumno,
Constraint dmg3 check(extract(year from dogtar)>1999),
Constraint dmg4 unique key(tcno)
);

CREATE TABLE bolum(
bno number(2),
ad varchar2(30),
Constraint dmg primary key(bno)
);

select * from bolum

select * from ogrenci


Alter table ogrenci
Add constraint dmg1 primary key(ogr_id);

alter table ogrenci
drop constraint dmg3;
