program project1;

{$APPTYPE CONSOLE}
uses
  Math;

  function pos2(const subs1, subs2, s: string): integer;
  begin
    if (pos(subs1, s) * pos(subs2, s) > 0) then
      pos2 := min(pos(subs1, s), pos(subs2, s))
    else
      pos2 := max(pos(subs1, s), pos(subs2, s));
  end;

  procedure swap(subs2: string; k: integer; var s: string);
  begin
    Delete(s, k, 1);
    insert(subs2, s, k);
  end;

var
  s, sword, snew: string;

begin
  writeln(utf8toansi('Введите строку'));
  readln(s);
  writeln(utf8toansi('Введена строка'));
  writeln(s);
  repeat
    sword := copy(s, 1, pos2(' ', '.', s));
    Delete(s, 1, pos2(' ', '.', s));
    if length(sword) > 3 then
      if pos(copy(sword, 1, 1), 'ABC') > 0 then
        swap('Y', 3, sword);
    if length(sword) > 2 then
      if pos(copy(sword, length(sword) - 1, 1), 'DEF') > 0 then
        swap('O', length(sword) - 2, sword);
    snew += sword;
  until length(s) = 0;
  writeln(utf8toansi('Строка-результат'));
  writeln(snew);
  readln();
end.
