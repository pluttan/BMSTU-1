
Type m = ^point;
  point = integer;

Var i: integer;
  p: ^integer;
  q: m;
Begin
  p := @i;
  new(q);
  dispose(q);
End.
