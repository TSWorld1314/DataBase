/*
--in子查询
select *
from Student
where Sname in ('张三','王三')

--列出选修了001号课程的学生的学号和姓名
select S#,Sname
from Student
where S# in (select S# from SC where C#='001');

--求既学过001号课程又学过002好课程的学生的学号
select S#
from SC
--where S# in (select S# from SC where C#='001') and S# in (select S# from SC where C#='002')
where C# = '001' and S# in (select S# from SC where C#='002')

--列出没学过李明老师讲授课程的所有学生的姓名
select Student.Sname
from Student,SC,Course
where Student.S# = SC.S# and SC.C# = Course.C# and T# not in (select T# from Teacher where Tname = '李明')

select Sname
from Student
where S# not in (select S# from SC,Course C,Teacher T
				 where T.Tname='李明' and SC.C# = C.C# and T.T#=C.T#)

--比较运算符some，all子查询

--找出工资最低的教师姓名
select Tname 
from Teacher
where Salary <= all(select Salary from Teacher)

select S#
from SC
where C# = '001' and Score < some(select Score from SC where C# = '001')

--找出所有课程都不及格的学生姓名
select Sname 
from Student
where 60 > all(select Score from SC where S# = Student.S#);

--找出张三同学成绩最低的课程号(相关子查询)
select C#,S.Sname
from SC,Student S
where Sname='张三' and S.S# = SC.S# and Score <= all(select Score from SC where S# = S.S#)

--exists子查询,测试集合是否为空，是不是存在重复元组
--检索选修了赵三老师主讲课程的所有学生的姓名
select distinct Sname
from Student
where exists(select * from SC,Course,Teacher where SC.C# = Course.C# and SC.S# = Student.S# and Course.T# = Teacher.T# and Tname = '赵三')
*/
--检索学过001号教师主讲的所有课程的所有同学的姓名
select Sname from Student	--不存在有一门001号教师主讲的课程该同学没学过
where not exists
		(
		select * from Course
		where Course.T#='001' and not exists(select * from SC
											where S#=Student.S# and C# = Course.C#)
		);




