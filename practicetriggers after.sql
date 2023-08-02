CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
CREATE TABLE AuditLog (
    LogID INT PRIMARY KEY,
    EventDescription VARCHAR(100),
    Timestamp DATETIME
);

create trigger afterinsert
on customers
after insert
as 
begin
 insert into AuditLog(LogID, EventDescription ,Timestamp)
 select CustomerID, CustomerName ,GETDATE() from Customers
end;

drop trigger afterinsert;

insert into Customers values(7, 'John Smith');

select * from AuditLog;

create trigger afterdelete
on customers 
after delete
as 
begin
  delete from AuditLog where LogID = (select 1 from deleted)
end;

drop trigger afterdelete;

delete from Customers where CustomerID =3 ;

create trigger afterupdate
on customers 
after update
as 
begin
	if update(CustomerName)
	begin 
		insert into AuditLog (LogID, EventDescription ,Timestamp)
		select CustomerID, CustomerName ,GETDATE() from inserted
	end;
end;

drop trigger afterupdate;

select *from Customers;

update Customers set CustomerName = 'smitn' where CustomerID = 5;
