
Program dz2_3;


Var mn: set Of char;
  st: string[40];
  i: integer;
Begin
  readln(st);
  mn := [];
  For i := 0 To length(st) Do
    If st[i] In ['a','e','o','i','u','y'] Then
      mn := mn + [st[i]];
  For i := 0 To 255 Do
    If chr(i)In mn Then
      write(chr(i),' ');
  writeln;
End.
