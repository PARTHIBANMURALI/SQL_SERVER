create table customers (
	customer_name varchar(25),
	city varchar(25),
	ordenum int
);
create table ordertables(
	ordernumber int,
	orderdate date,
	orderammount int,
	ordenum int
);
create table salesv(
	salesperson varchar(25),
	commision int,
	ordenum int,
	city varchar(25)
)
insert into customers values('John Doe', 'New York',101);
insert into customers values('Jane Smith', 'Los Angeles',102);
insert into customers values('Michael Johnson', 'Chicago',103);
insert into customers values('Emily Brown', 'San Francisco',104);
insert into customers values('William Lee', 'Houston',105);

INSERT INTO ordertables VALUES (101, '2023-07-01', 500,101)
INSERT INTO ordertables VALUES (102, '2023-07-02', 750,102)
INSERT INTO ordertables VALUES (103, '2023-07-03', 900,103)
INSERT INTO ordertables VALUES (104, '2023-07-04', 1200,104)
INSERT INTO ordertables VALUES (105, '2023-07-05', 600,105)

INSERT INTO salesv VALUES ('Alice Johnson', 100,101,'San Francisco')
INSERT INTO salesv VALUES ('Bob Smith', 150,102,'Chicago')
INSERT INTO salesv VALUES ('Carol Lee', 200,103,'New York')
INSERT INTO salesv VALUES ('David Brown', 75,104,'Los Angeles')
INSERT INTO salesv VALUES ('Eva Williams', 250,105,'Houston')

select *from customer;

select a.customer_name , a.city,a.ordenum,b.orderdate,b.orderammount,c.salesperson,c.commision , c.city
from customers a join ordertables b 
on a.ordenum = b.ordernumber
left outer join salesv c 
on a.ordenum =c.ordenum

select a.customer_name,a.city ,c.salesperson
from customers a join salesv c 
on a.city = c.city
