program project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  x, y: real;
  prinadl: boolean = False;
begin
  writeln(utf8toansi('Введите X и Y'));
  readln(x, y);
  if sqr(x - 1) + sqr(y - 1) <= 1 then
    if x >= 1 then
      if y >= 1 then
        prinadl := True;
  if prinadl then
    writeln(utf8toansi('Точка с координатами ('), x: 20: 16, ', ', y: 20: 16,
      utf8toansi(') принадлежит заштрихованной части'))
  else
    writeln(utf8toansi('Точка с координатами ('), x: 20: 16, ', ', y: 20: 16,
      utf8toansi(') НЕ принадлежит заштрихованной части'));
  readln;

end.
