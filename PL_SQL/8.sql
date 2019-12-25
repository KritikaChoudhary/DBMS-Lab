--Trigger to raise error
set serveroutput on
create or replace trigger trig1 before delete or insert or update on empl
  begin
    if (To_char(sysdate,'dy')) in ('wed','thur') then
      raise_application_error(-20500,'Changes today are not allowed');
    end if;
  end;
/
