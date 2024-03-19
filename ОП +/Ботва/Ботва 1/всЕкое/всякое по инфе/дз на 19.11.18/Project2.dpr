program Project2;
{$APPTYPE CONSOLE}
uses
  SysUtils;

procedure bbuch(a,b,c:real);
var
d,x1,x2:real;
begin
d:=b*b-4*a*c;
x1:=(-b+sqrt(d))/(2*a);
x2:=(-b-sqrt(d))/(2*a);
writeln(x1:1:1,' ',x2:1:1);
end;

var
a,b,c:real;
begin
 readln(a,b,c);
 bbuch(a,b,c);
 readln;
end.
