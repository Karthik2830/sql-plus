Write a PL/SQL block to handle the following built-in exceptions
no_data_found
too_many_rows
           zero_divide  

Program 4.
declare
s employee.ssn%type ;
n number := 10;
m number;
begin
select ssn into s from employee;
m := n/0;
select ssn into s from employee where dno = 100;
exception
when too_many_rows then
dbms_output.put_line('too many rows returned where only 1 is expected');
when zero_divide  then
dbms_output.put_line('attempting to divide by zero'); 
when no_data_found then
dbms_output.put_line('no such department exists');
end;
SQL> @p34;
 14  /
too many rows returned where only 1 is expected

PL/SQL procedure successfully completed.

SQL> @p34;
 14  /
attempting to divide by zero

PL/SQL procedure successfully completed.
SQL>  @p34;
 18  /
no such department exists

PL/SQL procedure successfully completed
