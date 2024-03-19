
Program dz1_4;

Var fx, x: real;
Begin
  readln(x);
  If x < -1 Then
    fx := -1 / (cos(x) + 2)
  Else
    Begin
      If x < 2 Then
        fx := sin(x) * sqr(x)
      Else
        fx := 0;
    End;
  writeln(fx:10:8);
End.
