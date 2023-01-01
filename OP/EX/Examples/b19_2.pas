Procedure rec2(a,b:integer);
forward;
Procedure rec1(a,b:integer);
Begin
  If a > b Then rec2(a,b)
  Else rec2(b,a);
End;
Procedure rec2(a,b:integer);
Begin
  If a = b Then writeln(a)
  Else rec1(a - b, b);
End;
Begin
  rec1(24,16);
End.
