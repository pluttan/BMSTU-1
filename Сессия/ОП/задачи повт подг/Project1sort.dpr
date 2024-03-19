program Project1sort;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
 n,i,j,t,k:integer;
 a:array [1..100] of integer;
begin
 randomize;
 readln(n);

 for i:= 1 to n do
  a[i]:=random(10)-5;

 for i:= 1 to n do
  write(a[i]:3);

  writeln;

 for k := 1 to n do
  for i := 1 to n-1 do
   if a[i]>=a[i+1] then
    begin
     t:=a[i+1];
     a[i+1]:=a[i];
     a[i]:=t;
    end;

  writeln;

 for i:= 1 to n do
  write(a[i]:3);

 readln;
end.
