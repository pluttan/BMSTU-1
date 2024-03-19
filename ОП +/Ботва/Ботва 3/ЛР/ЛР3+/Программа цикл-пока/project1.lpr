program project1;

{$APPTYPE CONSOLE}
const
  min = 3;
  max = 63;

var
  a: integer;
  b: real;

begin
  //Цикл-пока
  a := max - 3;
  b := sqrt(a + 3);
  writeln(utf8toansi(
    'Вычисление sqrt(3+sqrt(6+...+sqrt(60+sqrt(63))) итерационным циклом-пока'));
  while a >= min do
  begin
    b := sqrt(a + b);
    a := a - 3;
  end;
  writeln(utf8toansi('Результат: '), b);
  readln();
end.
