use assign5;
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


