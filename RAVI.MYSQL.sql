create database AMAZON_CLONE1
USE AMAZON_CLONE1
CREATE TABLE USER_NAME(ID INT,NAME VARCHAR(50),EMAIL VARCHAR(20),PNO INT);
CREATE TABLE PRIME(ID INT,NAME VARCHAR(50),EMAIL VARCHAR(20),PRIME CHAR);
create table product(id int,name varchar(50),price bigint,discountprice int);
create table orders(id int,name varchar(50),finalprice int,address char);
SELECT * FROM USER_NAME