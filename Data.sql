--Student(S#,Sname,Ssex,Sage,D#,Sclass)
Insert Into Student Values('98030101','张三','男',20,'03','980301');
Insert Into Student Values('98030102','张四','女',20,'03','980301');
Insert Into Student Values('98030103','张五','男',19,'03','980301');
Insert Into Student Values('98040201','王三','男',20,'04','980402');
Insert Into Student Values('98030102','王四','男',21,'04','980402');
Insert Into Student Values('98030102','王五','女',19,'04','980402');
--Course(C#,Cname,Chours,Credit,T#)
Insert Into Course Values('001','数据库',40,6,'001');
Insert Into Course Values('003','数据结构',40,6,'003');
Insert Into Course Values('004','编译原理',40,6,'001');
Insert Into Course Values('005','C语言',30,4.5,'003');
Insert Into Course Values('002','高等数学',80,12,'004');
--Teacher(T#,Tname,D#,Salary)
Insert Into Teacher Values('001','赵三','01',1200.00);
Insert Into Teacher Values('002','赵四','03',1400.00);
Insert Into Teacher Values('003','赵五','03',1000.00);
Insert Into Teacher Values('004','赵六','04',1100.00);
insert into Teacher values('006','李小虎','03',950);
insert into Teacher values('005','阮小七','03',1250);
--SC(S#,C#,Score)
Insert Into SC Values('98030101','001',92);
Insert Into SC Values('98030101','002',85);
Insert Into SC Values('98030101','003',88);
Insert Into SC Values('98040202','002',90);
Insert Into SC Values('98040202','003',80);
Insert Into SC Values('98040202','001',55);
Insert Into SC Values('98040203','003',56);
Insert Into SC Values('98030102','001',54);
Insert Into SC Values('98030102','002',85);
Insert Into SC Values('98030102','003',48);
--Dept(D#,Dname,Dean)
Insert Into Dept Values('01','机电','李三');
Insert Into Dept Values('02','能源','李四');
Insert Into Dept Values('03','计算机','李五');
Insert Into Dept Values('04','自动控制','李六');

