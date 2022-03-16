Read a number and check whether it is a palindrome or not

Program 1.2
declare
n number := &n;
rem number;
s number := 0;
temp number;
begin
temp := n;
while (n > 0) loop
rem := mod(n,10);
s:= s*10+a;
n:= trunc(n/10);
end loop;
if temp = s then
dbms_output.put_line(temp||' is a palindrome');
else
dbms_output.put_line(temp||' is not a palindrome');
end if;
end;
SQL>  @p312;
 19  /
Enter value for n: 1234
old   2: n number := &n;
new   2: n number := 1234;
1234 is not a palindrome

PL/SQL procedure successfully completed.

SQL> @p312;
 19  /
Enter value for n: 9119
old   2: n number := &n;
new   2: n number := 9119;
9119 is a palindrome

PL/SQL procedure successfully completed.
