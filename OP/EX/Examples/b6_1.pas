
Var a: array [1..10] Of integer;
  i,f: integer;
  flag: boolean;
Begin
  randomize;
  For i:=1 To 10 Do
    Begin
      a[i] := random(100);
      write(a[i],' ');
    End;
  f := a[6];
  writeln;
  {Unstructure}
  For i:=1 To 10 Do
    Begin
      If a[i] = f Then
        Begin
          writeln(a[i],' ');
          break;
        End;
    End;
  {Structure}
  i := 1;
  flag := True;
  While (flag) And (i<10) Do
    Begin
      If a[i] = f Then
        Begin
          writeln(a[i],' ');
          flag := False;
        End;
      i := i + 1;
    End;
  If (flag) Then writeln('Не найдено (');
End.
