
Var f: file;
  buf: integer;
Begin
  assign(f,'f.bin');
  reset(f);
  BlockRead(f, buf, 2);
  rewrite(f);
  BlockWrite(f,buf, 2);
End.
