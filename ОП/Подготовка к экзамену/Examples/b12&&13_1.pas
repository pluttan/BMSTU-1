
Program lst13;
Function ye(b:integer): integer;
Begin
  ye := b;
End;

Var a: integer;

Function ne(): integer;

Var a: integer;
Begin
  a := 100;
  ne := lst13.a;
End;

Begin
  a := 1;
  writeln(ye(a));
  writeln(ne());
End.
