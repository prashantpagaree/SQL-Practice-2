create database assign5;
use assign5;

--create table EmployeeInfo

create table EmployeeInfo(
EmpID Int,
EmpFname char(10),
EmpLname char(10),
Department char(10),
Project varchar(5),
Address varchar(25),
DOB DATE,
Gender char(2));

select * from EmployeeInfo;
insert into EmployeeInfo
values(1,'Sanjay', 'Mehra', 'HR', 'P1', 'Hyderabad(Hyd)','01/12/19','M'),
(2,'Ananya', 'Mishra', 'Admin', 'P2', 'Delhi(DEL)','02/05/19','F'),
(3,'Rohan', 'Diwan', 'Account', 'P3', 'Mumbai(BOM)','01/12/19','M'),
(4,'Sonia', 'Kulkarni', 'HR', 'P1', 'Hyderabad(Hyd)','01/12/19','F'),
(5,'Ankit', 'Kapoor', 'Admin', 'P2', 'Delhi(DEL)','01/12/19','M');

--create table EmployeePosition

create table EmployeePosition(
EmpID Int,
EmpPosition char(10),
DateOfjoing date,
salary int );

select * from EmployeePosition;

insert into EmployeePosition
values(1,'Manager','01/05/2022',500000 ),
(2,'Executive','02/05/2022',75000 ),
(3,'Manager','01/05/2022',90000 ),
(4,'Lead','02/05/2022',85000 ),
(5,'Executive','01/05/2022',300000 );

--Q.1 Write a query to fetch the department-wise count of employees sorted by department’s count in ascending order.

select Department , count(EmpID) as emp_count from EmployeeInfo Group by Department order by count(EmpID);

--Q.2 Write a query to retrieve the list of employees working in the same department. (give any department as filter)

select EmpID from EmployeeInfo where Department='Admin';

--Q.3 Write a query to retrieve Departments which have less than 2 employees working in it.

select Department from EmployeeInfo group by department having count(Department)<2;

--Q.4 Write a query to retrieve EmpPostion along with total salaries paid for each of them.

select EmpPosition, Sum(Salary) as Total_salary from EmployeePosition group by EmpPosition;

--Q.5. Write a query to find the sum of salaries of employees with position “Manager”.

select Sum(salary) as Emp_Salaries from EmployeePosition where EmpPosition='Manager';

--Q.6. Write a query to find the gender count of the employees.

select Gender,count(Gender) as Total from EmployeeInfo GROUP BY Gender;
