.Write a PL/SQL block which will accept two numbers and find out their LCM and HCF. The output should be stored in a table called DEMO_TAB.
 
Program 2.
declare
a number := &a;
b number := &b;
g number;
l number;
a1 number;
b1 number;
begin
a1:=a;
b1:=b;
while (a <> b) loop
       if  (a < b) then   
          b := b - a;
        else             
          a := a - b;
     	end if;
end loop;
g := a;  
l:= (a1*b1)/g;
insert into demo_tab values(a1,b1,l,g); 
end;

OUTPUT:


SQL>); create table demo_tab(n1 number,n2 number,lcm number,hcf number

Table created.

SQL> @p32;
 22  /
Enter value for a: 4
old   2: a number := &a;
new   2: a number := 4;
Enter value for b: 8
old   3: b number := &b;
new   3: b number := 8;

PL/SQL procedure successfully completed.

SQL> select * from demo_tab;

        N1         N2        LCM        HCF
---------- ---------- ---------- ----------
         4          8          8          4
