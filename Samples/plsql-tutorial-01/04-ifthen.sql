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

----------------------------------

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

----------------------------------

declare
fark number(5);
begin
    select max(kapasite) into fark
    from stadlar;
    if fark=10000 then
        dbms_output.put_line('Kapasitesi 10000');
    elsif fark=20000 then
        dbms_output.put_line('Kapasitesi 20000');
    else
        dbms_output.put_line('Kapasitesi 20000den buyuk');
    end if;
end;









