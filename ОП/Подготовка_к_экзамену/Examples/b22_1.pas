
Var F,G,H: text;

Begin
  assign(F,'F');
  assign(G,'G');
  assign(H,'H');
  reset(F);
  rewrite(G);
  append(H);
  close(H);
  close(F);
  close(G);
End.
