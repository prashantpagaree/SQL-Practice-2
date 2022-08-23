create database a4o;
use a4o;

select * from worker;

--Q.1 From workers table print first, last names along with their department in descending order of salaries

SELECT FIRST_NAME, LAST_NAME, DEPARTMENT fROM [dbo].[Worker] ORDER BY SALARY DESC;

--Q.2 From workers table print first, last names in descending order of seniority (based on joining date)

Select FIRST_NAME, LAST_NAME FROM WORKER ORDER BY JOINING_DATE ASC;


select FIRST_NAME, LAST_NAME from worker where LAST_NAME LIKE 'A%';

--Q.6 From workers table print last names of employees which has w in them

select LAST_NAME FROM WORKER WHERE LAST_NAME LIKE '%w%';
