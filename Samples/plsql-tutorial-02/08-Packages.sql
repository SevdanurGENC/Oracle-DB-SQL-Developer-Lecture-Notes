create or replace package dort_islem is
function hesapla(islem1 number, islem2 number, islem3 varchar2) return varchar2;
end dort_islem;

create or replace package body dort_islem is
function hesapla(islem1 number, islem2 number, islem3 varchar2)
return varchar2 is
result varchar2(500);
begin
    if islem3='+' then
        result := to_char(islem1) || '+' || to_char(islem2) || '=' || (islem1 + islem2);
    elsif islem3='-' then
        result := to_char(islem1) || '-' || to_char(islem2) || '=' || (islem1 - islem2);
    end if;
    
    return(result);
end;
begin
    null;
end dort_islem; 

select dort_islem.hesapla(6,4,'+') "Toplama islemi",
        dort_islem.hesapla(6,4,'-') "Cikarma islemi"
from takimlar;