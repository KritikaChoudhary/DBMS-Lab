declare
	v1 number;
  rev number;
	dup number;
	rem number;
begin
	v1:=&number;
	dup:=v1;
	rev:=0;
		while dup>0 loop
			rem:=mod(dup,10);
			rev:=rev*10+rem;
			dup:=trunc(dup/10);
		end loop;
		dbms_output.put_line('rev:'||rev);
		if rev=v1
		then dbms_output.put_line('Palindrome');
		else
			dbms_output.put_line('Not Palindrome');
		end if;
end;
/
