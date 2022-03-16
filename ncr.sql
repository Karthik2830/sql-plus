# sql-plus
1.	Write a PL/SQL stored function to calculate ncr using fact (m) function that returns factorial of m. 

PROGRAM 1:

FUNCTION FOR CALCULATING FACTORIAL

CREATE or replace FUNCTION fact (n number) RETURN number AS
f  number := 1;
a  number := n;
BEGIN
WHILE (a > 1 ) LOOP
f := f * a;
a := a - 1;
END LOOP;
RETURN f;
END;

FUNCTION FOR CALCULATING NCR

CREATE or replace FUNCTION ncr (n number, r number) RETURN number AS
ncr  number ;
BEGIN
ncr:= trunc(fact(n)/(fact(r)*fact(n-r)));
RETURN ncr;
END;

MAIN PROGRAM

declare
n number := &n;
r number := &r;
ncr1 number;
begin
ncr1 := ncr(n,r);
dbms_output.put_line(n||' c '||r||' = '||ncr1);
end;

output:
enter value for n:4
old 2 : n number:=&n
new 2 : n number:=4
enter value for r:2
old 2 : n number:=&n
new 2 : n number:=2
ncr=6
