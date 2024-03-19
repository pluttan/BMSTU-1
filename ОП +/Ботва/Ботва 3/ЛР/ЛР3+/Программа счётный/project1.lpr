program project1;

{$APPTYPE CONSOLE}
const
  min = 3;
  max = 63;

var
  a: integer;
  b: real;

begin

  //Счётный цикл
  b := 0;
  writeln(utf8toansi('Вычисление sqrt(3+sqrt(6+...+sqrt(60+sqrt(63))) счётным циклом '));
  for a := (max div 3) downto (min div 3) do
    b := sqrt(a * 3 + b);
  writeln(utf8toansi('Результат: '), b);
  readln();
end.
