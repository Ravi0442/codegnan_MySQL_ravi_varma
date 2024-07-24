use milies;

--- date function-----
create table emp10(
id int,
datee date);
insert into emp10 values(101,"2024-08-12");
select * from emp10;
-- >> current date <<----
select curdate();
select current_date();
-- >>dateadd()<<--
select date_add("2024-01-01",interval 3 month);
select date_add("2024-01-01",interval 3 day);
select date_add("2024-01-01",interval 3 year);
--- >>date diff()<<---
select datediff("2024-01-01","2025-01-01");

---- >> time <<----
create table emp22(
id int,
timee time);
insert into emp22 values(1,"03:03:03");
--- current time---
select curtime();
select addtime("01:01:01","10:10:10");
select subtime("01:01:01","10:10:10");
select timediff("11:10:10","10:10:10");

---- >>>time stamp<<<------
select current_timestamp;
select timestampdiff(month,"2024-02-01 10:10:10","2024-01-01 10:10:10");

create table emp14(
id int,
ts timestamp );
insert into emp14 values(
