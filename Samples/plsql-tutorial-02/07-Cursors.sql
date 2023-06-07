declare
silinen number(2);
begin
    delete from gruplar
    where g_name in ('D','H');
    
    silinen := SQL%ROWCOUNT;
    dbms_output.put_line(silinen||' Kayit silinmistir');
end;

select * from gruplar

---------------------------------

declare 
cursor c1 is
    select isim, puan from takimlar where puan<9;
    
    begin
        for takim in c1
        loop
        dbms_output.put_line(takim.isim||' '||takim.puan);
    end loop;
end;


---------------------------------


create table turatlama(
isim varchar(50),
puan NUMBER
)

select * from turatlama


declare 
cursor c1 is
select isim, puan from takimlar where puan>9;
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