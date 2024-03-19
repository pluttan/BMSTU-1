program Ex3_2;
{$APPTYPE CONSOLE}
uses SysUtils;
Var A:array[1..10,1..10] of real;
     B:array[1..10] of real;
     n,m,i,j:byte;
Begin
    WriteLn('Input n,m');
    ReadLn(n,m);
    WriteLn('Input matrics n*m values:');
     for i:=1 to n do
          begin
             for j:=1 to m do Read(A[i,j]);     ReadLn;
          end;
     WriteLn('Results:');
     for i:=1 to n do
       begin
           B[i]:=0;
           for j:=1 to m do B[i]:=B[i]+A[i,j];
           for j:=1 to m do Write(A[i,j]:7:2);
           WriteLn(' Sum= ',B[i]:7:2);
       end;
     ReadLn;
   End.

