program cymma_ctroki;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
 n,m,i,j:integer;
 b:array of integer;
 a:array of array of integer;
begin
 randomize;
 readln(n,m);
 setlength(a,n,m);
 setlength(b,n);

 for i := 0 to n-1 do
  begin
   for j := 0 to m-1 do
    begin
     a[i,j]:=random(100);
     write(a[i,j]:4, ' ');
     b[i]:=b[i]+a[i,j];
    end;
    writeln;
  end;

 writeln;

 for i := 0 to n-1 do
  begin
   writeln(b[i]:4, ' ');
  end;

 readln;
end.
