program Project1;

const
  n = 8;

var
  h: array[1..n] of string;

var
  i: integer;
begin
  for i := 1 to n do
  begin
    readln(h[i]);
    if length(h[i]) > 15 then
      h[i] := copy(h[i], 1, 15);
  end;
  for i := 1 to n div 2 do
    writeln(utf8toansi(h[i * 2 - 1]): 15, '|', utf8toansi(h[n - i * 2 + 2]): 15);
  readln();
end.
