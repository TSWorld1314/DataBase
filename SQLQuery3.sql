--利用SQL语言进行增删改
/*
--Insert
--单一元组新增命令形式：插入一条指定元组值的元组
insert into Teacher(T#,Tname,D#,Salary)		--值与其匹配
values ('005','阮小七','03','1250');

insert into Teacher
values ('006','李小虎','03','950');

--批元组新增
insert into St (S#,Sname)
select S#,Sname from Student
where Sname like '%三' 

insert into St (S#,Sname)
select S#,Sname from Student
order by Sname

drop table SCt
create table SCt(
	S# char(8) not null,
	C# char(3),	
	Score float(1)
)
insert SCt(S#,C#,Score)
select S#,C#,Score from SC
where SC.Score>60

--Delete
--删除满足条件的指定元组
--where条件省略，则删除所有元组
delete from SC
where S#='98030101';

--删除自动控制系的所有同学
delete from Student where D# in
	(select D# from Dept where Dname = '自动控制')

--Update
--将所有教师工资上调5%
update Teacher
set Salary = Salary * 1.05;

--将所有计算机系的教师工资上调10%
update Teacher
set Salary = Salary * 1.1
where D# in
	(select D# from Dept where Dname = '计算机')
*/


