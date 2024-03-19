
Program LR2;

Uses SysUtils;

Var X, Y, f1, f2, f3, f4: Single;

Function fb (func:Single): boolean;

Var e: Single;
Begin
  e := 0.0001; {Погрешность}
  fb := (abs(func) - func) > e;
End;

Begin

  readln(X, Y);
  f1 := Y - (sqrt(X));
  f2 := (-sqrt(X)) - Y;
  f3 := Y - (-x + 1);
  f4 := (x - 1) - Y;

  If fb(f1) And fb(f2) And fb(f3) And fb(f4) Then
    writeln('Точка внутри диапазона')
  Else
    writeln('Точка вне диапазона');
End.
