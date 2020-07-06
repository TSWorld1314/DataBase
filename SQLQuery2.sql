/*多表联合查询*/
/*
--按“001”号课成绩由高到低顺序显示所有学生的姓名
select Student.S# ,Sname,Score
from Student,SC
where Student.S# = SC.S# and SC.C# = '001'
order by Score desc;

--按‘数据库’课成绩由高到低顺序显示所有学生的姓名
select Student.Sname,Student.S#
from Student,Course,SC
where Student.S# = SC.S# and SC.C# = Course.C# and Course.Cname = '数据库'
order by Score desc

/*重名处理*/
--求由薪水差额的任意两位教师
select T1.Tname as Teacher1,T2.Tname as Teacher2
from Teacher T1,Teacher T2
where T1.Salary>T2.Salary;

--求年龄有差异的任意两名同学的姓名
select S1.Sname as name1,S2.Sname as name2
from Student as S1,Student as S2
where S1.Sage != S2.Sage;

--求‘001’号课程有成绩差异的任意两位同学
select S1.S# as student1,S2.S# as student2
from SC as S1,SC as S2
where S1.Score <> S2.Score and S1.C# = S2.C# and S1.C# = '001'


--求既学过‘001’号课又学过‘002’号课的所有学生的学号
select S1.S# as S#,S1.C# as C#
from SC as S1,SC as S2
where S1.S# = S2.S# and S1.C# = '001' and S2.C# = '002'
order by S#

--求‘001’号课成绩比‘002’号课成绩高的所有学生的学号
select S1.S# as S#
from SC as S1,SC as S2
where S1.S# = S2.S# and S1.C# = '001' and S2.C# = '002' and S1.Score > S2.Score
*/

--列出没学过李明老师讲授课程的所有学生的姓名





