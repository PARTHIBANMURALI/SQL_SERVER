CREATE TABLE STUDENT_DETAILS1 (
    ID INT PRIMARY KEY,
    NAME VARCHAR(50),
    CITY VARCHAR(50),
    PERCENTAGE DECIMAL(5, 2)
);
INSERT INTO STUDENT_DETAILS1 (ID, NAME, CITY, PERCENTAGE)
VALUES
    (1001, 'John Doe', 'New York', 85.5),
    (1002, 'Jane Smith', 'Los Angeles', 92.0),
    (1003, 'Michael Johnson', 'Chicago', 78.3),
    (1004, 'Emily Brown', 'Houston', 89.7),
    (1005, 'William Lee', 'San Francisco', 95.2);

CREATE view studentView_table
as
select ID,NAME,CITY,PERCENTAGE from STUDENT_DETAILS1
where PERCENTAGE > 70 

drop view studentView_table;

select * from STUDENT_DETAILS1;
select *from studentView_table;

create trigger parthi on studentView_table
instead of update
as
begin 
   update STUDENT_DETAILS1 set PERCENTAGE = 80 where ID = 1002
end

drop trigger parthi;

update studentView_table set PERCENTAGE  = 90 where ID =1002;

create trigger parthi1 on studentView_table 
instead of delete 
as 
begin 
  delete from STUDENT_DETAILS1 where id = 1003 ;
end;

delete from studentView_table where PERCENTAGE BETWEEN 70 AND 79
