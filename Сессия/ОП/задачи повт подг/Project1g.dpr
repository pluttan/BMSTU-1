program Project1g;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
 i,j,n,m:integer;
 b:array of integer;
 a:array of array of integer;
begin
 randomize;
 readln(n,m);
 setlength(a,n,m);
 setlength(b,m);

 for i := 0 to m- 1 do
  b[i]:=0;

 for i := 0 to n- 1 do
  begin
   for j := 0 to m- 1 do
    begin
     a[i,j]:=random(10)-5;
     b[j]:=b[j]+a[i,j];
     write(a[i,j]:4);
    end;
   writeln;
  end;

  writeln;

  for i := 0 to m- 1 do
   writeln(b[i]);



 readln;
end.
