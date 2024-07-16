use milies;
create table employee1(id int,name varchar(20),salary int);
insert into employee1 values(1,"ravi1",10000),(2,"ravi2",15000),(3,"ravi3",20000),(4,"ravi4",50000);
select * from employee1;
select * from employee1 where salary=10000;
select * from employee1 where salary!=10000;
select * from employee1 where salary>15000;
select * from employee1 where salary>=15000;
select * from employee1 where salary<20000;
select * from employee1 where salary<=20000;
insert into employee1 values(5,"ravi5",10000)
select * from employee1;
select * from employee1 where salary=10000 and name="ravi";
select * from employee1 where salary=10000 or name="ravi";
alter table employee1 add column age int;
select * from employee1;
SET SQL_SAFE_UPDATES= 0;
update employee1 set age=20 where salary=15000;
select * from employee1 where age is null;
select * from employee1 where age is not null;
-- special operators between opr
select * from employee1 where salary between 10000 and 20000;
-- in opprator
select * from employee1 where salary in (10000,50000);
-- case operators
alter table employee1 add column bonus varchar(50);
select * from employee1;
select *,
case 
when salary <=10000 then "0x"
when salary <=20000 then "2x"
when salary <=50000 then "3x"
end as bonous
from employee1;
-- else operator
select *,
case
when salary >=50000 then "3x"
when salary >=20000 then "2x"
else "0x"
end as result
from employee1;
