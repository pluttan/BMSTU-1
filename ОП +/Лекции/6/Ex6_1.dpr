Program Ex6_1;
{$APPTYPE CONSOLE}
Uses  SysUtils;
Var   i,j,n,m:word;   s:real;
       ptrstr:array[1..10000] of pointer;
Type   tpsingle=^single;
Function AddrR(i,j:word):tpsingle;
   begin
     AddrR:=Ptr(Integer(ptrstr[i])+(j-1)*SizeOf(single));
   end;
Begin  Randomize;
       WriteLn('Input n,m');
       ReadLn(n,m);
       for i:=1 to n do
          begin
              GetMem(ptrstr[i],m*sizeof(single));
              for j:=1 to m do AddrR(i,j)^:=Random;
          end;
        s:=0;
        for i:=1 to n do   for j:=1 to m do   s:=s+AddrR(i,j)^;
        WriteLn('Summa =',s:15:10);
        WriteLn('Middle value =',s/(n*m):15:10);
        for i:=1 to n do  FreeMem(ptrstr[i],m*SizeOf(real));
        ReadLn;
End.


 