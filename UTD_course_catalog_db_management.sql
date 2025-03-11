

create Database southwind;
Drop Database southwind;
create database if not exists southwind;
show databases;
drop database if exists southwind;
create database if not exists southwind;
select database();
use southwind;
select database();
use southwind;
show tables;
Create Table if not exists products (
  productID INT Unsigned NOT NULL AUTO_INCREMENT,
  productCode CHAR(3)    NOT NULL DEFAULT '',
  name   VARCHAR(30)   NOT NULL DEFAULT '',
  quantity INT UNSIGNED NOT NULL DEFAULT 0,
  price DECIMAL(7,2) NOT NULL DEFAULT 99999.99,
  PRIMARY KEY (productID)
  );
  show tables;
 DESCRIBE products;
  INSERT INTO products VAlUES (1001, 'PEN' , 'Pen Red', 5000,1.23);
  INSERT INTO products VAlUES 
      (NULL, 'PEN', 'Pen Blue', 8000, 1.25),
       (NULL, 'PEN', 'Pen Black', 2000, 1.25); 
SELECT * FROM products;
INSERT INTO products (productCode, name, quantity, price) 
VALUES
   ('PEC' , 'Pencil 2B ', 10000, 0.48),
   ('PEC' , 'Pencil 2H', 8000, 0.49);
INSERT INTO products (productCode, name) VALUEs ('PEC', 'Pencil HB');
select name, price from products where price <1.0;
select name, quantity from products where quantity <=2000 ;
select name, price from products where name like 'pencil%';
select name, price from products where name like 'pen%';
select * from products where quantity >= 5000 and name like 'pen%';
select * from products where not  (quantity >= 5000 and name like 'pen%');
select * from products where name in ('Pen Red' , 'Pen Black');
select * from products where (price between 1.0 and 2.0) and ( quantity between 1000 and 2000);
select * from products where productcode is null;
select productcode, max(price), min(price), 
	cast(avg(price) as decimal(7,2)) as 'average',
    cast(std(price) as decimal(7,2)) as 'std dev',
    sum(quantity)
    from products
    group by productcode;
