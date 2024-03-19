program project1;

{$APPTYPE CONSOLE}
const
  min = 3;
  max = 63;

var
  a: integer;
  b: real;

begin
  //Цикл-до
  a := max - 3;
  b := sqrt(a + 3);
  writeln(utf8toansi(
    'Вычисление sqrt(3+sqrt(6+...+sqrt(60+sqrt(63))) итерационным циклом-до'));
  repeat
    b := sqrt(a + b);
    a := a - 3;
  until a < min;
  writeln(utf8toansi('Результат: '), b);
  readln();
end.
