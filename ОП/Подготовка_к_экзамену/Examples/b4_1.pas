
Var a: integer;
Begin
  a := 1;
  If a >= 1 Then writeln('a >= 1')
  Else writeln('a < 1');
  Case a Of 
    0: writeln('a = 0');
    1: writeln('a = 1');
    2: writeln('a = 2');
  End;
End.
