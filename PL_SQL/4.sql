--4) Copying content from one table to another
set serveroutput on;
create table emp1(
    ssn varchar(10) primary key,
    name varchar(20),
    sal int,
    deptno int
);
create table emp2(
    ssn varchar(10) primary key,
    name varchar(20),
    sal int,
    deptno int
);

insert into emp1 values('1ms17is053','kritika',3000,3);
insert into emp1 values('1ms17is052','sabs',2000,10);
insert into emp1 values('1ms17is055','livz',1500,5);
insert into emp1 values('1ms17is066','mrudoola',1200,10);

declare
    cursor c is select * from emp1;
    cursor e is select * from emp2;
begin
    for c1 in c loop
        insert into emp2 values(c1.ssn,c1.name,c1.sal,c1.deptno);
        --dbms_output.put_line('');
    end loop;
    dbms_output.put_line('Copied Table');
    for e1 in e loop
        dbms_output.put_line(e1.ssn||' '||e1.name||' '||e1.sal||' '||e1.deptno);
    end loop;
end;
