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

merge into bolum b
using dual s on (b.bno=1)
when matched then
update set ad='Bote'
when not matched then
insert (bno,ad) values (1,'Bote');



Declare
sayi number(5):=0;
Declare
sayi number(5) default 0;


declare
dmg_integer NUMBER(6):=3;
dmg_scale_3 NUMBER(6,3);
dmg_real NUMBER;
    begin
        dbms_output.put_line(dmg_integer);
    end;

declare
   weekNumber Date := to_date('2020-10-01','YYYY-MM-DD');
     begin
       dbms_output.put_line(weekNumber);
     end;

declare
dmg_boolean boolean;
    begin
        dmg_boolean := 'TRUE';  
        dbms_output.put_line(dmg_boolean);
    end;

DECLARE
  v1 BOOLEAN := FALSE;
BEGIN
  DBMS_OUTPUT.PUT_LINE( 'result = ' || CASE WHEN v1 THEN 'true' ELSE 'false' END );
END;




declare 
ucret int;
begin
    select maas into ucret
    from personel
    where ad='selcuk';    
while ucret<2500 Loop    
    update personel
    set maas = ucret * 1.1
    where ad='selcuk';
    
    ucret := ucret*1.1;
end loop;    
    

declare
ucret int;

declare 
ucret int:=500;

declare 
ucret int not null:=500;

declare
ucret constant int:=5000;






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





create or replace function ornek1(ad varchar2)
return number
is
yuzde number(3,1);
begin
declare
deger number(2);
begin
    select puan into deger
    from takimlar
    where isim=ad;
    
    select max(puan)/deger into yuzde
    from takimlar;
    
    return yuzde;
exception
    when zero_divide then
    dbms_output.put_line ('bu takim 0 cekmistir');
end;
end;

select * from takimlar



declare
    dmg_hata exception;
    sayi number:=5;
begin
    if sayi<10 then
        raise dmg_hata;
    end if;
exception
    when dmg_hata then
        dbms_output.put_line('Gruptan cikamaz');
end;


declare
fark number(5);
begin
    select kapasite into fark
    from stadlar
    where isim='Inonu';
    if fark>1000 then
        dbms_output.put_line('Kapasitesi 10000den buyuk');
    end if;
end;

select * from stadlar



declare
fark number(5);
begin
    select kapasite into fark
    from stadlar
    where isim='Inonu';
    if fark>10000 then
        dbms_output.put_line('Kapasitesi 10000den buyuk');
    else
        dbms_output.put_line('Kapasitesi 10000den kucuk');
    end if;
end;



declare
fark number(5);
begin
    select kapasite into fark
    from stadlar
    where isim='Inonu';
    if fark>10000 then
        dbms_output.put_line('Kapasitesi 10000');
    else if fark=20000 then
        dbms_output.put_line('Kapasitesi 20000');
    else
        dbms_output.put_line('Kapasitesi 20000den buyuk')
    end if;
end;




declare
harf varchar2(1);
begin
    select gname into harf
    from takimlar
    where isim='Besiktas';
    case harf
        when 'A' then dbms_output.put_line ('1.Grup');
        when 'B' then dbms_output.put_line ('2.Grup');
        when 'C' then dbms_output.put_line ('3.Grup');
        when 'D' then dbms_output.put_line ('4.Grup');
        when 'E' then dbms_output.put_line ('5.Grup');
        else dbms_output.put_line ('6. Grup');
    end case;
end;




declare 
ucret int;
begin
    select maas into ucret
    from personel
    where ad='Sevdanur';
    loop
    if ucret>1500 then
        exit;
    end if;
    
        update personel
        set maas=ucret*1.1
        where ad='Sevdanur';
        
        ucret:=ucret*1.1;
    end loop;
end;

select * from personel;

create table personel(
per_id number(5),
ad varchar2(50),
soyad varchar2(50),
maas int,
constraint pk_personel primary key(per_id)
);

insert into personel
values (otomatikid.nextval, 'Sevdanur', 'GENC', 1000);

drop table personel;





declare 
ucret int;
begin
    select maas into ucret
    from personel
    where ad='Sevdanur';
    loop
    exit when ucret>2500;
    
        update personel
        set maas=ucret*1.1
        where ad='Sevdanur';
        
        ucret:=ucret*1.1;
    end loop;
end;

select * from personel;




declare 
ucret int;
begin
    select maas into ucret
    from personel
    where ad='Sevdanur';
    
    while ucret<2500 loop
    
        update personel
        set maas=ucret*1.1
        where ad='Sevdanur';
        
        ucret:=ucret*1.1;
    end loop;
end;

select * from personel;





declare 
sayi number(2);
begin
    select count(distinct(gname)) into sayi
    from takimlar;
    
    for i in 1..sayi loop
        dbms_output.put_line(i||'.Grup');
    end loop;
end;


declare
sayi number(2):=1;
begin
    <<dmg>>
    if sayi<6 then
    sayi:=sayi+1;
    goto dmg;
    end if;
end;



