
Type list = ^Node;
  Node = Record
    Data : char;
    pNext : list;
  End;
Procedure append(Var sp :list; Const Data : char);
Begin
  If sp = Nil Then
    Begin
      new(sp);
      sp^.Data := Data;
      sp^.pNext := Nil;
    End
  Else append(sp^.pNext, Data);
End;
Procedure append0(Var sp: list; Const Data : char);

Var new_elem : list;
Begin
  If sp = Nil Then
    Begin
      new(sp);
      sp^.Data := Data;
      sp^.pNext := Nil;
    End
  Else
    Begin
      new(new_elem);
      new_elem^.Data := Data;
      new_elem^.pNext := sp;
      sp := new_elem;
    End;
End;
Procedure init(Var sp :list; Const size : integer);

Var i : integer;
Begin
  randomize;
  For i := 1 To size Do
    append(sp, char(random(26) + 65));
End;
Procedure show(Var sp :list);
Begin
  If sp = Nil Then writeln('Your sp is empty!')
  Else If sp^.pNext <> Nil Then
         Begin
           write(sp^.Data, ' ');
           show(sp^.pNext);
         End
  Else writeln(sp^.Data);
End;
Procedure delete(Var sp :list);
Begin
  If sp <> Nil Then
    Begin
      delete(sp^.pNext);
      dispose(sp);
      sp := Nil;
    End;
End;
Function size(sp :list) : integer;

Var i : integer;
Begin
  i := 1;
  If sp = Nil Then size := 0
  Else
    Begin
      While sp^.pNext <> Nil Do
        Begin
          inc(i);
          sp := sp^.pNext;
        End;
      size := i;
    End;
End;
Procedure insert(Var sp: list; Const Data :char; Const index : integer);

Var i : integer;
  home, new_elem : list;
Begin
  home := sp;
  If (index <= 1) Then append0(sp, Data)
  Else If (index >= size(sp)) Then append(sp, Data)
  Else
    Begin
      For i := 1 To index - 2 Do
        Begin
          sp := sp^.pNext;
        End;
      new(new_elem);
      new_elem^.Data := Data;
      new_elem^.pNext := sp^.pNext;
      sp^.pNext := new_elem;
      sp := home;
    End;
End;
Procedure pop0(Var sp :list);

Var del : list;
Begin
  del := sp;
  sp := sp^.pNext;
  dispose(del);
  del := Nil;
End;
Procedure pop(Var sp :list);

Var del, home : list;
Begin
  home := sp;
  While (sp^.pNext)^.pNext <> Nil Do
    sp := sp^.pNext;
  del := sp^.pNext;
  sp^.pNext := del^.pNext;
  dispose(del);
  del := Nil;
  sp := home;
End;
Procedure popI(Var sp :list; Const index :integer);

Var i : integer;
  home, del : list;
Begin
  If (index <= 1) Then pop0(sp)
  Else If (index >= size(sp)) Then pop(sp)
  Else
    Begin
      home := sp;
      For i := 1 To index - 2 Do
        sp := sp^.pNext;
      del := sp^.pNext;
      sp^.pNext := del^.pNext;
      dispose(del);
      del := Nil;
      sp := home;
    End;
End;

Var sp : list;
Begin
  init(sp, 10);
  write('size = ', size(sp), '; init: ');
  show(sp);
  writeln();
  Append0(sp, '!');
  write('size = ', size(sp), '; Append0: ');
  show(sp);
  writeln();
  Append(sp, '!');
  write('size = ', size(sp), '; Append: ');
  show(sp);
  writeln();
  insert(sp, '!', 4);
  write('size = ', size(sp), '; insert: ');
  show(sp);
  writeln();
  pop0(sp);
  write('size = ', size(sp), '; pop0: ');
  show(sp);
  writeln();
  pop(sp);
  write('size = ', size(sp), '; pop: ');
  show(sp);
  writeln();
  popI(sp, 3);
  write('size = ', size(sp), '; popI: ');
  show(sp);
  writeln();
  delete(sp);
  write('size = ', size(sp), '; delete: ');
  show(sp);
  writeln();
  readln;
End.
