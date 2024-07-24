use milies;
create table pin(id int,name varchar(50),pn int);
insert into pin values(1,"ravi",101),(2,"srinu",102),(3,"gopi",103),(4,"ravi",104);
select * from pin
create table course(cid int,cname varchar(50));
insert into course values(1,"it"),(2,"cse"),(3,"ece");
select * from course;
---- inner join------
select cid,cname,cname from pin inner join course on course.cid=pin.id;
----- left join -----
select cid,cname,name from pin left join course on course.cid=pin.id;
----- right join ------
select cid,cname,name from pin right join course on course.cid=pin.id
----- full order join ------
select * from pin,course;
---- self join ------
create table cr(c1 varchar(50),name varchar(50),c2 varchar(20));
insert into cr values("red","ravi","red"),("blue","srinu","blue"),("green","kiran","red"),("yellow","chandu","pink");
select * from cr;
select a.c1,b.c2,a.name as detail from cr as a,cr as b where a.c1=b.c2;