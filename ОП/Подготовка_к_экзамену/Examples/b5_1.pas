
Var q,u,i,z: longint;
Begin
  z := 10;
  u := 1;
  For i:=1 To z Do
    Begin
      u := u * i;
      writeln(i,'! = ',u);
    End;
  While u <> 0 Do
    Begin
      q := q + (u Mod 10);
      u := u Div 10;
    End;
  writeln('sum of nums of 10! = ', q )
End.
