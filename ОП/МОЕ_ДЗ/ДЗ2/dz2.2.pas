
Program dz2_2;

Var a: Array [1..10,1..10] Of integer;
  i, j: integer;
Begin
  randomize;
  For i := 1 To 10 Do
    Begin
      For j := 1 To 10 Do
        Begin
          a[i, j] := random(10000);
          write(a[i, j]:4,' ');
        End;
      writeln;
    End;
  writeln;
  i := 2;
  While i <= 10 Do
    Begin
      If a[i - 1, 1] < a[i, 1] Then
        Begin
          For j := 1 To 11 Do
            Begin
              a[i, j] := a[i, j] + a[i - 1, j];
              a[i - 1, j] := a[i, j] - a[i - 1, j];
              a[i, j] := a[i, j] - a[i - 1, j];
            End;
          If i > 1 Then i := 1;
        End;
      i := i + 1;
    End;
  For i := 1 To 10 Do
    Begin
      For j := 1 To 10 Do
        write(a[i, j]:4,' ');
      writeln;
    End;
End.
