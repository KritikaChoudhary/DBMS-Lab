create table book(
  isbn int primary key,
  title varchar(20),
  author varchar(20),
  publisher varchar(10)
);
create table student(
  usn int primary key,
  name varchar(20),
  sem int check (sem<=8),
  deptno int
);
create table borrow(
  isbn int,
  usn int,
  dte date,
  primary key(isbn,usn),
  foreign key(isbn) references book(isbn) on delete cascade,
  foreign key(usn) references student(usn) on delete cascade
);

insert into book values(123,'cn','lily','ttn');
insert into book values(1,'dbms','allen','tnt');
insert into book values(2,'os','abrahams','sea');
insert into book values(3,'ds','rhea','shore');

insert into student values(1,'mahi',5,3);
insert into student values(2,'livz',4,3);
insert into student values(3,'saba',7,5);
insert into student values(4,'kritika',5,5);

insert into borrow values(123,1,'12-DEC-12');
insert into borrow values(123,2,'30-JAN-12');
insert into borrow values(1,1,'5-AUG-18');
insert into borrow values(1,4,'8-JUL-07');

select name from student,borrow where student.usn=borrow.usn and isbn=123;
select name from student,borrow,book where student.usn=borrow.usn and borrow.isbn=book.isbn and title='dbms';
select usn,count(*) No_of_books from borrow group by usn;
