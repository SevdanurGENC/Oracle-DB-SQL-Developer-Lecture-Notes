create or replace view puanlist
as
select isim, puan
from takimlar
where gname in ('A','B');

select * from puanlist;
select * from takimlar;

-----------------------------

create or replace view puanliste 
as
select isim, puan
from takimlar
where isim='Besiktas' or puan=9
order by puan desc;
 
select * from puanliste;

-----------------------------

create or replace view Macsonucu
as
    select t1.isim, m.gol_evsahibi, m.gol_konuk
    from takimlar t1, maclar m
    where m.tkm_id_ev=t1.tkno and t1.tkno=m.tkm_id_konuk and t1.gname='A'
with read only;

select * from maclar;
select * from takimlar;

select * from Macsonucu;







----------------------
create or replace view Macsonucu
as
    select tBir.isim, m.gol_evsahibi, tIki.isim, m.gol_konuk
    from takimlar tBir, takimlar tIki, maclar m
    where m.tkm_id_ev=tBir.tkno and m.tkm_id_konuk=tIki.tkno and tBir.gname='A'
with read only;

select * from maclar;
select * from takimlar;

select * from Macsonucu;