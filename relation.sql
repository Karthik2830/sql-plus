Consider the following relation schemas

Inventory
Product_ID	Product_name	Quantity

   Purchase_Record
Product_ID	Status	Date

Write a PL/SQL block to read the quantity of a product from inventory and if it is > 0 reduce the quantity by 1 and record the status of purchase of that product as ‘PURCHASED’. Otherwise record the status of purchase of that product as ‘OUT OF STOCK’. While recording the status of a purchase, record the date of transaction.

Program 3.
declare
id inven.pid%type := &id;
q inven.qty%type;
begin
select qty into q from inven where pid = id;
if q > 0 then 
update inven set qty = qty - 1 where pid = id;
insert into pur_rec values(id,'PURCHASED',sysdate);
else
insert into pur_rec values(id,'OUTOFSTOCK',sysdate);
end if;
end;

SQL> select * from inven;
       PID PNAME             QTY
---------- ---------- ----------
         1 sorter              10
         2 screw               0
         3 bolt              -10

SQL>  select * from pur_rec;
no rows selected.

SQL> @p33;
 13  /
Enter value for id: 1
old   2: id inven.pid%type := &id;
new   2: id inven.pid%type := 1;




PL/SQL procedure successfully completed.

SQL> select * from inven;

       PID PNAME             QTY
---------- ---------- ----------
         1 sorter              9
         2 screw               0
         3 bolt              -10

SQL>  select * from pur_rec;

       PID STATUS     PDATE
---------- ---------- ---------
         1 PURCHASED  19-SEP-07
SQL>  @p33;
 13  /
Enter value for id: 2
old   2: id inven.pid%type := &id;
new   2: id inven.pid%type := 2;

PL/SQL procedure successfully completed.

SQL>  select * from inven;

       PID PNAME             QTY
---------- ---------- ----------
         1 sorter              9
         2 screw               0
         3 bolt              -10

SQL>  select * from pur_rec;

       PID STATUS     PDATE
---------- ---------- ---------
         1 PURCHASED  19-SEP-07
         2 OUTOFSTOCK 19-SEP-07
