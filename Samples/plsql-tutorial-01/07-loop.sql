-- While Loop Yapisi

declare 
ucret int;
begin
    select maas into ucret
    from personelOrnek
    where ad='Sevdanur'; 
    while ucret<3500 loop 
        update personelOrnek
        set maas=ucret*1.1
        where ad='Sevdanur'; 
        ucret:=ucret*1.1;
    end loop;
end;

select * from personelOrnek;


-- For Loop Yapisi  

declare 
sayi number(2);
begin
    select count(distinct(gname)) into sayi
    from takimlar;  
    for i in 1..sayi loop
        dbms_output.put_line(i||'.Grup');
    end loop;
end;