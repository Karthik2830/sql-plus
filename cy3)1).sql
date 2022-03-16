1.	Write a PL/SQL block to do the following:
1.	Read a number and print its multiplication table

Program 1.1 
declare
n number := &n;
i number;
begin
for i in 1..20 loop
dbms_output.put_line(n||' X '||i||' = '||n*i);
end loop;
end;

OUTPUT:
SQL> @ p31;
Enter value for n: 3
old   2: n number := &n;
new   2: n number := 3;
3 X 1 = 3
3 X 2 = 6
3 X 3 = 9
3 X 4 = 12
3 X 5 = 15
3 X 6 = 18
3 X 7 = 21
3 X 8 = 24
3 X 9 = 27
3 X 10 = 30
3 X 11 = 33
3 X 12 = 36
3 X 13 = 39
3 X 14 = 42
3 X 15 = 45
3 X 16 = 48
3 X 17 = 51
3 X 18 = 54
3 X 19 = 57
3 X 20 = 60
PL/SQL procedure successfully completed
