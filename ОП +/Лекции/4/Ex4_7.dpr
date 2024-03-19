program Ex4_7;
{$APPTYPE CONSOLE}
uses SysUtils,
     Summa4 in 'Summa4.pas';
Var a:array[1..10] of integer;
        b:array[1..15] of real;
        i,n:integer;
 Begin
     for i:=1 to 10 do Read(a[i]); ReadLn;
     WriteLn('Sum=',sum(a,10,tinteger):8:1);
     for i:=1 to 15 do Read(b[i]); ReadLn;
     WriteLn('Sum=',sum(b,15,treal):8:1);
     ReadLn;
 end.

