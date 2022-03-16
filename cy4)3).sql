3.	Write a stored procedure, raise_salary which accepts an employee number. It uses incr function of previous program to get the salary increase amount and uses employee number to select the current salary from employee table. If employee number is not found or if the current salary is null, it should raise an exception. Otherwise, updates the salary. 

PROGRAM 3:

PROCEDURE FOR UPDATING SALARY 

create or replace procedure raisesal(n number) as
	s number;
	a number;
	exc exception;
begin
	s:=incr(n);
	select sal into a from emp2 where empno=n;
	if a is null then raise exc;
	else update emp2 set sal=sal+s where empno=n;
	end if;
exception
	when no_data_found then
		dbms_output.put_line('this employee is not exists');
	when exc then
		dbms_output.put_line('salary is null');
end;

MAIN PROGRAM

declare
	n number:=&no;
	r emp2%rowtype;
begin
	raisesal(n);
	select * into r from emp2 where empno = n;
	dbms_output.put_line(r.empno||’  ‘||r.sal);

end;

output:
enter value for eid:7499
old 2:eid emp2.empno%type:=&eid;
new 2:eid emp2.empno%type:=7499;
salary of employee 7499 should be incremented by 480

sql>select * from emp2 where empno=7499
empno  name   job       MGR    hiredate   sal   comm   deptno
7499   allen  salesman  7698   20-FEB-81  2080  300    30

enter value for eid:5469
old 2:eid emp2.empno%type:=&eid;
new 2:eid emp2.empno%type:=5469;
there is no employee with empid 5469
