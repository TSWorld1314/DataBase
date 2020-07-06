--修正数据库
/*
--修正基本表
--在学生表Student基础上增加二列Saddr，PID
alter table Student add Saddr char(40),PID char(18)

--将student表中Sname列的数据类型增加两个字符
--alter table Student modify Sname char(12);			--错误

--删除学生姓名必须取唯一值的约束
alter table Student drop unique(Sname);					--错误
*/


