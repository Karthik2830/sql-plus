5.	Consider the following tables

PERSINFO
EMPNO	NAME	AGE
AUDITPERSINFO
EMPNO	NAME	AGE	OPERATION	ODATE
 
PERSINFO is the table for which the auditing must be performed and AUDITPERSINFO is the table which keeps track of the records deleted or modified. Create a database trigger audit_trial. This trigger is forced when an UPDATE or a DELETE is performed on the table PERSINFO. It first checks for the operation being performed on the table. Then depending on the operation, a variable (that corresponds to operation) is assigned the value ‘UPDATE’ or ‘DELETE’ and then inserts the updated/deleted record into AUDITPERSINFO.

PROGRAM 5:

create or replace trigger audit_trial
	after update or delete on persinfo for each row
declare
	eno    number;
	ename  varchar2(12);
	eage   number;
	op     varchar2(12);
begin
	if updating then op:='update';
	elsif deleting then op:='delete';
	end if;
	eno    :=  :old.empno;
	ename  :=  :old.name;
	eage   :=  :old.age;
	insert into auditpersinfo
	values(eno,ename,eage,op,sysdate);
end;
