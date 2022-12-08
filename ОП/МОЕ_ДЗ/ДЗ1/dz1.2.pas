
Program DZ1_2;

{$APPTYPE CONSOLE}

Uses 
SysUtils;

Var 
  y, x, y1, y2: real;
Begin
  writeln('Введите x');
  readln(x);
  y1 := (exp(x) + exp(-1 * x)) / 2;
  y2 := (exp(x) - exp(-1 * x)) / 2;
  y := sqr(y1) - sqr(y2);
  write(y1:20:16, ' ', y2:20:16, ' ', y:20:19);
End.
