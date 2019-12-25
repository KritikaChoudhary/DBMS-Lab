create or replace procedure fact (a in number) is
  f number:=1;
  i number;
  begin
    i:=1;
    while i<=a loop
      f:=f*i;
      i:=i+1;
    end loop;
    dbms_output.put_line('Factorial'||f);
  end;
  /
