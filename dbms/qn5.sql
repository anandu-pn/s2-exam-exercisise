CREATE DATABASE STORE;
USE STORE;
CREATE TABLE Product(PdtId varchar(4) primary key,PName varchar(20), Price 
double(5,2),Qunatity int(3));
select * from Product; 
delete from Product;
truncate table Product;
call inp("1001","Soap",2.99,12);
use company;
select distinctrow(manager_id) from employees;
create view service as
select concat(first_name," ",last_name) as Name,timestampdiff(YEAR,hire_date,curdate()) as Total_service  from employees;
select * from service;
select now() as date_time;
CREATE MATERIALIZED VIEW mv AS
SELECT first_name FROM employees;