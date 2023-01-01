
Program LR9;

Type point = ^list;
  list = Record
    info: integer;
    next: point;
    pred: point;
  End;

Var phead,q,p, pr: point;
  i,n: integer;

Function addhead(Var nex, y_pr:point): point;

Var y: point;
  i: integer;
Begin
  readln(i);
  new(y);
  y_pr^.pred := y;
  y^.info := i;
  y^.next := nex;
  y^.pred := Nil;
  nex := y;
  addhead := y;
End;

Begin
  writeln('Введите n, а затем n чисел через enter');
  readln(n);
  new(p);
  pr := addhead(phead, p);
  p := phead;
  For i:=0 To n - 2 Do
    pr := addhead(phead, pr);
  q := phead;
  While q <> Nil Do
    Begin
      write(abs(q^.info - p^.info),' ');
      q := q^.next;
      p := p^.pred;
    End;
End.
