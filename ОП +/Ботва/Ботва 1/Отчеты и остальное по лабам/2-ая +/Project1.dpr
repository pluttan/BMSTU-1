program laba2;
{$APPTYPE CONSOLE}
uses
  SysUtils;

Var
   x, y:real;
   begin
    writeln('BBEDITE x U y');
    Readln(x,y);
    if (x < 0) and (y > 0) and (x*x + y*y <= 1) and (y <= x+1) then
     writeln ('Tochka prinadleJit zashtrixoBannou plockacti')
    else
     writeln ('Tochka ne prinadleJit zashtrixoBannou plockacti');
    Readln;
   end.
