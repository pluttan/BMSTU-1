program povorot;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
 b: array of integer;
 i, j, n, m: integer;
 a,c: array of array of integer;
begin
 randomize;
 readln (n, m);
 writeln;
 setlength (a, n, m);
 setlength (c, m, n);

 for i := 0 to n-1 do
  begin
   for j := 0 to m-1 do
    begin
     a[i,j]:=random(100)-30;
     write(a[i,j]:4, ' ');
    end;
   writeln;
  end;

 writeln;

 for i := 0 to m-1 do
  begin
   for j := 0 to n-1 do
    begin
     c[i,j]:=a[j,i];
     write(c[i,j]:4);
    end;
   writeln;
  end;

 readln;
end.
