
Program rk3;

Type list = ^point;
  point = Record
    info : char;
    pred : list;
    next : list;
  End;
Function add(previos:list): list;

Var ch: char;
  i, n: integer;
  current, to_del: list;
Begin
  read(ch);
  new(current);
  current^.info := ch;
  current^.next := previos;
  previos^.pred := current;
  If ch <> ' ' Then add := current
  Else add := previos;
End;
Procedure sort(head:list);

Var current, previos1, previos2 : list;
Begin
  current := head;
  While current^.pred <> Nil Do
    Begin
      current := current^.pred;
      If current^.info = '#' Then
        Begin
          previos2 := current^.next^.next;
          previos1 := current^.next;
          previos2^.pred := current^.pred;
          current^.next := previos1;
          dispose(current);

          current := head;
        End;
    End;
End;

Var current, previos, head: list;
Begin
  new(current);
  head := add(current);
  While current <> previos Do
    Begin
      previos := current;
      current := add(current);
    End;
  sort(head^.next^.pred);
  sort(head^.next^.pred);
  write(head^.info);
  current := head^.next^.pred;
  While current^.pred <> Nil Do
    Begin
      write(current^.info);
      current := current^.pred;
    End;
End.
