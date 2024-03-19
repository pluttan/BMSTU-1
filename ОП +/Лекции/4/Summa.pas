Unit Summa;
Interface
   type mas=array[1..10] of integer;
   function sum(b:mas;n:integer):integer;
Implementation
  Function sum;
   Var s:integer;i:integer;
   begin s:=0;
         for i:=1 to n do s:=s+b[i];
         Result:=s;
   end;
End.

 