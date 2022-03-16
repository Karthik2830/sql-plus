6.	Consider the following relation schemas
Emp
Empid	name	salary	dno

   Del_History
Dno	Rows_deleted	date

Write a PL/SQL block to delete records of all employees who belong to a particular department and then record the dno, no of rows deleted and date on which deletion occurred in the Del_History table. 

Program 6.
declare
dn emp1.dno%type := &dn;
c number;
begin
delete from emp1 where dno = dn;
if sql%found then
c := sql%rowcount;
insert into del_history values(dn,c,sysdate);
end if;
end;

SQL> create table  emp1 (empid number,name varchar2(12),salary number,dno number);

Table created.
SQL> select * from emp1;

     EMPID NAME             SALARY        DNO
---------- ------------ ---------- ----------
         1 aaaa               1111         10
         2 bbbb               2222         10
         3 cccc               2222         20
         4 rrrr               3333         30

SQL> create table del_history(dno number, rows_deleted number, del_date date);

Table created.
SQL> @p36;
 11  /
Enter value for dn: 10
old   2: dn emp1.dno%type := &dn;
new   2: dn emp1.dno%type := 10;

PL/SQL procedure successfully completed.


SQL> select * from emp1;

     EMPID NAME             SALARY        DNO
---------- ------------ ---------- ----------
         3 cccc               2222         20
         4 rrrr               3333         30

SQL> select * from del_history;

       DNO ROWS_DELETED DEL_DATE
---------- ------------ ---------
        10            2 	20-SEP-07
