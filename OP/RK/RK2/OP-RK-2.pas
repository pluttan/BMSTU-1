
Program rk2;

Var n, k, i, j, min_ik, min_jk, min_in, min_jn, mink, minn: integer;
  mas: array[1..10,1..10] Of integer;
Begin
  randomize;
  minn := 10000;
  mink := 10000;
  writeln('Введите n');
  readln(n);
  writeln('Введите k');
  readln(k);
  writeln('Матрица:');
  For i := 1 To n Do
    Begin
      For j := 1 To n Do
        Begin
          mas[i][j] := random(1000);
          write(mas[i,j]:3,' ');
        End;
      writeln;
    End;
  For i := 1 To n Do
    Begin
      For j := 1 To n Do
        Begin
          If (i * j + 1 < k * k) Then
            Begin
              If mink > mas[i,j] Then
                Begin
                  min_ik := i;
                  min_jk := j;
                  mink := mas[i,j];
                End;
            End
          Else
            Begin
              If minn > mas[i,j] Then
                Begin
                  min_in := i;
                  min_jn := j;
                  minn := mas[i,j];
                End;
            End;
        End;
    End;
  writeln('Минимальный в 1 области ', mink);
  writeln('Его номер ', ((min_ik-1) * n) +min_jk);
  writeln('Минимальный в 2 области ', minn);
  writeln('Его номер ', ((min_in-1) * n) +min_jn);
End.
