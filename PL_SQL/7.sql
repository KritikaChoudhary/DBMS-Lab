--7)Palindrome
set serveroutput on;
declare
    a number:=123;
    rev number:=0;
    rem number;
    val number;
begin
    val:=a;
    while val>0 loop
        rem:=mod(val,10);
        rev:=rev*10+rem;
        val:=trunc(val/10);
    end loop;
    if rev=a then
        dbms_output.put_line('Palindrome');
    else
        dbms_output.put_line('Not');
    end if;
end;
