drop table Student
drop table Dept
drop table Course
drop table Teacher
drop table SC
--学生
create table Student(
S# char(8) not null,--学号
Sname char(10),		--姓名
Ssex char(2),		--性别
Sage integer,		--年龄
D# char(2),			--所属系别
Sclass char(6)		--班级
)
--院系
create table Dept(
D# char(2),			--系别
Dname char(10),		--系名
Dean char(10)		--系主任
)
--课程
create table Course(	
C# char(3),				--课号
Cname char(12),			--课名
Chours integer,			--学时
Credit float(1),		--学分
T# char(3)				--教师编号
)
--教师
create table Teacher(
T# char(3),				--教师编号
Tname char(10),			--教师名
D# char(2),				--所属院系
Salary float(2)			--工资
)
--选课
create table SC(
S# char(8),				--学号
C# char(3),				--课号
Score float(1)			--成绩
)