create table part(
  pno int primary key,
  pname varchar(10),
  colour varchar(10)
);
create table warehouse(
  wno int primary key,
  wname varchar(20),
  city varchar(10)
);
create table shipment(
  pno int,
  wno int,
  qty int,
  dte date,
  primary key(pno,wno),
  foreign key(pno) references part(pno) on delete cascade,
  foreign key(wno) references warehouse(wno) on delete cascade
);

insert into part values(1,'bolt','red');
insert into part values(2,'nut','red');
insert into part values(3,'screw','black');
insert into part values(4,'a','white');

insert into warehouse values(10,'pons','blr');
insert into warehouse values(9,'hins','mumbai');
insert into warehouse values(8,'rigs','chd');
insert into warehouse values(7,'abc','hp');

insert into shipment values(4,10,30,'7-JAN-7');
insert into shipment values(4,9,60,'8-AUG-8');
insert into shipment values(4,8,55,'12-DEC-12');
insert into shipment values(4,7,70,'6-SEP-6');
insert into shipment values(2,7,80,'5-OCT-5');

select shipment.pno,wname from part,warehouse,shipment where part.pno=shipment.pno and shipment.wno=warehouse.wno and colour='red';
select pno from shipment having count(*)=(select count(*) from warehouse) group by pno;
select wno,count(*) No_of_parts_shipped,sum(qty) Quantites_shipped from shipment group by wno;

--alter table shipment modify dte date not null;
