Unit Summa4;
Interface
 type ttype=(treal,tinteger);
 function sum(var x;n:integer;t:ttype):real;
Implementation
 function sum;
   Var  mr:array[1..3000] of real absolute x;
        mi:array[1..3000] of integer absolute x;
          s:real;i:integer;
   begin s:=0;
         if t=treal then
              for i:=1 to n do s:=s+mr[i]
         else for i:=1 to n do s:=s+mi[i];
         sum:=s;
   end;
End.