declare
toplam number :=0;
begin
    select avg(puan) into toplam
    from takimlar
    where gname='A';
    
    if toplam<10 then
        update takimlar
        set puan = puan + 3
        where gname = 'A';
    else
        null;
    end if;
end;

select * from takimlar






declare
takim number:=100;
begin
    savepoint Evre1;
    
    update takimlar
    set puan=puan+3;
    where gname='B';
    
    insert into takimlar
    values (takim, 'Man. United', to_date('03/10/1908', 'MM/DD/YYYY'), 'B', '1000000', 0)
    commit;
    
    exception
    when dup_val_on_index then
    rollback to Evre1;
end;




create index takim_ad_ndx
on takimlar(isim);

create or replace procedure puan_goster
(
takim in varchar2,
grup in varchar2,
dmg out number
)
as
begin
    select puan into dmg
    from takimlar
    where gname=grup and isim=takim;
    exception
    when value_error then
    dbms_output.put_line('Degerlerde sorun var..');
end puan_goster;


create or replace procedure sayi_ekleme
(
sayi in varchar2, yeni out varchar2
)
as
begin
yeni := sayi || sayi;
exception
when value_error then
dbms_output.put_line('Degerlerde bir sorun var..');
end;




create or replace function tur_ucret(takim varchar)
return number
is
ucret number;
begin
    select (to_number(butce)*1.3) into ucret
    from takimlar
    where gname='A' and isim=takim;
return ucret;
end tur_ucret;


create or replace function karekok(sayi number)
return number
is
begin
return power(sayi,2);
end;


create view puanlist
as
select isim, puan
from takimlar
where gname in ('A','B');

create view puanliste (TakimAdi, Puan)
as
select isim, puan
from takimlar
where gname in ('A','B')
order by puan desc;


create view or replace Macsonucu
as
    select tl.isim, m.gol_evsahibi, t2.isim, m.gol_konuk
    from takimlar t1, takimlar t2, maclar m
    where m.tkm_id_ev=t1.tkno and t2.tkno=m.tkm_id_konuk and t1.gname='A'
with read only;


create or replace trigger puanekleme
after insert on maclar
for each row
begin
    if (:new.gol_evsahibi > :new.gol_konuk) then
        update takimlar
        set puan:=puan+3
        where tkno=(:new.tkm_id_ev);
    end if;
    
    if (:new.gol_evsahibi < :new.gol_konuk) then
        update takimlar
        set puan:=puan+3
        where tkno=(:new.tkm_id_konuk);
    else
        update takimlar
        set puan:=puan+1
        where tkno in (:new.tkm_id_ev, :new.tkm_id_konuk); 
    end if;
end;

    
create or replace trigger yasaklama
before delete on stadlar
begin
    dbms_output.put_line('Veri silemezsiniz.');
    rollback;
end;

create or replace trigger yasak_silme
before insert or delete or update on personel
begin
    if (to_char(sysdate, 'DY') in ('Paz','Cmt')) then
    dbms_output.put_line('Haftasonlari islem yapamazsiniz');
    rollback;
    end if;
end;

declare
silinen number(2);
begin
    delete from gruplar
    where g_name in ('D','H');
    
    silinen := SQL%ROWCOUNT;
    dbms_output.put_line(silinen||' Kayit silinmistir');
end;

select * from gruplar

declare 
cursor c1 is
    select isim, puan from takimlar where puan<9;
    
    begin
        for takim in c1
        loop
        dbms_output.put_line(takim.isim||' '||takim.puan);
    end loop;
end;

declare 
cursor c1 is
select isim, puan from takimlar where puan>6;
takimlist c1%rowtype;

begin
    open c1;
    loop
    fetch c1 into takimlist;
    exit when c1%notfound;
    
    insert into turatlama values(takimlist.isim, takimlist.puan);
    dbms_output.put_line('islem basarili');
    commit;
    end loop;
end;





create or replace package dort_islem is
function hesapla(islem1 number, islem2 number, islem3 varchar2) return varchar2;
end dort_islem;

create or replace package body dort_islem is
function hesapla(islem1 number, islem2 number, islem3 varchar2) return varchar2;
return varchar2 is
result varchar2(500);
begin
    if islem3='+' then
        result := to_char(islem1) || '+' || to_char(islem2) || '=' || (islem1 + islem2);
    else if islem3='-' then
        result := to_char(islem1) || '-' || to_char(islem2) || '=' || (islem1 - islem2);
    end if;
    
    return(result);
end;
begin
    null;
end dort_islem; 

select dort_islem.hesapla(6,4,'+') 'Toplama islemi',
        dort_islem.hesapla(6,4,'-') 'Cikarma islemi'
from takimlar;





create user selcuk
identified by sel_nano;

alter user selcuk
identified by selnano;

create role operate;
grant select, insert on personel to operate;
grant operate to selcuk;

grant all on takimlar to operate;
revoke select on personel from selcuk;
drop role operate;

grant create session, dba
to selcuk;

drop user selcuk;






