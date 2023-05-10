merge into bolum b
using dual s on (b.bno=1)
when matched then
update set ad='Bote'
when not matched then
insert (bno,ad) values (1,'Bote');



Declare
sayi number(5):=0;
Declare
sayi number(5) default 0;


declare
dmg_integer NUMBER(6):=3;
dmg_scale_3 NUMBER(6,3);
dmg_real NUMBER;
    begin
        dbms_output.put_line(dmg_integer);
    end;

declare
   weekNumber Date := to_date('2020-10-01','YYYY-MM-DD');
     begin
       dbms_output.put_line(weekNumber);
     end;

declare
dmg_boolean boolean;
    begin
        dmg_boolean := 'TRUE';  
        dbms_output.put_line(dmg_boolean);
    end;

DECLARE
  v1 BOOLEAN := FALSE;
BEGIN
  DBMS_OUTPUT.PUT_LINE( 'result = ' || CASE WHEN v1 THEN 'true' ELSE 'false' END );
END;




declare 
ucret int;
begin
    select maas into ucret
    from personel
    where ad='selcuk';    
while ucret<2500 Loop    
    update personel
    set maas = ucret * 1.1
    where ad='selcuk';
    
    ucret := ucret*1.1;
end loop;    
    

declare
ucret int;

declare 
ucret int:=500;

declare 
ucret int not null:=500;

declare
ucret constant int:=5000;

