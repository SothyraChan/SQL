--Assignment-1
--Query-1
CREATE TABLE Employee(
   EMP_id number PRIMARY KEY,
   EMP_name varchar2(50) NOT NULL,
   EMP_department varchar2(50),
   EMP_contactno number,
   EMP_emailid varchar(100) NOT NULL,
   EMP_salary number,
   EMP_ispermanent varchar(3),
   CONSTRAINT check_EMP_ispermanent CHECK (EMP_ispermanent IN ('Yes', 'No'))
);

--Query-2
INSERT ALL
  INTO Employee (EMP_id, EMP_name, EMP_department, EMP_contactno, EMP_emailid, EMP_salary, EMP_ispermanent) VALUES (100, 'KIMMY', 'D-111', '6478926383', 'kimmy@my.Centennial college.ca', 6000, 'Yes')
  INTO Employee (EMP_id, EMP_name, EMP_department, EMP_contactno, EMP_emailid, EMP_salary, EMP_ispermanent) VALUES (101, 'DASHA', 'D-112', '6478626783', 'dasha@gmail.com', 7000, 'No')
  INTO Employee (EMP_id, EMP_name, EMP_department, EMP_contactno, EMP_emailid, EMP_salary, EMP_ispermanent) VALUES (102, 'CASSY', 'D-111', '6478326385', 'cassy@my.Centennial college.ca', 5000, 'Yes')
  INTO Employee (EMP_id, EMP_name, EMP_department, EMP_contactno, EMP_emailid, EMP_salary, EMP_ispermanent) VALUES (103, 'JANE', 'D-112', '6478126307', 'jane@gmail.com', 4000, 'No')
  INTO Employee (EMP_id, EMP_name, EMP_department, EMP_contactno, EMP_emailid, EMP_salary, EMP_ispermanent) VALUES (104, 'ANDY', 'D-111', '6478226385', 'andy@my.Centennial college.ca', 5500, 'Yes')
  INTO Employee (EMP_id, EMP_name, EMP_department, EMP_contactno, EMP_emailid, EMP_salary, EMP_ispermanent) VALUES (105, 'DANNY', 'D-112', '6473956388', 'danny@gmail.com', 3500, 'No')
Select * From dual;
  
--Query-3
 DELETE FROM Employee WHERE EMP_salary > 5000;
 
--Query-4
 Select * From Employee WHERE EMP_name LIKE 'A_d%';
 
--Query-5
 
 Select * From Employee WHERE EMP_department = 'D-111' OR EMP_department = 'D-112';
  
--Query-6
 SELECT * FROM Employee WHERE EMP_emailid LIKE '%my.Centennial college.ca';
 
--Query-7
 Select Count(*) AS emp_3000_salary FROM Employee WHERE EMP_ispermanent = 'Yes' AND EMP_salary > 3000;
 
--Query-8
 Select MAX(EMP_salary) AS emp_highest_salary FROM Employee WHERE EMP_ispermanent = 'Yes';

--Query-9
 Select EMP_name, EMP_contactno From Employee WHERE EMP_department = 'D-123';

--Query-10
 Select COUNT(DISTINCT EMP_department) AS emp_distinct_department From Employee;
 
 