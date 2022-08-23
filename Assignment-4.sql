create database class_4;
use class_4;
select * from worker;
select department from worker;
select * from worker order by FIRST_NAME ASC;
select * from worker where department='Admin';
select * from worker where salary between 100000 and 500000;
select * from worker where Joining_date LIKE '%2014-02%';
select top 10 * from worker;
select * from worker order by department desc;
select count (*), department as no_of_workers from worker
group by department
order by department desc;
