create table parts(
  pno int primary key,
  pname varchar(10),
  colour varchar(10)
);

create table supply(
  sno int primary key,
  sname varchar(10),
  address varchar(20)
);

create table supplier(
  pno int,
  sno int,
  qty int,
  primary key(pno,sno),
  foreign key(pno) references parts(pno) on delete cascade,
  foreign key(sno) references supply(sno) on delete cascade
);

insert into parts values(1,'bolt','green');
insert into parts values(2,'screw','black');
insert into parts values(3,'nuts','yellow');
insert into parts values(4,'wrench','green');

insert into supply values(12,'ram','#41');
insert into supply values(14,'raghu','#42');
insert into supply values(22,'rajeev','#65');
insert into supply values(32,'lily','#43');

insert into supplier values(1,12,50);
insert into supplier values(2,12,45);
insert into supplier values(1,22,60);
insert into supplier values(4,14,55);

select pno from supply,supplier where supplier.sno=supply.sno and sname='ram';
select sname from parts,supplier,supply where parts.pno=supplier.pno and supply.sno=supplier.sno and pname='bolt';
delete from parts where colour='green';
