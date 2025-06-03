create database storetest;
use storetest;
create table product (pid varchar(4) primary key ,pname varchar(12),pq int);
create table castomer(cid varchar(5) primary key,cname varchar(30),caddr varchar(60));
create table sale(pid varchar(4),cid varchar(5),quantity int,sid varchar(10) primary key, foreign key(pid)
references product (pid),foreign key(cid)
references castomer(cid));
INSERT INTO product (pid, pname, pq) VALUES
('P001', 'Laptop', 20),
('P002', 'Mouse', 50),
('P003', 'Keyboard', 30),
('P004', 'Monitor', 15),
('P005', 'Printer', 10);
INSERT INTO castomer (cid, cname, caddr) VALUES
('C001', 'Alice Sharma', 'Delhi, India'),
('C002', 'Bob Thomas', 'Mumbai, India'),
('C003', 'Charlie Khan', 'Chennai, India'),
('C004', 'Diana Mehra', 'Kolkata, India'),
('C005', 'Ethan Singh', 'Bangalore, India');
select * from product;
select * from castomer;

DELIMITER $$
create trigger bin
before insert on sale
for each row
BEGIN
	declare qty int;
    declare re varchar(20);
    select pq into qty from product where pid=new.pid;
    if qty<new.quantity then
    SIGNAL SQLSTATE '45000'
    set MESSAGE_TEXT="Error : Not enough quatity";
    end if;
END;
DELIMITER;

DELIMITER $$

create trigger ain
after insert on sale
for each row
begin
	update product set product.pq=product.pq-new.quantity where product.pid=new.pid;
end;

DELIMITER ;
select * from sale;
truncate table sale;
INSERT INTO sale (pid, cid, quantity, sid) VALUES ('P001', 'C001', 1, 'S1003');
SHOW TRIGGERS;

DELIMITER $$
create trigger ain
after insert on sale
for each row
begin
	update product set product.pq=product.pq-new.quantity where product.pid=new.pid;
end;
DELIMITER;

create event myev1
on schedule every 30 second
do
select "event_test";
show event;
drop event myev1;