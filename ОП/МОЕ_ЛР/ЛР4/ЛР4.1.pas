
Program LR4;

Uses sysutils;

Var b: array[1..50] Of integer;
  i,minplace: integer;
Begin
  randomize;
  For i := 0 To 50 Do
    Begin
      b[i] := random(1000);
      write(b[i],' ');
      If b[minplace] > b[i] Then
        minplace := i;
    End;
  If minplace Mod 2 = 0 Then
    Begin
      b[0] := b[0]+b[minplace];
      b[minplace] := b[0]-b[minplace];
      b[0] := b[0]-b[minplace];
    End
  Else
    Begin
      b[50] := b[50]+b[minplace];
      b[minplace] := b[50]-b[minplace];
      b[50] := b[50]-b[minplace];
    End;
  writeln();
  For i := 0 To 50 Do
    Begin
      If i = minplace Then write('<',b[i],'> ')
      Else write(b[i],' ');
    End;
End.
