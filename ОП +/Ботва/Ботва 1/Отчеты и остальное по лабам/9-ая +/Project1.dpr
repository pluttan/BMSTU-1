
Program Project1;
{$APPTYPE CONSOLE}

Uses 
SysUtils;

Type 
  point = ^sp;
  sp = Record
    info: integer;
    next: point;
  End;

Function addend(Var phead:point);

Var 
  y,q: point;
  i,o: integer;
Begin
  writeln('BBedute chiclo');
  readln(i);
  new(y);
  y^.info := i;
  y^.next := Nil;
End;

Var 
  phead,q: point;
  n,i: integer;
Begin
  writeln('BBedute koluchectBo');
  readln(n);
  For i := 1 To n Do
    addend(phead);


  writeln;
  writeln('---------------');

  q := phead;
  While (q<>Nil) Do
    Begin
      If q^.info < 0 Then
        write(q^.info,' ');
      q := q^.next;
    End;

  writeln;
  writeln('---------------');

  q := phead;
  While (q<>Nil) Do
    Begin
      If q^.info > 0 Then
        write(q^.info,' ');
      q := q^.next;
    End;

  readln;
End.
