.Read a number n, and print the first n Fibonacci numbers

Program 1.3
declare
a number;
b number;
c number;
n number;
i number;
begin
n:=&n;
a:=0;
b:=1;
dbms_output.put_line(a);
dbms_output.put_line(b);
for i in 1..n-2
loop
c:=a+b;
dbms_output.put_line(c);
a:=b;
b:=c;
end loop;
end;

OUTPUT:
SQL> @ FIBONACCI.sql
Enter value for n: 3
old   8: n:=&n;
new   8: n:=3;
0
1
1
PL/SQL procedure successfully completed.
