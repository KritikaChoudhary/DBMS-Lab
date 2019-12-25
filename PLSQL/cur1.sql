set serveroutput on;
 declare
  cursor filled in (select * from employee);
  fill student%rowtype;
  cursor newfill;
  nfill newemployee%rowtype;
begin
  open filled;
  loop
    fetch filled into fill;
    insert into newemployee values(fill.ssn,fill.name,fill.sal,fill.deptno);
    exit when filled%notfound;
  end loop;
  close filled;
  newfill in (select * from newemployee);
  close newfill;
end;
/
