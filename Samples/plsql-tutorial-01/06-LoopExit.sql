declare 
ucret int;
begin
    select maas into ucret
    from personel
    where ad='Sevdanur';
    loop
    if ucret>150 then
        exit;
    end if; 
        update personel
        set maas=ucret*1.1
        where ad='Sevdanur'; 
        ucret:=ucret*1.1;
    end loop;
end;

--------------------------

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



--------------------------
-- EXIT WHEN ?art; -- ?art do?ru ise Döngüden

declare 
ucret int;
begin
    select maas into ucret
    from personel
    where ad='Sevdanur';
    loop
    exit when ucret>1500; 
        update personel
        set maas=ucret*1.1
        where ad='Sevdanur'; 
        ucret:=ucret*1.1;
    end loop;
end;

select * from personel;