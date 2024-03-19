program project1;

{$APPTYPE CONSOLE}

type
  mas = array of integer;

  //Процедура удаления элемента с индексом k из массива со сдвигом "хвоста"
  procedure del(var h: mas; const k: byte);
  var
    i: byte;
  begin
    for i := k to high(h) - 1 do
      h[i] := h[i + 1];
    setlength(h, length(h) - 1);
  end;

  //Процедура вывода массива
  procedure writeln_arr(const h: mas);
  var
    i: byte;
  begin
    for i := low(h) to high(h) do
      Write(h[i]: 3);
    writeln();
  end;

  //Процедура заполнения массива
  function ArrRandom(const n: byte): mas;
  var
    i: byte;
    h: mas;
  begin
    setlength(h, n);
    randomize;
    for i := low(h) to high(h) do
      h[i] := random(100) - 50;
    Result := h;
  end;

var
  h: mas;
  i: byte;

begin
  h := ArrRandom(30);
  writeln(utf8toansi('Исходный массив:'));
  writeln_arr(h);
  i := low(h);

  repeat
    if h[i + 1] >= h[i] then
      i := i + 1
    else
      del(h, i + 1);
  until i >= high(h);

  writeln(utf8toansi('Массив-результат:'));
  writeln_arr(h);
  readln();
end.
