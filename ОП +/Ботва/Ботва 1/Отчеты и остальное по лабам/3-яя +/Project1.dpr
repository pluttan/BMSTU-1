program Project1;
{$APPTYPE CONSOLE}
uses
  SysUtils;
var
n, i :integer;
 x3, x1, mini, x2 :real;
 begin
  n:=1;
  mini:=3;
  x1:= -9; x2:= -9;
  x3:= x2 + x1 + 12;
  for i:= 0 to n do
   begin
    if (x3<0) then
     begin
      mini:= mini + 1;
      n:=n+1;
      x1:= x2;
      x2:= x3;
      x3:= x2 + x1 + 12;
     end;
   end;
    writeln('minimalnoe pologitelnoe chiclo',' ', x3:4:4,' ',
    'Homer minimalnogo pologitelnogo chicla',' ',mini:4:4);
  Readln;
end.
