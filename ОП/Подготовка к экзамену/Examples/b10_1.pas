
Type rec = Record
  info: integer;
  symv: string[20];
End;

Var r,q: rec;
Begin
  r.info := 1;
  r.symv := 'p';
  q := r;
  writeln('o', q.symv);
End.
