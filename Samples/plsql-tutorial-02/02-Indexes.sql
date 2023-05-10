-- index kullanimi

create index takim_ad_ndx
on takimlar(isim);

select * from takimlar;

create index takim_gname_ndx
on takimlar(gname);

select * from takimlar;

drop index takim_gname_ndx;
 