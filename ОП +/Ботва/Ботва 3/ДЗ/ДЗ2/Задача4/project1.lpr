program project1;

{$APPTYPE CONSOLE}

uses
  NEIBR;

  function F1(x: real): real;
  begin
    F1 := cos(x);
  end;

  function F2(x: real): real;
  begin
    F2 := sin(x * x);
  end;

var
  pri1, pri2: boolean;
  i: 1..10;
  y, x: real;
begin
  writeln('x': 10, 'y': 10, 'sin(x)': 10, 'sin(x^2)': 10);
  for i := 1 to 5 do
  begin
    x := pi / i;
    y := cos(x);
    neibr.neibr(@f1, x, y, pri1);
    neibr.neibr(@f2, x, y, pri2);
    writeln(x: 10: 8, y: 10: 6, pri1: 10, pri2: 10);
  end;

  for i := 1 to 5 do
  begin
    x := pi / i;
    y := sin(x * x);
    neibr.neibr(@f1, x, y, pri1);
    neibr.neibr(@f2, x, y, pri2);
    writeln(x: 10: 8, y: 10: 6, pri1: 10, pri2: 10);
  end;
  ReadLn;
end.
