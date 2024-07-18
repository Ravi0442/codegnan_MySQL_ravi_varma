use milies;
create table emp5(id int,name varchar(50),city varchar(20));
insert into emp5 values(1,"ravi varma","london"),(2,"sai vardhan","londen"),(3,"vishnu vardhan","india"),(4,"milies","indea");
select * from emp5;
-- concat---
select concat("ravi"," ","varma")as fullname;
select concat(name,"place is",city)as print from emp5;
--- concat_ws(with seprator)---
select concat_ws(",","ravi","varma","milies");
select concat_ws(",",id,name,city)as print from emp5;
--- lower&upper---
select upper("ravi");
select lower("RAVI");
select name, upper(name) as uppercase from emp5;
select id,city,lower(name) as lowercase from emp5;
--- LENGTH&CHAR_LENGTH---
select length("milies ravi")as length;
select char_length("ravi_varma") as char_length;
select id,name,length(name) as length,char_length(name) as char_length from emp5;
--- substring----
select substring("miliesravi",5,9);
select id,substring(name,5,3)as substring from emp5;
--- reverse----
select reverse("ravi")as rev;
select id,name,reverse(name) as revname from emp5;
---- replace---
select replace("ravi varma","ravi","a")as replace_sring;
select id,name,replace(name,"ravi","va")as replace_string from emp5;
---- like----
select "ravivarma" like "%ma" as xyz;
select "ravivarma" like "r_vivarma" as abc;
select * from emp5 where city like "ia";
select * from emp5 where city like "lond_n";