create table company(
	company_name varchar(20),
	company_id int primary key
)
create table product_detail(
	product_name varchar(50),
	product_id int,
	price int,
	company_id int foreign key  REFERENCES company(company_id)
)

insert into company values('Samsung', 1);
insert into company values('Apple', 2);
insert into company values('Redmi', 3);
insert into company values('nokia',4);

insert into product_detail values('Note 6 pro',1002,34000,3);
insert into product_detail values('Galaxy S21', 101,100000, 1);
insert into product_detail values('iPhone 13', 201, 1200, 2);
insert into product_detail values('Redmi Note 10', 301, 300, 3);
insert into product_detail values('Galaxy A52', 102, 500, 4);
insert into product_detail values('airpod fin',106,12000,2);
insert into product_detail values('3311',203,230000, 4);

select*from company;
select *from product_detail;

select a.company_name,b.product_id,b.product_name,b.price
from company a inner join product_detail b on a.company_id=b.company_id;

select a.company_name,b.product_id,b.product_name,b.price
from company a join product_detail b on a.company_id=b.company_id
where b.price=(select max(price)from product_detail where company_id=b.company_id)

sp_help company;