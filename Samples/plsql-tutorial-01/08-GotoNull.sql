-- GoTo Yapisi

declare
sayi number(2):=1;
begin
    <<dmg>>
    if sayi<6 then
    sayi:=sayi+1;
    dbms_output.put_line(sayi);
    goto dmg;
    end if;
end;


-- Null Yapisi
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
