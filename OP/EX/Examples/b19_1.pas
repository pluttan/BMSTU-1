Procedure rec(n, k:integer);
Begin
  If n <> 1 Then rec(n Div 2, k + 1)
  Else writeln(k);
End;
Begin
  rec(1024, 0);
End.
