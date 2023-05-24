declare 
ucret int;
begin
    select maas into ucret
    from personelOrnek
    where ad='Sevdanur';
    loop
    if ucret>1500 then
        exit;
    end if; 
        update personelOrnek
        set maas=ucret*1.1
        where ad='Sevdanur'; 
        ucret:=ucret*1.1;
    end loop;
end;

--------------------------

select * from personelOrnek;

create table personelOrnek(
per_id number(5),
ad varchar2(50),
soyad varchar2(50),
maas int,
constraint pk_personelOrnek primary key(per_id)
);

insert into personelOrnek
values (otomatikid.nextval, 'Sevdanur', 'GENC', 1000);

drop table pk_personelOrnek;



--------------------------
-- EXIT WHEN ?art; -- ?art do?ru ise Döngüden

declare 
ucret int;
begin
    select maas into ucret
    from personelOrnek
    where ad='Sevdanur';
    loop
    exit when ucret>2500; 
        update personelOrnek
        set maas=ucret*1.1
        where ad='Sevdanur'; 
        ucret:=ucret*1.1;
    end loop;
end;

select * from personelOrnek;