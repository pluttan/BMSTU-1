
Var integer_: integer;
Begin
  integer_ := 8;
  write(' ', 'integer_');
  write(' ', ord(integer_));
  write(' ', pred(integer_));
  dec(integer_,2);
  write(' ', integer_);
  inc(integer_,2);
  write(' ', integer_);
  write(' ', succ(integer_));
  write(' ', high(integer_));
  write(' ', low(integer_));
  writeln;
End.
