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

select * from takimlar;

select ornek2('Man. United') from dual;
DROP FUNCTION ornek2;
set serveroutput on;



 
----------------------------------------------

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
  