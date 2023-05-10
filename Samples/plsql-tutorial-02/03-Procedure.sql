-- Procedure kullanimi

create or replace procedure puan_goster
(
takim in varchar2,
grup in varchar2,
dmg out number
)
as
begin
    select puan into dmg
    from takimlar
    where gname=grup and isim=takim;
    exception
    when value_error then
    dbms_output.put_line('Degerlerde sorun var..');
end puan_goster;

execute puan_goster(takim=>'Besiktas'/*varchar2*/,grup=>'A'/*varchar2*/,dmg=>3/*number*/);
exec puan_goster('Besiktas','A',3); 

select * from takimlar;


------------------------------
create or replace procedure sayi_ekleme
(
sayi in varchar2, yeni out varchar2
)
as
begin
yeni := sayi || sayi;
exception
when value_error then
dbms_output.put_line('Degerlerde bir sorun var..');
end;

sayi_ekleme(sayi=>'10'/*varchar2*/,yeni=>'5'/*varchar2*/);
exec sayi_ekleme('10','5'); 