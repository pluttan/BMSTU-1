program project3;

{$APPTYPE CONSOLE}

var
  x, y1, y2, y, delta, otn: real;
begin
  writeln(utf8toansi('Введите x'));
  readln(x);
  y1 := sin(x);
  y2 := cos(x);
  y  := sqr(y1) + sqr(y2);
  writeln(utf8toansi('Значение '), y: 20: 16);
  if y <> 1 then
  begin
    delta := abs(1 - y);
    otn   := delta / abs(y);
    writeln(utf8toansi('Абсолютная погрешность'), delta: 20: 16);
    writeln(utf8toansi('Относительная погрешность'), otn: 20: 16);
  end
  else
    writeln(utf8toansi('Погрешность равна нулю или незначительна'));
  readln();
end.
