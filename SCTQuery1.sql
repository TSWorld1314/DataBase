/*
Select Sname,Sage,Ssex
From Student
where Sage<=19;

Select Tname
From Teacher
where (Salary<1500 or Salary>200) and D# = '03';

--求或者学过001号课程，或者学过002号课程的学生的学号
Select S#
From SC
where (C#='001' or C# = '002');

--显然是空值
Select S#
From SC
where C#='001' and C# = '002';

--在选课表中，检索成绩大于80分的所有学号，学号唯一
select distinct S#
from SC
where Score > 80;

select S#
from SC
where Score > 80;


--按学号由小到大的顺序显示出所有学生的学号及姓名
select S#,Sname
from Student
order by S# desc;		--asc或省略，为升序，desc为降序

--检索002号课大于80分的所有学生学号并按成绩由高到低顺序显示
select S#,Score
from SC
where C# = '002' and Score > 80
order by Score desc;
*/

--模糊查询问题，like
/*匹配规则
% 匹配零个或多个字符
_ 匹配任意单个字符
\ 转义字符，\%匹配字符%

--检索所有姓张的学生学号及姓名
select S#,Sname
from Student
where Sname like '张_';

--检索名字为张某某的所有同学姓名
select Sname
from Student
where Sname like '张__';
*/
--检索所有不姓张的学生学号及姓名
select S#,Sname
from Student
where Sname not like '张%';