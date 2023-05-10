create sequence otomatikid
increment by 1
start with 1
maxvalue 10000
nocycle
nocache;

CREATE TABLE personel(
per_id number(7),
ad varchar2(30) not null,
soyad varchar2(30) not null, 
tcno char(11)
);
 
insert into personel
values (otomatikid.nextval, 'Sevdanur', 'GENC', 1000);

select otomatikid.currval
from personel;

select * from personel;