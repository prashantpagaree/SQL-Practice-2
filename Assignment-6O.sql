use assign6;
select * from Students order by Joining_Date ;

--2a. Students whose names start with A and who joined in march

select Student_Name,month(Joining_Date) as Join_March from Students where Student_Name like 'A%'and Month(Joining_Date)=3; 

--2b. Students having C in their name and at least 7 characters in their name.

select Student_Name from Students where Student_Name like '%c%' and len(Student_Name)>=7;

--2c. In which month the maximum number of students registered

select top 1 month(Joining_Date)as join_month, count(id) as total_regi_stud  from Students GROUP BY month(Joining_Date) Order by count(id) desc;

--d. Student with minimum duration(days, and months) in EXCEL,SQL and python.

select top 1 Student_Name, datediff(day,Joining_Date,Leaving_Date) as Datediff from students order by datediff(day,Joining_Date,Leaving_Date);

--e. Section wise average duration (days and months) of students in course.

select section, avg(datediff(day,Joining_Date,Leaving_Date)) as Avg_Datediff from students group by Section  ;

--f. Give a month wise summary of number of registrations

select Month(Joining_Date) as Month ,count(ID) as no_of_regis from Students group by Month(Joining_Date);

--g. How many students joined in the last 45 days. Compare this with that of the first 45 days.

Select Count(ID) as Total_Reg_Stud from Students WHERE Joining_Date > (select dateadd(day,-45,max(Joining_Date)) from Students);

Select Count(ID) as Total_Reg_Stud from Students WHERE Joining_Date < (select dateadd(day,45,min(Joining_Date)) from Students);

--h. Get all records with an even date of registration.

select *,day(Joining_Date) as Even_Day from Students where day(Joining_Date) like '%[02468]';

--i. Get all records Starting from the first date with a difference in dates of 5.

select min(joining_date) from students;
select * from Students where Joining_Date between '2014-01-02' and '2014-01-07';

--j. Get all records from the 10th day of every month. (apply 3 different methods to get answers in 3 different approaches )

select * from Students where DAY(Joining_Date) like '_0';
select * from Students where DATEPART(day,Joining_Date) like '_0';
select * from Students where convert(varchar(25), Joining_Date ) like '%0';
select * from Students where cast(Joining_Date as varchar(25) ) like '%0';

--k. Convert the registration column format from this ‘YYYY-MM-DD’ to ‘YYYYMMDD’. (Example ‘2014-02-05’ becomes ‘20140205)
select Joining_Date, REPLACE(CAST(Joining_Date as Varchar(30)),'-','') as New_Join_Date from Students;

--l. WAQ to print SQL Marks column in marks/100 format.(Example 89 becomes 89/100)
select SQL_Marks, CONCAT(SQL_Marks,'/','100') as SQL_Percentage from Students;

--m. Print a code in a new column which follows: SQL-Excel-Python Marks (Example 70, 92, 44 becomes 70-92-44)

select *, CONCAT_WS('-', SQL_Marks,Excel_Marks,Python_Marks) as New_Marks from Students;