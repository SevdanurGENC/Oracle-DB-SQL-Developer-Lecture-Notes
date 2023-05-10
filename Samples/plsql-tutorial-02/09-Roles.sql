create user selcuk
identified by sel_nano;

alter user selcuk
identified by selnano;

create role operate;
grant select, insert on personel to operate;
grant operate to selcuk;

grant all on takimlar to operate;
revoke select on personel from selcuk;
drop role operate;

grant create session, dba
to selcuk;

drop user selcuk;