4.	Consider the following table

ITEM
prod_ id
	name
	mat_used
	weight


Write a procedure which will check for the existence of prod_id from the table ITEM. This procedure must have two arguments, one of which will receive a value, which is a matching pattern for prod_id of the ITEM table, and another which will return a value indicating whether a match has been found or not.

PROGRAM 4:

PROCEDURE FOR CHECKING THE EXISTENCE OF A GIVEN PRODUCT ID

create or replace procedure mat(n in number,s out char) as
	a item.prod_id%type;
begin 
	select prod_id into a from item where prod_id=n;
	s:='match found';
exception
	when no_data_found then
	dbms_output.put_line('match not found');
end;

MAIN PROGRAM

declare 
	n number:=&id;
	s char(12);
begin
	mat(n,s);
	dbms_output.put_line(s);
end;
