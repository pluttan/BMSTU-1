
Program dz2_1;

Var a: Array [1..50] Of integer;
  i: integer;
Begin
  randomize;
  For i := 1 To 50 Do
    Begin
      a[i] := random(10000);
      write(a[i],' ');
    End;
  writeln;
  i := 0;
  While i <= 50 Do
    Begin
      If a[i - 1] < a[i] Then
        Begin
          a[i] := a[i] + a[i - 1];
          a[i - 1] := a[i] - a[i - 1];
          a[i] := a[i] - a[i - 1];
          If i > 1 Then i := 0;
        End;
      i := i + 1;
    End;
  For i := 1 To 50 Do
    write(a[i],' ');
End.
