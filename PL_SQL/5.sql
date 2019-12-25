--5)first 8 fibonacci numbers
declare
    first number:=0;
    second number:=1;
    third number;
begin
    dbms_output.put_line(first);
    dbms_output.put_line(second);
    for i in 3..8 loop
        third:=first+second;
        first:=second;
        second:=third;
        dbms_output.put_line(third);
    end loop;
end;
