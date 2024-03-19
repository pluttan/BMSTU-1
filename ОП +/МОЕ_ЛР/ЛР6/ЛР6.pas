
Program LR6;

Uses Sysutils;

Var n, i, c, k: byte;
  s: string[255];
Begin
  writeln('Введите n');
  readln(n);
  writeln('Введите s');
  readln(s);
  write('s = ');
  For i:=1 To n Do
    Begin
      write(s[i]);
      If (ord(s[i]) = 32) Or (i = 1) Then
        If (ord(s[i+1]) = 66) Or ((i = 1) And (ord(s[i]) = 66)) Then
          Begin
            c := i+1;
            While (ord(s[c]) <> 32) And (ord(s[c]) <> 0) Do
              c := c + 1;
            If ord(s[c - 1]) = 67 Then
              k := k + 1;
          End;
    End;
  writeln();
  writeln(k);
End.
