
Program dz1_3;

Var  sinx, cosx, y: extended;
  x: integer;
Begin
  For x:=0 To 100 Do
    Begin
      sinx := sin(x);
      cosx := cos(x);
      y := sqr(sinx) + sqr(cosx);
      writeln(x:3, y:20:16);
    End;
End.
