CREATE DATABASE stores;
USE stores;
CREATE TABLE Product(PdtId INT PRIMARY KEY, Pname VARCHAR(20), Price 
DOUBLE(3,2),Qtyinstock INT); 
CREATE TABLE  Sale(saleId INT PRIMARY KEY, Deliveryaddress VARCHAR(50));
 CREATE TABLE Saleitem(saleId INT, PdtId INT, Qty INT,FOREIGN KEY (saleId) 
REFERENCES Sale(saleId), FOREIGN KEY (PdtId) REFERENCES 
Product(PdtId) ,PRIMARY KEY(saleId,PdtId)); 
INSERT INTO Product (PdtId, Pname, Price, Qtyinstock ) VALUES (101,"pencil", 5, 10), 
(102,"pen", 3, 10);
INSERT INTO Sale(saleId,Deliveryaddress) VALUES(001,"home123"),(002,"home345");
create trigger uaq
after insert on Saleitem
for each row
update Product set Qtyinstock=Product.Qtyinstock-new.Qty where PdtId=new.PdtId;
select * from Saleitem;
INSERT INTO Saleitem VALUES (001,102,1);
DELIMITER $$
create trigger ubi
before insert on Saleitem
for each row

BEGIN
	declare stq int ;
    select Qtyinstock into stq from product where Product.PdtId=new.PdtId;
	IF stq< new.Qty then
    SIGNAL SQLSTATE '45000'
    set MESSAGE_TEXT="Error : Not enough Quantity";
    END IF;
END $$
DELIMITER ;