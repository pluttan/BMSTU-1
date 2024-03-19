Program Ex4_3;
{$APPTYPE CONSOLE}
uses SysUtils;
Type mas=array[1..10] of integer;
 Var a:mas;
     i,n:integer;
 Function sum(b:mas; n:integer):integer;
   Var s:integer;i:integer;
   Begin s:=0;
         for i:=1 to n do s:=s+b[i];
         sum:=s;
   End;
 Begin   Write('Input n:');
         ReadLn(n);
         for i:=1 to n do Read(a[i]);
         ReadLn;
         WriteLn('Sum =',sum(a,n));
		     ReadLn;
 End.



