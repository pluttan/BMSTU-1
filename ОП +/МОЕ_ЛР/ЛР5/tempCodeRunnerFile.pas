
Program LR5;

Uses Sysutils;

Var c: array[0..6,0..9] Of char;
  i,j,k: integer;
Begin
  randomize;
  For i := 0 To 7 Do
    Begin
      For j := 0 To 9 Do
        Begin
          c[i][j] := chr(65 + random(25));
          write(c[i][j]);
        End;
      writeln();
    End;
  writeln();
  For i := 0 To 9 Do
    Begin
      For j := 0 To 7 Do
        write(c[j][i]);
      writeln();
    End;
  writeln();
  For i := 0 To 7 Do
    Begin
      For j := 0 To 9 Do
        write(c[i][j]);
      If i<6 Then
        Begin
          writeln();
          For k := 0 To i Do
            write(' ');
        End;
    End;
End.
