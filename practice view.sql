create database gowtham;

use gowtham;

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    Department VARCHAR(50),
    Percentage float,
    Name VARCHAR(100)
);

iNSERT INTO Student (StudentID, Department, Percentage, Name)
VALUES
    (1, 'Computer Science', 85.5, 'John Doe'),
    (2, 'Mathematics', 92.0, 'Jane Smith'),
    (3, 'Physics', 78.9, 'Michael Johnson'),
    (4, 'Chemistry', 65.2, 'Emily Brown'),
    (5, 'Biology', 70.7, 'David Wilson');

create view gowtham_view as
select studentID , Department , name, percentage
from student 
where Percentage < 80;

drop  view gowtham_view;

delete from gowtham_view where studentID =3;

select *from gowtham_view;

insert into gowtham_view values(6,'english','manik basha',99);

select *from Student;






