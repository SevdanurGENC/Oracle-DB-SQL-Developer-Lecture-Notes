declare
harf varchar2(1);
begin
    select gname into harf
    from takimlar
    where isim='Besiktas';
    case harf
        when 'A' then dbms_output.put_line ('1.Grup');
        when 'B' then dbms_output.put_line ('2.Grup');
        when 'C' then dbms_output.put_line ('3.Grup');
        when 'D' then dbms_output.put_line ('4.Grup');
        when 'E' then dbms_output.put_line ('5.Grup');
        else dbms_output.put_line ('6. Grup');
    end case;
end;
 