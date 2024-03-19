program Zadani2;
{$APPTYPE CONSOLE}
uses
  SysUtils;

Var
   x:real;
   begin
    writeln('BBEDITE x');
    Readln (x);
    if x<2 then
     writeln(x)
    else
     if (2<=x) and (x<=3) then
      writeln(2)
     else
      writeln(-x+5);
    Readln;
   end.
