
Program LR31;

Uses Sysutils;

Var ch, i: longint;
Begin
  readln(ch);
  If ch < 0 Then ch := -1 * ch;
  While ch > 0 Do
    Begin
      i := i + ch Mod 10;
      ch := ch Div 10;
    End;
  writeln(i);
End.
