declare
  cursor cust in (select * from customer);
  --c customer%rowtype;
  cursor br in (select * from branch);
  --b branch%rowtype;
  cursor acc in (select * from account);
  --a account%rowtype;
begin
  for c in cust loop
   dbms_output.put_line(c.ssn||c.name||c.place);
  end loop;
  end;
  /
