use milies;
create table users(user_id int primary key,name varchar(100) not null, age int default 0);

create table orders2(
orderid int primary key,
productname varchar(100),
price int default 0,
uid int not null,
foreign key (uid) references users(user_id)
);
desc users;
insert into users values(1,"ravi",56);
select * from users;
insert into orders values(101,"soap",100,1);
insert into orders values (102,"toothpaste",100,1);
select * from orders;


