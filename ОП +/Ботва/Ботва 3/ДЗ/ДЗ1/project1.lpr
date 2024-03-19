program Project1;

{$APPTYPE CONSOLE}
var
  Y: real;
begin
  Y := 1;
  WriteLn(UTF8toANSI('До преобразований y='), Y: 20: 16);
  Y := Y / 6000;
  Y := Exp(Y);
  Y := Sqrt(Y);
  Y := Y / 14;
  Y := 14 * Y;
  Y := Sqr(Y);
  Y := Ln(Y);
  Y := 6000 * Y;
  WriteLn(UTF8toANSI('После преобразований ='), Y: 20: 16);
  Readln();
end.

