Program Ex4_4;
{$APPTYPE CONSOLE}
Uses SysUtils,
     Summa in 'Summa.pas';
Var a:mas;
    i,n:integer;
Begin
     Write('Input n:');
     Readln(n);
     for i:=1 to n do Read(a[i]);
     ReadLn;
     WriteLn('Sum =',sum(a,n));
		 ReadLn;
End.



