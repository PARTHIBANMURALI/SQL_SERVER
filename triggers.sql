CREATE TABLE CUSTOMER3 (
    ID INT PRIMARY KEY,
    NAME VARCHAR(50),
    CITY VARCHAR(50),
    PHONENUMBER VARCHAR(15)
);
INSERT INTO CUSTOMER3 (ID, NAME, CITY, PHONENUMBER)
VALUES
    (1, 'John Doe', 'New York', '555-1234'),
    (2, 'Jane Smith', 'Los Angeles', '555-5678'),
    (3, 'Michael Johnson', 'Chicago', '555-9876'),
    (4, 'Emily Brown', 'Houston', '555-6543'),
    (5, 'William Lee', 'San Francisco', '555-8765');


CREATE PROCEDURE NAME3 (
	@NAME VARCHAR(50) , @CITY VARCHAR(50), @PHONENUMBER VARCHAR(15)
	)
AS
BEGIN 
  UPDATE CUSTOMER3 SET NAME = @NAME , CITY  = @CITY WHERE PHONENUMBER = @PHONENUMBER
END
 
EXECUTE NAME3 @NAME = PARTHIBAN , @CITY = THIRUVALLUR , @PHONENUMBER = '555-6543';

SELECT * FROM CUSTOMER3;

CREATE PROCEDURE NAME4 (
	 @PHONENUMBER VARCHAR(15)
)
AS 
BEGIN 
   DELETE  FROM CUSTOMER3 WHERE PHONENUMBER = @PHONENUMBER 
END

DROP PROCEDURE NAME4;

EXECUTE NAME4 @PHONENUMBER = '555-6543';