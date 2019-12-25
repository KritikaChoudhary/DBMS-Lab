declare
	semester number;
	fname varchar(20);
begin
	select name, sem 
	into fname,semester
	from student
	where usn=&usn;
	dbms_output.put_line('First Name:'||fname||'Semester:'||semester);
exception
	when no_data_found then
	dbms_output.put_line('No such usn present');
end;
/

##########
declare
	v number;
	flag number;
	vc number;
begin
	v:=&number;
	flag:=0;
	for vc in 2..v/2 loop
		if mod(v,vc)=0 then
			flag:=1;
		end if;
	end loop;
	if flag=0 then
		dbms_output.put_line('Prime');
	else
		dbms_output.put_line('Not Prime');
	end if;
end;
/
	
########
declare 
	f number;
	s number;
	t number;
	cnt number;
begin
	f:=0;
	s:=1;
	dbms_output.put_line(f);
	dbms_output.put_line(s);
	for cnt in 0..5 loop
		t:=f+s;
		f:=s;
		s:=t;
		dbms_output.put_line(t);
	end loop;
end;
/
#######
declare
	cursor studentc is ((select name from student where sem=5) union (select name from student where sem=3));
	srow studentc%rowtype; 
begin 
	open studentc;
	loop 
	fetch studentc into srow;
	exit when studentc%notfound;
	dbms_output.put_line('Name:'||srow.name);
	end loop;
	close studentc;
end;
/
##########
