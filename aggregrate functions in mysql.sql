create database milies;
use milies;
create table student_data(
id int not null,
stuname varchar(50) not null,
stusubjects varchar(20) not null,
marks int default 0
);
desc student_data;
insert into student_data values(1,"ravi","english",90),(1,"ravi","maths",60),(1,"ravi","soscial",95);
select * from student_data;
insert into student_data values(2,"varma","english",95),(2,"varma","maths",58),(2,"varma","soscial",92);
insert into student_data values(3,"srinu","english",98),(3,"srinu","maths",56),(3,"srinu","soscial",82);
insert into student_data values(4,"nani","english",52),(4,"nani","maths",56),(4,"nani","soscial",89);
insert into student_data values(5,"sai","english",58),(5,"sai","maths",30),(5,"sai","soscial",60);
select sum(marks) from student_data;
select count(id) from student_data;
select min(marks) from student_data;
select max(marks) from student_data;
select avg(marks) from student_data;

select id,sum(marks) as total_marks from student_data group by id;
select id,marks as english_marks from student_data where stusubjects ="english";

create table final_marks(
id int primary key,
student_name varchar(100),
student_marks int
);
select  * from final_marks;

insert into final_marks select id,stuname,sum(marks) as total_marks from student_data group by id,stuname;
select * from final_marks;