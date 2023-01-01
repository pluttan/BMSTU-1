
Type ar = array [1..112] Of integer;

Function i_not_unless(a:ar): integer;
Begin
  i_not_unless := a[111];
End;

Var a: ar;
  i: integer;
Begin
  For i:=1 To 112 Do
    a[i] := i * 2;
  writeln(i_not_unless(a));
End.
