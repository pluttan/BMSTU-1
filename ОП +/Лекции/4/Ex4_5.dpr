Program Ex4_5;
{$APPTYPE CONSOLE}
uses
  SysUtils,
  Summa2 in 'Summa2.pas';

Var a:array[1..10] of integer;
          i,n:integer;
Begin
      Write('Input n:');
      ReadLn(n);
      for i:=1 to n do Read(a[i]);
      ReadLn;
      WriteLn('Sum=',sum(a,n));
      ReadLn;
 End.

 