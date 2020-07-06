/* 
--结果计算
--求有差额（差额>0）的任意两位教师的薪水差额
select T1.Tname as TR1,T2.Tname as TR2,T1.Salary-T2.Salary as ans
from Teacher T1,Teacher T2
where T1.Salary>T2.Salary;

--依据学生年龄求学生的出生年份，当前是2020
select S.S#,S.Sname,2020 - S.Sage+1 as Syear
from Student S;

--聚集函数COUNT、SUM、AVG、MAX、MIN
--求教师的工资总额
select sum(Salary) as total from Teacher;

--求计算机系教师的工资总额
select sum(Salary) as tatal
from Teacher T,Dept
where Dept.Dname = '计算机' and Dept.D# = T.D#

--分组查询
--学号相同的元组划到一个组并求平均值
select S#,avg(Score) as average
from SC
group by S#;

--课号相同的元组划到一个组并求平均值
select C#,avg(Score) as average
from SC
group by C#;

--分组过滤
--求不及格课程超过两门的同学的学号
select S#
from SC
group by S# having count(*)>2;

--求有1人以上不及格的课程号
select C#
from SC
where Score<60
group by C# having count(*)>1
*/












