-- transaction kullanimi

declare
takim number:=100;
begin
    savepoint Evre1;
    
    update takimlar
    set puan=puan+3
    where gname='B';
    
    insert into takimlar
    values (takim, 'Man. United', to_date('03/10/1908', 'MM/DD/YYYY'), 'B', '1000000', 0);
    commit;
    
    exception
    when dup_val_on_index then
    rollback to Evre1;
end;

select * from takimlar;