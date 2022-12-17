
Var a: string[20];
  x,code: integer;
Begin
  a := 'abc';
  writeln(a[2]);
  a := a + 'd';
  If 'abce' > a Then writeln('e > d')
  Else writeln('e < d');
  writeln(length(a));
  delete(a, 1, 2);
  writeln(a);
  insert('ab', a, 1);
  writeln(a);
  str(1234, a);
  writeln(a);
  val(a, x, code);
  writeln(x);
  writeln(copy(a, 2, 2));
  writeln(pos('3', a));
  writeln(upcase('a'));
End.
