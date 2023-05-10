create or replace trigger puanekleme
after insert on maclar
for each row
begin
    if (:new.gol_evsahibi > :new.gol_konuk) then
        update takimlar
        set puan=puan+3
        where tkno=(:new.tkm_id_ev);
    end if;
    if (:new.gol_evsahibi < :new.gol_konuk) then
        update takimlar
        set puan=puan+3
        where tkno=(:new.tkm_id_konuk);
    else
        update takimlar
        set puan=puan+1
        where tkno in (:new.tkm_id_ev, :new.tkm_id_konuk); 
    end if;
end;

    
    
-----------------------------------------    
    
    
    
create or replace trigger yasaklama
before delete on stadlar
begin
    dbms_output.put_line('Veri silemezsiniz.');
    rollback;
end;

    
    
-----------------------------------------    
    
    

create or replace trigger yasak_silme
before insert or delete or update on personel
begin
    if (to_char(sysdate, 'DY') in ('Paz','Cmt')) then
    dbms_output.put_line('Haftasonlari islem yapamazsiniz');
    rollback;
    end if;
end;