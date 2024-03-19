program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Var a, b, c, d, e, x1, x2:Single;
begin
Writeln('Input A, B, C:');
Readln(a, b, c);
D:=sqr(b)-4*a*c;
if D>=0 then
begin
  E:=2*a;
  x1:= (-b+sqrt(d))/e;
  x2:= (-b-sqrt(d))/e;
  writeln('X1=', x1:6:1, ' X2=', x2:6:1);
end
else
Writeln('No result');
Readln;
end.
