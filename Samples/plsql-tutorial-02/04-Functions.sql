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

select tur_ucret('Besiktas') from dual;

select * from takimlar;
-------------------------------

create or replace function kare(sayi number)
return number
is 
begin
 return power(sayi,2); 
end;

select kare(9) from dual;
