program Zadanie1_3;
{$APPTYPE CONSOLE}
uses
  SysUtils;

Var
     y, x, n, y2:real ;
   begin
     Writeln('BBEDITE x');
     readln (x);
     y:= cos(x)*cos(x) + sin(x)*sin(x);
     y2:=1-y;
     if y2=0 then
      Writeln('paBenctBo cos^2(x) + sin^2(x) = 1 - Bepno')
     else
      writeln('paBenctBo cos^2(x) + sin^2(x) = 1 - ne Bepno');
     Readln;
    end.
