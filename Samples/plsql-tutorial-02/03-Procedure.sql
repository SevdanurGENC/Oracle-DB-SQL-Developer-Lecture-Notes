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
    dbms_output.put_line('dmg degeri : ' || dmg);
    exception
    when value_error then
    dbms_output.put_line('Degerlerde sorun var..');
end puan_goster;


begin
variable output number;
execute puan_goster('Besiktas','A',:output);
end;
 
select * from takimlar; 


------------------------------
create or replace procedure sayi_ekleme
(
sayi in varchar2, yeni out varchar2
)
as
begin
yeni := sayi || sayi;
dbms_output.put_line('Ekran ciktisi : ' || yeni);
exception
when value_error then
dbms_output.put_line('Degerlerde bir sorun var..');
end; 

variable output number;
execute sayi_ekleme('10',:output); 