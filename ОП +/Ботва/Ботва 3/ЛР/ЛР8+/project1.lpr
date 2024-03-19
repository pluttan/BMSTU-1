program project1;

{$APPTYPE CONSOLE}
var
  f1, f2: Text;
  i, n, p: integer;
  strtofind, str: string;

begin
  writeln(utf8toansi('Введите строку для удаления'));
  readln(strtofind);
  assignfile(f1, 'input.txt');
  assignfile(f2, 'output.txt');
  rewrite(f1);
  n := random(10) + 4;
  p := random(n) + 1;
  for i := 1 to n do
    if p = i then
      writeln(f1, strtofind)
    else
      writeln(f1, 'strstrstrsstrstr');
  Close(f1);
  writeln(utf8toansi('Файл сформирован'));

  rewrite(f2);
  reset(f1);
  repeat
    readln(f1, str);
    if not (str = strtofind) then
      writeln(f2, str);
  until EOF(f1);
  Close(f1);
  Close(f2);
  writeln(utf8toansi('Строка удалена'));
  readln();
end.
