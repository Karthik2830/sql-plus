2.	Write a PL/SQL block that updates salary of an employee in employee table by using incr function which takes employee number as argument, calculates increment and returns increment based on the following criteria.
If salary <= 3000 – increment = 30% of salary
If salary > 3000 and <= 6000– increment = 20% of salary
Else increment = 10% of salary. 

PROGRAM 2:

FUNCTION FOR CALCULATING INCREMENT 

create or replace function incr(n number) return number as
	s number;
begin
	select sal into s from emp2 where empno=n;
	if s <= 3000 then s:=0.3*s;
	elsif s>3000 and s<=6000 then
		s:=0.2*s;
	else    s:=0.1*s;
	end if;
	return s;
end;

MAIN PROGRAM

declare
	n number:=&no;
	s number;
begin
	s:=incr(n);
	dbms_output.put_line('incr salary'||s);
	update emp2 set sal=sal+s where empno=n;
end;
