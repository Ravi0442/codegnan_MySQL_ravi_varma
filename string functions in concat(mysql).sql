-- string functions
use milies;
-- concat function
create table student(fname varchar(50),lname varchar(50),age int);
insert into student values("ravi","a",20),("varma","b",22),("rv","c",23);
select * from student;
select concat(fname," ",lname) as full_name from student;
select fname,lname, concat(fname," ",lname,"(",age,")") as data from student;