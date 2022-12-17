
Var s: set Of 0..100;
  i: integer;
Begin
  s := [1,2,3,4,5];
  For i := 0 To 100 Do
    If i In s Then write(i,' ');
  writeln;
  s := s + [3..10];
  For i := 0 To 100 Do
    If i In s Then write(i,' ');
  writeln;
  s := s * [2..4];
  For i := 0 To 100 Do
    If i In s Then write(i,' ');
  writeln;
  s := [1..10] - s;
  For i := 0 To 100 Do
    If i In s Then write(i,' ');
  writeln;
  If s <> [1,5..10] Then writeln('err');
End.
