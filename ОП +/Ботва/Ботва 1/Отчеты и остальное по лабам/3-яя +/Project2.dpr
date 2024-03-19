program Project2;
{$APPTYPE CONSOLE}
uses
  SysUtils;
var
 x1, x2, x3, mini:real;
 begin
  mini:=3;
  x1:= -9; x2:= -9;
  x3:= x2 + x1 + 12;
   while (x3 < 0) do
    begin
     mini:= mini + 1;
     x1:= x2;
     x2:= x3;
     x3:= x2 + x1 + 12;
    end;
    writeln('minimalnoe pologitelnoe chiclo',' ', x3:4:4,' ',
    'Homer minimalnogo pologitelnogo chicla',' ',mini:4:4);
  Readln;
end.
