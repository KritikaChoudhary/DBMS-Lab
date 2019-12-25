create table employee(
  ssn int primary key,
  name varchar(20),
  deptno int
);

create table project(
  pno int primary key,
  area varchar(10)
);

create table assigned(
  usn int,
  pno int,
  primary key(usn,pno),
  foreign key(usn) references employee(ssn) on delete cascade,
  foreign key(pno) references project(pno) on delete cascade
);

insert into employee values(1,'kritika',10);
insert into employee values(2,'saba',10);
insert into employee values(3,'livz',3);
insert into employee values(4,'mrudoola',5);

insert into project values(12,'dbms');
insert into project values(20,'network');
insert into project values(32,'testing');
insert into project values(40,'storage');

insert into assigned values(1,32);
insert into assigned values(2,12);
insert into assigned values(3,12);
insert into assigned values(2,40);

select usn from assigned,project where assigned.pno=project.pno and area='dbms';
select deptno DEPT,count(*) No_of_employees from employee group by deptno;
update assigned set pno=20 where usn=1;


  -- SELECT ac.table_name,
  --          column_name,
  --          position,
  --          ac.constraint_name,
  --          DECODE (constraint_type, 'P', 'Primary Key', 'Foreign Key') key_type,
  --          (SELECT ac2.table_name
  --             FROM all_constraints ac2
  --            WHERE AC2.CONSTRAINT_NAME = AC.R_CONSTRAINT_NAME)
  --             fK_to_table
  --     FROM all_cons_columns acc, all_constraints ac
  --    WHERE     acc.constraint_name = ac.constraint_name
  --          AND acc.table_name = ac.table_name
  --          AND CONSTRAINT_TYPE IN ('P', 'R')
  --          AND ac.table_name = 'reserves'
  --          ORDER BY table_name, constraint_type, position;
