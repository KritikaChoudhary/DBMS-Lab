--3)Prime or not
set serveroutput on;
declare
    a number:=4;
    flag number;
begin
    --a:= &number;
    flag:=1;
    for i in 2..a/2 loop
        if mod(a,i)=0 then
            flag:=0;
        end if;
    end loop;
    if flag=1 then
        dbms_output.put_line('Prime');
    else
        dbms_output.put_line('Not prime');
    end if;
end;
