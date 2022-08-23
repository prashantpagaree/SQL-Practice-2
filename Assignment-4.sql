--create database 
create database class_4;

--use database 
use class_4;

--Import Worker.csv Dataset Worker.csv
select * from worker;

--. Write an SQL query to fetch all values of DEPARTMENT from the Worker table.
select department from worker;

--B. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending
select * from worker order by FIRST_NAME ASC;

--C. Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”
select * from worker where department='Admin';

--D. Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.
select * from worker where salary between 100000 and 500000;

--E. Write an SQL query to print details of the Workers who have joined in Feb‟2014
select * from worker where Joining_date LIKE '%2014-02%';

--F. Write an SQL query to fetch the no. of workers for each department in the descending order
select * from worker order by department desc;

--G. Write an SQL query to show the top n (say 10) records of a table
select top 10 * from worker;
