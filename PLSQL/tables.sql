create table employee(
  ssn varchar(10) primary key,
  Name varchar(20),
  sal int,
  deptno int
);

create table customer(
  ssn int primary key,
  name varchar(20),
  place varchar(20)
);

create table branch(
  code char(2) primary key,
  name varchar(20),
  assets int
);

create table account(
  accNo char(2),
  ssn int,
  code char(2),
  bal int,
  foreign key(code) references branch(code) on delete cascade,
  foreign key(ssn) references customer(ssn) on delete cascade
);

insert into employee values('is52','ksk',20000,5);
insert into employee values('is53','kc',30000,5);
insert into employee values('is56','lsj',25000,4);
insert into employee values('is61','mma',15000,4);
insert into employee values('is66','ms',10000,3);

insert into branch values('b1','msr',10000);
insert into branch values('b2','rnr',20000);
insert into branch values('b3','smr',15000);
insert into branch values('b4','skr',25000);

insert into customer values(1,'ram','bng');
insert into customer values(2,'asha','mng');
insert into customer values(3,'usha','mys');
insert into customer values(4,'sri','del');

insert into account values('a1',1,'b1',10000);
insert into account values('a2',1,'b1',20000);
insert into account values('a3',2,'b2',10000);
insert into account values('a4',3,'b2',10000);
insert into account values('a5',3,'b2',10000);
insert into account values('a5',3,'b2',10000);
insert into account values('a7',4,'b2',20000);
