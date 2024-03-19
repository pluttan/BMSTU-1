Program Ex4_8;
{$APPTYPE CONSOLE}
Uses SysUtils,
     Matrica in 'Matrica.pas';

Var   a:array[1..10,1..10] of real;
         i,j:integer;
Begin WriteLn('Input à(5*5):');
      for i:=1 to 5 do
         begin for j:=1 to 5 do Read(a[i,j]);
                  ReadLn;
         end;
      tran(a,5,10);
      WriteLn('Result:');
      for i:=1 to 5 do
         begin for j:=1 to 5 do Write(a[i,j]:6:2);
                   WriteLn;
         end;
      ReadLn;
End.

