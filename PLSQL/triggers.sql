create or replace trigger noEnter after delete or insert or update on employee
  begin
  if (To_char(sysdate,'day') in ('Sat','Sun')) then
  raise_application_error('-20500,Permission Denied');
  end if;
  end;
  /
