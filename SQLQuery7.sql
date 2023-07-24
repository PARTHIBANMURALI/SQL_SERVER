create table student_details (
   studentId int,
   name varchar(25),
   studYear int,
   per float,
)
create table sport (
   studentId int ,
   event varchar(25),
   price int
)
create table extraciriculum (
	studentId int,
	nofsimposium int,
	noofimplant int,
	nameintership varchar(25),
)

insert into student_details values(1001,'gowtham',2022,98)
insert into student_details values(1002,'parthi',2023,92)
insert into student_details values(1003,'sathish',2021,95)
insert into student_details values(1004,'deepak',2023,89)
insert into student_details values(1005,'benito',2021,86)
insert into student_details values(1006,'kolkata',2020,78)
insert into student_details values(1007,'raama',2022,88)
insert into student_details values(1008,'arun',2023,98)
insert into student_details values(1009,'kala',2019,56)

select *from student_details;

insert into sport values(1001,'cricket',2)
insert into sport values(1003,'batboll',1)
insert into sport values(1005,'tennis',3)
insert into sport values(1002,'carrom',5)
insert into sport values(1006,'basketball',4)
insert into sport values(1004,'football',2)
insert into sport values(1009,'chess',1)

select *from sport; 
insert into extraciriculum values(1002,2,1,'SRF')
insert into extraciriculum values(1005,3,2,'TCS')
insert into extraciriculum values(1007,5,4,'ZOHO')
insert into extraciriculum values(1003,4,6,'INFOSIS')
insert into extraciriculum values(1006,3,2,'SIMSON')

select *from extraciriculum;

select a.studentId,a.name,a.studYear,a.per ,b.event,b.price ,c.nameintership,c.nofsimposium,c.noofimplant
from student_details a join sport b on a.studentId =b.studentId 
LEFT OUTER join extraciriculum c
on a.studentId = c.studentId

sp_help student_details;
