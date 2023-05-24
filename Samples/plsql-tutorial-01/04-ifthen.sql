declare
fark number(5);
begin 
    select kapasite into fark
    from stadlar
    where isim='Inonu';
    if fark>1000 then
        dbms_output.put_line('Kapasitesi 1000den buyuk');
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
    if fark>1000 then
        dbms_output.put_line('Kapasitesi 1000den buyuk');
    else
        dbms_output.put_line('Kapasitesi 1000den kucuk');
    end if;
end;

----------------------------------

declare
fark number(5);
begin
    select max(kapasite) into fark
    from stadlar;
    if fark=1000 then
        dbms_output.put_line('Kapasitesi 1000');
    elsif fark=2000 then
        dbms_output.put_line('Kapasitesi 2000');
    else
        dbms_output.put_line('Kapasitesi 2000den buyuk');
    end if;
end;









