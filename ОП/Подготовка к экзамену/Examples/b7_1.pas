
Var a, b: array[0..3] Of integer;
  i: integer;
Begin
  For i := 0 To 3 Do
    readln(b[i]);
  a := b;
  writeln(a[0]);
  For i := 0 To 3 Do
    writeln(a[i]);
End.
