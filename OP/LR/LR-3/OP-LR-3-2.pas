
Program LR32;

Uses Sysutils;

Var ch,i: longint;
Begin
  readln(ch);
  If ch < 0 Then ch := -1 * ch;
  Repeat
    i := i + ch Mod 10;
    ch := ch Div 10;
  Until ch <= 0;
  writeln(i);
End.
