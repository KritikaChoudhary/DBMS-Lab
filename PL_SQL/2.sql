--2)Increased employee pay problem
set serveroutput on;
create table empl(
    ssn varchar(10) primary key,
    name varchar(20),
    sal int,
    deptno int
);

insert into empl values('1ms17is053','kritika',3000,3);
insert into empl values('1ms17is052','sabs',2000,10);
insert into empl values('1ms17is055','livz',1500,5);
insert into empl values('1ms17is066','mrudoola',1200,10);

declare
    cursor e is select * from empl;
begin
    update empl set sal=sal*1.15 where deptno=10;
    dbms_output.put_line('SSN          Name      Salary   DeptNo');
    for e1 in e loop
        dbms_output.put_line(e1.ssn||'  '||e1.name||'  '||e1.sal||'  '||e1.deptno);
    end loop;
    dbms_output.put_line('Employees with updated salary:'||sql%rowcount);
end;
/
