program project2;

{$APPTYPE CONSOLE}

var
  x, y1, y2, y, delta, abc: extended;
begin
  writeln(UTF8toANSI('Введите x'));
  readln(x);
  y1    := (exp(x) - exp(-x)) / 2;
  y2    := (exp(x) + exp(-x)) / 2;
  y     := sqr(y2) - sqr(y1);
  delta := abs(1 - y);
  abc   := delta / 1;
  writeln(UTF8toANSI('y1=sh(x)='), y1: 20: 16);
  writeln(UTF8toANSI('y2=ch(x)='), y2: 20: 16);
  writeln(UTF8toANSI('y=y2^2-y1^2'), y: 20: 16);
  writeln(UTF8toANSI('Абсолютная погрешность'), delta: 20: 16);
  writeln(UTF8toANSI('Относительная погрешность'), abc: 20: 16);
  readln();
end.

