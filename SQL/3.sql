create table boat(
  bid int primary key,
  bname varchar(20),
  colour varchar(20)
);

create table sailor(
  sid int primary key,
  sname varchar(20),
  age int,
  rating float
);

create table reserves(
  bid int,
  sid int,
  day varchar(10),
  primary key(bid,sid),
  foreign key(bid) references boat(bid) on delete cascade,
  foreign key(sid) references sailor(sid) on delete cascade
);

insert into boat values(1,'abc','white');
insert into boat values(2,'cde','white');
insert into boat values(3,'efg','black');
insert into boat values(4,'hij','black');

insert into sailor values(1,'ram',22,10);
insert into sailor values(2,'seeta',50,9.5);
insert into sailor values(3,'raj',40,8);
insert into sailor values(4,'raghu',32,5.5);

insert into reserves values(1,1,'thur');
insert into reserves values(1,2,'sun');
insert into reserves values(1,3,'mon');
insert into reserves values(1,4,'mon');
insert into reserves values(2,1,'sat');

select bid from sailor,reserves where reserves.sid=sailor.sid and sname='ram';
select bid from reserves having count(*)=(select count(*) from sailor) group by bid;
select sid Sailor_ID,count(*) No_of_boats from reserves group by sid;
