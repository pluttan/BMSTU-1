
Program DZ1_1;

{$APPTYPE CONSOLE}

Uses 
SysUtils;

Var 
  y: real;
Begin
  y := 1;
  WriteLn('До преобразований y=',y:20:16);
  y := y/6000;
  y := exp(y);                  {y = ex}
  y := sqrt(y);                 {Квадратный корень}
  y := y / 14;
  y := 14 * y;
  y := sqr(y);                  {Y = y2}
  y := ln(y);
  y := 6000 * y ;
  WriteLn('После преобразований =', y:20:16);
End.
