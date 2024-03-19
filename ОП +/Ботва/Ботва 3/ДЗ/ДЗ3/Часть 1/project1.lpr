program project1;

{$APPTYPE CONSOLE}

type
  virag = object
    n: byte;
    chisla: array[1..9] of real;
    znaki: array[1..8] of char;
    procedure Init();
    procedure vivod();
    function get_result(): real;
  end;

  procedure virag.Init();
  var
    i: byte;
    c: char;
  begin
    repeat
      writeln('Enter the number of arguments(<10)');
      readln(i);
    until i < 10;
    n := i;
    if n > 0 then
    begin
      writeln('Enter the arguments separated by spaces');
      for  i := 1 to n do
        Read(chisla[i]);
      readln();
      if n > 1 then
      begin
        writeln('Enter operation signs separated by spaces');
        for  i := 1 to n - 1 do
        begin
          repeat
            Read(c)
          until pos(c, '+-*/') > 0;
          znaki[i] := c;
        end;
        readln();
      end;
    end;
  end;

  procedure virag.vivod();
  var
    i: shortint;
  begin
    writeln('Display fields');
    writeln('number of arguments: ', n);
    writeln('arguments');

    for i := 1 to n do
      Write(chisla[i], ' ');
    writeln();
    writeln('operation signs:');
    for i := 1 to n - 1 do
      Write(znaki[i], ' ');
    writeln();
  end;

  function virag.get_result(): real;
  var
    r: real = 0;
    i: shortint;
  begin
    if n > 0 then
      r := chisla[1];
    for i := 1 to n - 1 do
      case znaki[i] of
        '+': r += chisla[i + 1];
        '-': r -= chisla[i + 1];
        '*': r := r * chisla[i + 1];
        '/': r := r / chisla[i + 1];
      end;
    Result := r;
  end;

var
  B: virag;
begin
  B.init;
  B.vivod();
  writeln('Result:', b.get_result());
  readln();
end.
