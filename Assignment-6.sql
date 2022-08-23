--create database 
create database assign6;
use assign6;

--import students.csv into database
select * from Students;

--1a. Get first 3 characters in the student name

select student_name, LEFT(Student_Name,3) as Student_New from Students;

--1b. Convert all the student names into Upper and Lower case.Create both the columns in same table

select *, upper(Student_Name)as Stu_Name_Uppercase,LOWER(Student_Name) as Stu_Name_Lowercase from Students;

--1c. Reverse all the student names(writing the name from right to left)

select REVERSE(Student_Name) Stu_Name_Reverse from Students;

--1d. Add the section at the end of each student’s name along with ‘-’Example: Gabriela Benitez-A

select CONCAT(student_name, '-',section) as Stu_Name_with_Section from students;

--1e. Find the length of name of students

select Student_Name,LEN(student_name) as length from Students;

--1f. Find the Max & Min scores of each subject in the class

select max(SQL_Marks)as Max_SQL_Marks ,min(SQL_Marks) as Min_SQL_Marks,max(Excel_Marks) as Max_Excel_Marks,
min(Excel_Marks) as min_Excel_Marks,max(Python_Marks) as max_Python_Marks ,min(Python_Marks) as min_Python_Marks from Students;

--1g. Find the Average score of each subject in the class

select avg(SQL_Marks)as Avg_SQL_Marks,Avg(Excel_Marks) as Avg_Excel_Marks,
Avg(Python_Marks) as Avg_Python_Marks from Students;

--1h. Find the total no of students present in the class

select count(ID) as Total_Students from Students;

--1i. Find the day, month, year of joining of each student in the class separately.

select Joining_Date, day(Joining_Date) as Day_Of_Joining_Date,month(Joining_Date) as Month_Of_Joining_Date,
year(Joining_Date) as Year_Of_Joining_Date from Students;

--1j. Find the number of days of coaching each student has taken.

select Joining_Date, Leaving_Date, DATEDIFF(Day,Joining_Date,Leaving_Date) as Total_Coaching_Days from Students;

--2a. How many students passed Excel

select Count(Excel_Pass_Fail) as Excel_Passed_Students from Students where Excel_Pass_Fail = 'Pass';

--2b. How many students failed Python

select Count(Python_Pass_Fail) as Python_Failed_Students from Students where Python_Pass_Fail = 'Fail';

--2c. No of students who passed Excel in each of the joining months

Select month(Joining_Date) as Join_Month,count(Excel_Pass_Fail) as Total_Excel_Pass_Stud from Students where Excel_Pass_Fail='Pass' group by month(Joining_Date);

--2d. No of students who failed SQL in each of the joining months

Select month(Joining_Date) as Join_Month,count(SQL_Pass_Fail) as Total_SQL_Fail_Stud from Students where SQL_Pass_Fail='Fail' group by month(Joining_Date);

--2e. Find the section wise no of students failed in Python

select Section,count(Python_Pass_Fail) as Python_Fail_Stud from Students where Python_Pass_Fail ='Fail' group by section;

--2f. Segregate the A section students month wise

select Month(Joining_Date) As Joining_Month,count(ID) as Total_Stu  from Students where section = 'A' GROUP BY MONTH(Joining_Date);
