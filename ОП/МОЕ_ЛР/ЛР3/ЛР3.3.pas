
Program LR33;

Uses sysutils;

Var ch,i,q: longint;
Begin
  readln(ch);
  If ch < 0 Then ch := -1 * ch;
  For q := 0 To 10 Do
    Begin
      i := i + ch Mod 10;
      ch := ch Div 10;
    End;
  writeln(i);
End.
