CREATE TABLE Student_Records   
(  
Student_Id Int PRIMARY KEY,    
First_Name VARCHAR (20),    
Address VARCHAR (20),    
Age Int NOT NULL,  
Percentage Int NOT NULL,  
Grade VARCHAR (10)   
) ;  

INSERT INTO Student VALUES (201, Akash, Delhi, 18, 89, A2),   
(202, Bhavesh, Kanpur, 19, 93, A1),  
(203, Yash, Delhi, 20, 89, A2),    
(204, Bhavna, Delhi, 19, 78, B1),  
(05, Yatin, Lucknow, 20, 75, B1),  
(206, Ishika, Ghaziabad, 19, 51, C1),  
(207, Vivek, Goa, 20, 62, B2);  


SELECT * FROM Student_Records;  
SELECT Student_Id, Age, Percentage, Grade FROM Employee;  