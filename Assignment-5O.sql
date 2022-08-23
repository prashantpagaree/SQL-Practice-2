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

select * from employeeposition;
select * from employeeinfo;

--1. From EmployeePosition table print average salaries Position wise.

select EmpPosition,avg(salary) as Avg_Salary from EmployeePosition group by EmpPosition

--2. Write a Query (WAQ) to get the Male to Female Ratio of employees.

select CAST((select count(gender) as Male from EmployeeInfo where gender ='F') as FLOAT)/
CAST((select count(gender) as Male from EmployeeInfo where gender ='M') AS float) AS MALE_TO_FEMALE_RATIO;

--3. Print all data from the employeeposition table with Salary casted as string datatype. 
-- Predict what error you will get if you execute query of question 1 with salary casted as string

select *,CAST(Salary as char(10)) as salary_new from EmployeePosition;
select EmpPosition,avg(salary) as Avg_Salary from EmployeePosition group by EmpPosition

--4. WAQ to print max and min salary department wise.

select EmpPosition,max(salary) as Max_Sal,min(salary) as min_sal from EmployeePosition group by EmpPosition;

--5. Use 3 different methods to change datatype of DateofJoining Column to string.

select *,CAST(DateOfJoing as Char(11)) as DOJ from EmployeePosition;
select *,CONVERT(char(11),DateOfJoing) as DOJ from EmployeePosition;
	

--6. Write a query to find the department with more than or equal to 2 employees in it.

select Department, Count(EmpID) as Total_Emp from EmployeeInfo group by Department having Count(EmpID)>=2;


