
Program rk1;

Var i, n, mini: integer;
  min,a: real;
Begin
  writeln('Введите n');
  readln(n);
  min := 10000;
  If n < 2 Then writeln('Ошибочно введено n')
  Else
    Begin
      For i := 1 To n Do
        Begin
          a := ((i - 1) / (i + 1)) +
               sin(((i - 1) * (i - 1) * (i - 1)) / (i + 1));
          If (a < min) And (a > 0) Then
            Begin
              min := a;
              mini := i;
            End;
        End;
      writeln('Ответ:',mini);
    End;
End.
