create table branches(
    code char(2) primary key,
    name varchar(10),
    assets int
);
create table customers(
    ssn int primary key,
    name varchar(10),
    place char(3)
);
create table accounts(
    accno char(2) primary key,
    ssn int,
    code char(2),
    balance int,
    foreign key (ssn) references customers(ssn) on delete cascade,
    foreign key(code) references branches(code) on delete cascade
);

insert into customers values(1,'Ram','BNG');
insert into customers values(2,'Sri','DEL');
insert into customers values(3,'Usha','MYS');
insert into customers values(4,'Asha','MNG');

insert into branches values('B1','MSR',10000);
insert into branches values('B2','RNR',20000);
insert into branches values('B3','SMR',15000);
insert into branches values('B4','SKR',25000);

insert into accounts values('A1',1,'B1',100000);
insert into accounts values('A2',1,'B1',200000);
insert into accounts values('A3',2,'B2',100000);
insert into accounts values('A4',3,'B2',100000);
insert into accounts values('A5',3,'B2',100000);
insert into accounts values('A6',4,'B2',200000);

  Declare
      cursor b is select * from branches;
      cursor c is select * from customers;
      cursor a is select * from accounts;
      b1 b%rowtype;
      c1 c%rowtype;
      a1 a%rowtype;
  begin
      for c1 in c loop
          dbms_output.put_line(c1.ssn||'->'||c1.name||'->'||c1.place);
     end loop;
     open b;
     open a;
     loop
         fetch a into a1;
         exit when a%notfound;
         dbms_output.put_line(a1.accno||'->'||a1.ssn||'->'||a1.code||'->'||a1.balance);
     end loop;
     loop
          fetch b into b1;
          exit when b%notfound;
          dbms_output.put_line(b1.code||'->'||b1.name||'->'||b1.assets);
     end loop;
     close a;
     close b;
     update accounts set balance=balance+500 where balance=100000;
  end;
  /
