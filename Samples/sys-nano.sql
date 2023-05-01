CREATE TABLE Gruplar(
g_name varchar2(5),
constraint pk_Gruplar primary key (g_name)
);

insert into Gruplar values('A');
insert into Gruplar values('B');
insert into Gruplar values('C');
insert into Gruplar values('D');
insert into Gruplar values('E');
insert into Gruplar values('F');

select * from Gruplar;