-- Gruplar tablosunun olusturulmasi
CREATE TABLE Gruplar(
g_name varchar2(5),
constraint pk_Gruplar primary key (g_name)
);

select * from Gruplar;

-- Gruplar Tablosuna Veri Girilmesi

insert into Gruplar values('A');
insert into Gruplar values('B');
insert into Gruplar values('C');
insert into Gruplar values('D');
insert into Gruplar values('E');
insert into Gruplar values('F');

select * from Gruplar;

-- Stadlar tablosunun olusturulmasi
Create Table Stadlar(
std_id number(4),
isim varchar(50),
kapasite number(4),
ac_tar date,
constraint pk_Stadlar primary key(std_id)
);

select * from Stadlar;

-- Stadlar Tablosuna Veri Girilmesi 
insert into Stadlar values(2345, 'Inonu', 5000, to_date('02/01/1903', 'MM/DD/YYYY'));
insert into Stadlar values(234, 'Sukru saracoglu', 4000, to_date('10/01/1923', 'MM/DD/YYYY'));
insert into Stadlar values(231, '24 Kasim', 3000, to_date('12/12/1953', 'MM/DD/YYYY'));
insert into Stadlar values(5465, 'Santiagnt Bernabeu', 5500, to_date('02/01/1900', 'MM/DD/YYYY'));
insert into Stadlar values(8014, 'Nou Camp', 3000, to_date('01/01/1920', 'MM/DD/YYYY')); 

select * from Stadlar;
drop table Stadlar;

-- Takimlar tablosunun olusturulmasi

Create Table Takimlar(
tkno numeric(10) not null,
isim varchar2(50),
kur_tar date,
gname varchar2(5),
butce varchar2(30),
constraint pk_Takimlar primary key(tkno),
constraint fk_Takimlar foreign key(gname) references Gruplar(g_name)
);

select * from Takimlar;
  
drop table Takimlar



--  Takimlar tablosuna veri girilmesi

insert into Takimlar values(1, 'Real Madrid', to_date('01/01/1880', 'MM/DD/YYYY'), 'A', '1000000',0);
insert into Takimlar values(2, 'Besiktas', to_date('12/01/1901', 'MM/DD/YYYY'), 'A', '1000000',0);
insert into Takimlar values(3, 'Cska Moskova', to_date('01/18/1900', 'MM/DD/YYYY'), 'A', '1100000',0);
insert into Takimlar values(14, 'Chealsea', to_date('01/08/1910', 'MM/DD/YYYY'), 'B', '800000',0);
insert into Takimlar values(13, 'Juventus', to_date('11/01/1920', 'MM/DD/YYYY'), 'B', '10000000',0);
insert into Takimlar values(11, 'Dmg United', to_date('03/10/1978', 'MM/DD/YYYY'), 'B', '2000000',0);

select * from Takimlar;



-- Maclar tablosunun olusturulmasi

Create table Maclar(
mac_id int not null,
mac_tar date,
gol_evsahibi smallint,
gol_konuk smallint,
tkm_id_ev numeric(10),
tkm_id_konuk numeric(10),
std_id number(4),
constraint pk_Maclar primary key(mac_id),
constraint fk_Takim1 foreign key(tkm_id_ev) references Takimlar(tkno),
constraint fk_Takim2 foreign key(tkm_id_konuk) references Takimlar(tkno),
constraint fk_Stad foreign key(std_id) references Stadlar(std_id) 
);

select * from Maclar;

--  Maclar tablosuna veri girilmesi
 
insert into Maclar values(23, to_date('12/10/2010', 'MM/DD/YYYY'),5,3,1,2,5465);
insert into Maclar values(24, to_date('12/12/2010', 'MM/DD/YYYY'),3,1,1,3,5465);
insert into Maclar values(20, to_date('12/11/2011', 'MM/DD/YYYY'),1,1,14,13,5465);
insert into Maclar values(19, to_date('11/19/2011', 'MM/DD/YYYY'),1,0,11,13,5465);

select * from Maclar;


-- Takimlar tablosuna puan alaninin eklenmesi

Alter table Takimlar
Add puan integer;

 
 



 

